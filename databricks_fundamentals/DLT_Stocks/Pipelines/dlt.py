import dlt
from pyspark.sql.window import Window
from pyspark.sql.functions import (
    col, explode, create_map, lit, current_timestamp,
    avg, max, min, sum, count, round, lag
)
from itertools import chain

#  Path to  raw data (Volume)
raw_path = "/Volumes/workspace/stock_dlt/raw_data"



#  BRONZE LAYER

@dlt.table(
    name="stock_bronze",
    comment="Raw stock data from API stored as text"
)
def stock_bronze():
    return spark.read.text(raw_path)



# 🧱 SILVER LAYER

@dlt.table(
    name="stock_silver",
    comment="Flattened and structured stock data"
)
def stock_silver():
    df_raw = spark.read.json(raw_path)

    # Extract all dates from nested JSON
    date_fields = df_raw.schema["Time Series (Daily)"].dataType.fieldNames()

    mapping_expr = create_map(
        list(chain.from_iterable(
            [(lit(date), col(f"`Time Series (Daily)`.`{date}`")) for date in date_fields]
        ))
    )

    return (
        df_raw
        .select(
            col("`Meta Data`.`2. Symbol`").alias("symbol"),
            explode(mapping_expr).alias("date", "values")
        )
        .select(
            col("symbol"),
            col("date").cast("date").alias("trade_date"),
            col("values.`1. open`").cast("double").alias("open"),
            col("values.`2. high`").cast("double").alias("high"),
            col("values.`3. low`").cast("double").alias("low"),
            col("values.`4. close`").cast("double").alias("close"),
            col("values.`5. volume`").cast("long").alias("volume"),
            current_timestamp().alias("processed_at")
        )
    )



# GOLD LAYER - SUMMARY

@dlt.table(
    name="gold_stock_summary",
    comment="Basic stock summary metrics"
)
def gold_stock_summary():
    df = dlt.read("stock_silver")

    return (
        df.groupBy("symbol")
        .agg(
            round(avg("close"), 2).alias("avg_close"),
            round(max("close"), 2).alias("max_close"),
            round(min("close"), 2).alias("min_close"),
            sum("volume").alias("total_volume"),
            count("*").alias("trading_days")
        )
    )



#  GOLD LAYER - TREND

@dlt.table(
    name="gold_price_trend",
    comment="Daily price and volume trend"
)
def gold_price_trend():
    return (
        dlt.read("stock_silver")
        .select("symbol", "trade_date", "close", "volume")
    )

# #  GOLD LAYER - 7/30/90 growth metrics

@dlt.table(
    name="gold_price_growth",
    comment="7, 30, and 90 day stock price growth percentage"
)
def gold_price_growth():
    df = dlt.read("stock_silver")

    window_spec = Window.partitionBy("symbol").orderBy("trade_date")

    return (
        df
        .withColumn("close_7_days_ago", lag("close", 7).over(window_spec))
        .withColumn("close_30_days_ago", lag("close", 30).over(window_spec))
        .withColumn("close_90_days_ago", lag("close", 90).over(window_spec))
        .withColumn(
            "growth_7d_pct",
            round(((col("close") - col("close_7_days_ago")) / col("close_7_days_ago")) * 100, 2)
        )
        .withColumn(
            "growth_30d_pct",
            round(((col("close") - col("close_30_days_ago")) / col("close_30_days_ago")) * 100, 2)
        )
        .withColumn(
            "growth_90d_pct",
            round(((col("close") - col("close_90_days_ago")) / col("close_90_days_ago")) * 100, 2)
        )
        .select(
            "symbol",
            "trade_date",
            "close",
            "growth_7d_pct",
            "growth_30d_pct",
            "growth_90d_pct"
        )
    )