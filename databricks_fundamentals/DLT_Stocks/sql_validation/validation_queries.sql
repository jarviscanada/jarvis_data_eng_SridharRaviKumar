{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "8afec514-8a0c-49d9-a82c-b65ae40b4664",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>database</th><th>tableName</th><th>isTemporary</th></tr></thead><tbody><tr><td>default</td><td>gold_price_growth</td><td>false</td></tr><tr><td>default</td><td>gold_price_trend</td><td>false</td></tr><tr><td>default</td><td>gold_stock_summary</td><td>false</td></tr><tr><td>default</td><td>retail_sales_sample_preview</td><td>false</td></tr><tr><td>default</td><td>stock_bronze</td><td>false</td></tr><tr><td>default</td><td>stock_silver</td><td>false</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         "default",
         "gold_price_growth",
         false
        ],
        [
         "default",
         "gold_price_trend",
         false
        ],
        [
         "default",
         "gold_stock_summary",
         false
        ],
        [
         "default",
         "retail_sales_sample_preview",
         false
        ],
        [
         "default",
         "stock_bronze",
         false
        ],
        [
         "default",
         "stock_silver",
         false
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "database",
            "nullable": false,
            "type": "string"
           },
           {
            "metadata": {},
            "name": "tableName",
            "nullable": false,
            "type": "string"
           },
           {
            "metadata": {},
            "name": "isTemporary",
            "nullable": false,
            "type": "boolean"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 3
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "database",
         "type": "\"string\""
        },
        {
         "metadata": "{}",
         "name": "tableName",
         "type": "\"string\""
        },
        {
         "metadata": "{}",
         "name": "isTemporary",
         "type": "\"boolean\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- List all tables created by pipeline\n",
    "SHOW TABLES IN workspace.default;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "3356cd66-89f3-4f36-a74b-ae2417d80a61",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>symbol</th><th>trade_date</th><th>open</th><th>high</th><th>low</th><th>close</th><th>volume</th><th>processed_at</th></tr></thead><tbody><tr><td>AAPL</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td><td>null</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-01</td><td>278.01</td><td>283.42</td><td>276.14</td><td>283.1</td><td>46587722</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-02</td><td>283.0</td><td>287.4</td><td>282.6301</td><td>286.19</td><td>53669532</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-03</td><td>286.2</td><td>288.62</td><td>283.3</td><td>284.15</td><td>43538687</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-04</td><td>284.095</td><td>284.73</td><td>278.59</td><td>280.7</td><td>43989056</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-05</td><td>280.54</td><td>281.14</td><td>278.05</td><td>278.78</td><td>47265845</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-08</td><td>278.13</td><td>279.6693</td><td>276.15</td><td>277.89</td><td>36406317</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-09</td><td>278.16</td><td>280.03</td><td>276.92</td><td>277.18</td><td>31753410</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-10</td><td>277.75</td><td>279.75</td><td>276.44</td><td>278.78</td><td>33038318</td><td>2026-04-26T13:05:33.782Z</td></tr><tr><td>AAPL</td><td>2025-12-11</td><td>279.095</td><td>279.59</td><td>273.81</td><td>278.03</td><td>33247986</td><td>2026-04-26T13:05:33.782Z</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         "AAPL",
         "2025-11-28",
         null,
         null,
         null,
         null,
         null,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-01",
         278.01,
         283.42,
         276.14,
         283.1,
         46587722,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-02",
         283.0,
         287.4,
         282.6301,
         286.19,
         53669532,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-03",
         286.2,
         288.62,
         283.3,
         284.15,
         43538687,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-04",
         284.095,
         284.73,
         278.59,
         280.7,
         43989056,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-05",
         280.54,
         281.14,
         278.05,
         278.78,
         47265845,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-08",
         278.13,
         279.6693,
         276.15,
         277.89,
         36406317,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-09",
         278.16,
         280.03,
         276.92,
         277.18,
         31753410,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-10",
         277.75,
         279.75,
         276.44,
         278.78,
         33038318,
         "2026-04-26T13:05:33.782Z"
        ],
        [
         "AAPL",
         "2025-12-11",
         279.095,
         279.59,
         273.81,
         278.03,
         33247986,
         "2026-04-26T13:05:33.782Z"
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "symbol",
            "nullable": true,
            "type": "string"
           },
           {
            "metadata": {},
            "name": "trade_date",
            "nullable": true,
            "type": "date"
           },
           {
            "metadata": {},
            "name": "open",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "high",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "low",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "close",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "volume",
            "nullable": true,
            "type": "long"
           },
           {
            "metadata": {},
            "name": "processed_at",
            "nullable": true,
            "type": "timestamp"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 4
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "symbol",
         "type": "\"string\""
        },
        {
         "metadata": "{}",
         "name": "trade_date",
         "type": "\"date\""
        },
        {
         "metadata": "{}",
         "name": "open",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "high",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "low",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "close",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "volume",
         "type": "\"long\""
        },
        {
         "metadata": "{}",
         "name": "processed_at",
         "type": "\"timestamp\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Preview structured data\n",
    "SELECT *\n",
    "FROM workspace.default.stock_silver\n",
    "LIMIT 10;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "87c09c8f-7f3f-45e1-8c39-43c146e55b8d",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>symbol</th></tr></thead><tbody><tr><td>AAPL</td></tr><tr><td>MSFT</td></tr><tr><td>IBM</td></tr><tr><td>null</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         "AAPL"
        ],
        [
         "MSFT"
        ],
        [
         "IBM"
        ],
        [
         null
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "symbol",
            "nullable": true,
            "type": "string"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 5
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "symbol",
         "type": "\"string\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Check available stock symbols\n",
    "SELECT DISTINCT symbol\n",
    "FROM workspace.default.stock_silver;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "50401de8-d445-4ff2-b12e-e6bdfdd4dfe7",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>min_date</th><th>max_date</th></tr></thead><tbody><tr><td>2025-11-28</td><td>2026-04-24</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         "2025-11-28",
         "2026-04-24"
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "min_date",
            "nullable": true,
            "type": "date"
           },
           {
            "metadata": {},
            "name": "max_date",
            "nullable": true,
            "type": "date"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 6
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "min_date",
         "type": "\"date\""
        },
        {
         "metadata": "{}",
         "name": "max_date",
         "type": "\"date\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Check date range\n",
    "SELECT MIN(trade_date) AS min_date,\n",
    "       MAX(trade_date) AS max_date\n",
    "FROM workspace.default.stock_silver;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "aa29a2ac-5da2-4fd0-93f6-c53a2ab1dd59",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>COUNT(*)</th></tr></thead><tbody><tr><td>10</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         10
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "COUNT(*)",
            "nullable": false,
            "type": "long"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 7
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "COUNT(*)",
         "type": "\"long\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Count raw records\n",
    "SELECT COUNT(*)\n",
    "FROM workspace.default.stock_bronze;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "48b59596-9c61-4faa-8aa2-b482fb142b87",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>symbol</th><th>avg_close</th><th>max_close</th><th>min_close</th><th>total_volume</th><th>trading_days</th></tr></thead><tbody><tr><td>null</td><td>null</td><td>null</td><td>null</td><td>null</td><td>202</td></tr><tr><td>MSFT</td><td>429.24</td><td>492.02</td><td>356.77</td><td>6537304896</td><td>202</td></tr><tr><td>IBM</td><td>273.84</td><td>314.73</td><td>223.35</td><td>2173721220</td><td>404</td></tr><tr><td>AAPL</td><td>264.33</td><td>286.19</td><td>246.63</td><td>9101944442</td><td>202</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         null,
         null,
         null,
         null,
         null,
         202
        ],
        [
         "MSFT",
         429.24,
         492.02,
         356.77,
         6537304896,
         202
        ],
        [
         "IBM",
         273.84,
         314.73,
         223.35,
         2173721220,
         404
        ],
        [
         "AAPL",
         264.33,
         286.19,
         246.63,
         9101944442,
         202
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "symbol",
            "nullable": true,
            "type": "string"
           },
           {
            "metadata": {},
            "name": "avg_close",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "max_close",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "min_close",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "total_volume",
            "nullable": true,
            "type": "long"
           },
           {
            "metadata": {},
            "name": "trading_days",
            "nullable": true,
            "type": "long"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 8
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "symbol",
         "type": "\"string\""
        },
        {
         "metadata": "{}",
         "name": "avg_close",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "max_close",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "min_close",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "total_volume",
         "type": "\"long\""
        },
        {
         "metadata": "{}",
         "name": "trading_days",
         "type": "\"long\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Aggregated metrics\n",
    "SELECT *\n",
    "FROM workspace.default.gold_stock_summary;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "fafd8942-c586-459e-89bd-3b17a9a3a62b",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>symbol</th><th>trade_date</th><th>close</th><th>growth_7d_pct</th><th>growth_30d_pct</th><th>growth_90d_pct</th></tr></thead><tbody><tr><td>IBM</td><td>2026-04-24</td><td>231.98</td><td>-7.89</td><td>-3.45</td><td>-6.63</td></tr><tr><td>null</td><td>2026-04-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2026-04-24</td><td>424.62</td><td>0.11</td><td>13.7</td><td>6.57</td></tr><tr><td>IBM</td><td>2026-04-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2026-04-24</td><td>271.06</td><td>1.84</td><td>5.92</td><td>4.02</td></tr><tr><td>null</td><td>2026-04-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2026-04-24</td><td>231.98</td><td>0.39</td><td>-5.24</td><td>-3.58</td></tr><tr><td>MSFT</td><td>2026-04-24</td><td>424.62</td><td>1.57</td><td>13.7</td><td>6.57</td></tr><tr><td>AAPL</td><td>2026-04-24</td><td>271.06</td><td>-0.73</td><td>5.92</td><td>4.02</td></tr><tr><td>IBM</td><td>2026-04-24</td><td>231.98</td><td>-7.89</td><td>-5.24</td><td>-3.58</td></tr><tr><td>IBM</td><td>2026-04-23</td><td>231.08</td><td>-9.62</td><td>-2.83</td><td>-4.42</td></tr><tr><td>AAPL</td><td>2026-04-23</td><td>273.43</td><td>0.14</td><td>6.96</td><td>3.43</td></tr><tr><td>IBM</td><td>2026-04-23</td><td>231.08</td><td>-9.62</td><td>-2.83</td><td>-4.42</td></tr><tr><td>AAPL</td><td>2026-04-23</td><td>273.43</td><td>1.18</td><td>6.96</td><td>3.43</td></tr><tr><td>null</td><td>2026-04-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2026-04-23</td><td>415.75</td><td>-1.67</td><td>12.56</td><td>4.04</td></tr><tr><td>IBM</td><td>2026-04-23</td><td>231.08</td><td>-8.25</td><td>-3.82</td><td>-6.99</td></tr><tr><td>null</td><td>2026-04-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2026-04-23</td><td>231.08</td><td>-9.62</td><td>-3.82</td><td>-6.99</td></tr><tr><td>MSFT</td><td>2026-04-23</td><td>415.75</td><td>-0.55</td><td>12.56</td><td>4.04</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         "IBM",
         "2026-04-24",
         231.98,
         -7.89,
         -3.45,
         -6.63
        ],
        [
         null,
         "2026-04-24",
         null,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2026-04-24",
         424.62,
         0.11,
         13.7,
         6.57
        ],
        [
         "IBM",
         "2026-04-24",
         null,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2026-04-24",
         271.06,
         1.84,
         5.92,
         4.02
        ],
        [
         null,
         "2026-04-24",
         null,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2026-04-24",
         231.98,
         0.39,
         -5.24,
         -3.58
        ],
        [
         "MSFT",
         "2026-04-24",
         424.62,
         1.57,
         13.7,
         6.57
        ],
        [
         "AAPL",
         "2026-04-24",
         271.06,
         -0.73,
         5.92,
         4.02
        ],
        [
         "IBM",
         "2026-04-24",
         231.98,
         -7.89,
         -5.24,
         -3.58
        ],
        [
         "IBM",
         "2026-04-23",
         231.08,
         -9.62,
         -2.83,
         -4.42
        ],
        [
         "AAPL",
         "2026-04-23",
         273.43,
         0.14,
         6.96,
         3.43
        ],
        [
         "IBM",
         "2026-04-23",
         231.08,
         -9.62,
         -2.83,
         -4.42
        ],
        [
         "AAPL",
         "2026-04-23",
         273.43,
         1.18,
         6.96,
         3.43
        ],
        [
         null,
         "2026-04-23",
         null,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2026-04-23",
         415.75,
         -1.67,
         12.56,
         4.04
        ],
        [
         "IBM",
         "2026-04-23",
         231.08,
         -8.25,
         -3.82,
         -6.99
        ],
        [
         null,
         "2026-04-23",
         null,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2026-04-23",
         231.08,
         -9.62,
         -3.82,
         -6.99
        ],
        [
         "MSFT",
         "2026-04-23",
         415.75,
         -0.55,
         12.56,
         4.04
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "symbol",
            "nullable": true,
            "type": "string"
           },
           {
            "metadata": {},
            "name": "trade_date",
            "nullable": true,
            "type": "date"
           },
           {
            "metadata": {},
            "name": "close",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "growth_7d_pct",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "growth_30d_pct",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "growth_90d_pct",
            "nullable": true,
            "type": "double"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 9
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "symbol",
         "type": "\"string\""
        },
        {
         "metadata": "{}",
         "name": "trade_date",
         "type": "\"date\""
        },
        {
         "metadata": "{}",
         "name": "close",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "growth_7d_pct",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "growth_30d_pct",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "growth_90d_pct",
         "type": "\"double\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Growth metrics preview\n",
    "SELECT *\n",
    "FROM workspace.default.gold_price_growth\n",
    "ORDER BY trade_date DESC\n",
    "LIMIT 20;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "6e44cd64-3e08-46bc-b1fb-230f4a575fcc",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>symbol</th><th>trade_date</th><th>close</th><th>growth_7d_pct</th><th>growth_30d_pct</th><th>growth_90d_pct</th></tr></thead><tbody><tr><td>null</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-01</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-01</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-03</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-03</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-04</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-04</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-05</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-05</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-08</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-08</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-10</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-10</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-11</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-11</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-12</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-12</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-15</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-15</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-16</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-16</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-17</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-17</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-18</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-18</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-19</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-19</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-22</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-22</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-26</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-26</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-29</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-29</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-30</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-30</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-31</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2025-12-31</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-05</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-05</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-06</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-06</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-07</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-07</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-08</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-08</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-12</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-12</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-13</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-13</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-14</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-14</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-15</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-15</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-16</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-16</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-20</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-20</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-21</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-21</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-22</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-22</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-26</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-26</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-27</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-27</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-29</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-29</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-30</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-01-30</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-03</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-03</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-04</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-04</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-05</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-05</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-06</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-06</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-10</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-10</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-11</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-11</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-12</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-12</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-13</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-13</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-17</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-17</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-18</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-18</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-19</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-19</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-20</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-20</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-25</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-25</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-26</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-26</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-27</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-02-27</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-03</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-03</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-04</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-04</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-05</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-05</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-06</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-06</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-10</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-10</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-11</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-11</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-12</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-12</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-13</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-13</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-16</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-16</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-17</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-17</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-18</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-18</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-19</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-19</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-20</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-20</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-25</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-25</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-26</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-26</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-27</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-27</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-30</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-30</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-31</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-03-31</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-01</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-01</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-02</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-06</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-06</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-07</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-07</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-08</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-08</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-09</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-10</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-10</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-13</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-13</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-14</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-14</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-15</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-15</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-16</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-16</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-17</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-17</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-20</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-20</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-21</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-21</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-22</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-22</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-23</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>null</td><td>2026-04-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-01</td><td>283.1</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-01</td><td>283.1</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-02</td><td>286.19</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-02</td><td>286.19</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-03</td><td>284.15</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-03</td><td>284.15</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-04</td><td>280.7</td><td>null</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-04</td><td>280.7</td><td>-0.85</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-05</td><td>278.78</td><td>-1.53</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-05</td><td>278.78</td><td>-2.59</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-08</td><td>277.89</td><td>-2.9</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-08</td><td>277.89</td><td>-2.2</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-09</td><td>277.18</td><td>-2.45</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-09</td><td>277.18</td><td>-1.25</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-10</td><td>278.78</td><td>-0.68</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-10</td><td>278.78</td><td>0.0</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-11</td><td>278.03</td><td>-0.27</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-11</td><td>278.03</td><td>0.05</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-12</td><td>278.28</td><td>0.14</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-12</td><td>278.28</td><td>0.4</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-15</td><td>274.11</td><td>-1.11</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-15</td><td>274.11</td><td>-1.68</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-16</td><td>274.61</td><td>-1.5</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-16</td><td>274.61</td><td>-1.23</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-17</td><td>271.84</td><td>-2.23</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-17</td><td>271.84</td><td>-2.31</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-18</td><td>272.19</td><td>-2.19</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-18</td><td>272.19</td><td>-0.7</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-19</td><td>273.67</td><td>-0.16</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-19</td><td>273.67</td><td>-0.34</td><td>null</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-22</td><td>270.97</td><td>-1.33</td><td>-4.28</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-22</td><td>270.97</td><td>-0.32</td><td>-4.28</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-23</td><td>272.36</td><td>0.19</td><td>-4.83</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-23</td><td>272.36</td><td>0.06</td><td>-4.83</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-24</td><td>273.81</td><td>0.6</td><td>-3.64</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-24</td><td>273.81</td><td>0.05</td><td>-3.64</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-26</td><td>273.4</td><td>-0.1</td><td>-2.6</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-26</td><td>273.4</td><td>0.9</td><td>-2.6</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-29</td><td>273.76</td><td>1.03</td><td>-1.8</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-29</td><td>273.76</td><td>0.51</td><td>-1.8</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-30</td><td>273.08</td><td>0.26</td><td>-1.73</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-30</td><td>273.08</td><td>-0.27</td><td>-1.73</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-31</td><td>271.86</td><td>-0.71</td><td>-1.92</td><td>null</td></tr><tr><td>AAPL</td><td>2025-12-31</td><td>271.86</td><td>-0.56</td><td>-1.92</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-02</td><td>271.01</td><td>-0.87</td><td>-2.79</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-02</td><td>271.01</td><td>-1.0</td><td>-2.79</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-05</td><td>267.26</td><td>-2.37</td><td>-3.87</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-05</td><td>267.26</td><td>-2.13</td><td>-3.87</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-06</td><td>262.36</td><td>-3.93</td><td>-5.72</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-06</td><td>262.36</td><td>-3.49</td><td>-5.72</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-07</td><td>260.33</td><td>-4.24</td><td>-5.03</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-07</td><td>260.33</td><td>-3.94</td><td>-5.03</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-08</td><td>259.04</td><td>-4.42</td><td>-5.67</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-08</td><td>259.04</td><td>-3.08</td><td>-5.67</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-09</td><td>259.37</td><td>-2.95</td><td>-4.59</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-09</td><td>259.37</td><td>-1.14</td><td>-4.59</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-12</td><td>260.25</td><td>-0.8</td><td>-4.39</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-12</td><td>260.25</td><td>-0.03</td><td>-4.39</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-13</td><td>261.05</td><td>0.28</td><td>-4.61</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-13</td><td>261.05</td><td>0.78</td><td>-4.61</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-14</td><td>259.96</td><td>0.36</td><td>-4.06</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-14</td><td>259.96</td><td>0.23</td><td>-4.06</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-15</td><td>258.21</td><td>-0.45</td><td>-5.2</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-15</td><td>258.21</td><td>-0.78</td><td>-5.2</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-16</td><td>255.53</td><td>-1.81</td><td>-6.68</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-16</td><td>255.53</td><td>-2.11</td><td>-6.68</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-20</td><td>246.7</td><td>-5.5</td><td>-9.77</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-20</td><td>246.7</td><td>-5.1</td><td>-9.77</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-21</td><td>247.65</td><td>-4.74</td><td>-9.54</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-21</td><td>247.65</td><td>-4.09</td><td>-9.54</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-22</td><td>248.35</td><td>-3.82</td><td>-9.06</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-22</td><td>248.35</td><td>-2.81</td><td>-9.06</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-23</td><td>248.04</td><td>-2.93</td><td>-8.76</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-23</td><td>248.04</td><td>0.54</td><td>-8.76</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-26</td><td>255.41</td><td>3.53</td><td>-5.76</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-26</td><td>255.41</td><td>3.13</td><td>-5.76</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-27</td><td>258.27</td><td>4.29</td><td>-3.36</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-27</td><td>258.27</td><td>3.99</td><td>-3.36</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-28</td><td>256.44</td><td>3.26</td><td>-2.26</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-28</td><td>256.44</td><td>3.39</td><td>-2.26</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-29</td><td>258.28</td><td>4.13</td><td>-0.79</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-29</td><td>258.28</td><td>1.12</td><td>-0.79</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-30</td><td>259.48</td><td>1.59</td><td>0.17</td><td>null</td></tr><tr><td>AAPL</td><td>2026-01-30</td><td>259.48</td><td>0.47</td><td>0.17</td><td>null</td></tr><tr><td>AAPL</td><td>2026-02-02</td><td>270.01</td><td>4.55</td><td>4.1</td><td>null</td></tr><tr><td>AAPL</td><td>2026-02-02</td><td>270.01</td><td>5.29</td><td>4.1</td><td>null</td></tr><tr><td>AAPL</td><td>2026-02-03</td><td>269.48</td><td>5.09</td><td>3.55</td><td>null</td></tr><tr><td>AAPL</td><td>2026-02-03</td><td>269.48</td><td>4.34</td><td>3.55</td><td>null</td></tr><tr><td>AAPL</td><td>2026-02-04</td><td>276.49</td><td>7.05</td><td>5.91</td><td>null</td></tr><tr><td>AAPL</td><td>2026-02-04</td><td>276.49</td><td>6.56</td><td>5.91</td><td>null</td></tr><tr><td>IBM</td><td>2025-11-28</td><td>308.58</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-01</td><td>305.67</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-01</td><td>305.67</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-01</td><td>305.67</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-01</td><td>305.67</td><td>-0.94</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-02</td><td>301.78</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-02</td><td>301.78</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-02</td><td>301.78</td><td>null</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-02</td><td>301.78</td><td>-1.27</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-03</td><td>302.62</td><td>-1.0</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-03</td><td>302.62</td><td>-1.0</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-03</td><td>302.62</td><td>-1.0</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-03</td><td>302.62</td><td>0.28</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-04</td><td>307.99</td><td>2.06</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-04</td><td>307.99</td><td>2.06</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-04</td><td>307.99</td><td>2.06</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-04</td><td>307.99</td><td>1.77</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-05</td><td>307.94</td><td>1.76</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-05</td><td>307.94</td><td>1.76</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-05</td><td>307.94</td><td>1.76</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-05</td><td>307.94</td><td>-0.02</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-08</td><td>309.18</td><td>0.39</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-08</td><td>309.18</td><td>0.39</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-08</td><td>309.18</td><td>0.39</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-08</td><td>309.18</td><td>0.4</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-09</td><td>310.48</td><td>0.82</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-09</td><td>310.48</td><td>0.82</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-09</td><td>310.48</td><td>0.82</td><td>0.62</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-09</td><td>310.48</td><td>0.42</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-10</td><td>312.67</td><td>1.13</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-10</td><td>312.67</td><td>1.13</td><td>null</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-10</td><td>312.67</td><td>1.13</td><td>2.29</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-10</td><td>312.67</td><td>0.71</td><td>2.29</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-11</td><td>310.74</td><td>0.08</td><td>1.66</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-11</td><td>310.74</td><td>0.08</td><td>1.66</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-11</td><td>310.74</td><td>0.08</td><td>2.97</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-11</td><td>310.74</td><td>-0.62</td><td>2.97</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-12</td><td>309.24</td><td>-1.1</td><td>2.47</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-12</td><td>309.24</td><td>-1.1</td><td>2.47</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-12</td><td>309.24</td><td>-1.1</td><td>2.19</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-12</td><td>309.24</td><td>-0.48</td><td>2.19</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-15</td><td>308.66</td><td>-0.67</td><td>2.0</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-15</td><td>308.66</td><td>-0.67</td><td>2.0</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-15</td><td>308.66</td><td>-0.67</td><td>0.22</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-15</td><td>308.66</td><td>-0.19</td><td>0.22</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-16</td><td>303.18</td><td>-1.96</td><td>-1.56</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-16</td><td>303.18</td><td>-1.96</td><td>-1.56</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-16</td><td>303.18</td><td>-1.96</td><td>-1.55</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-16</td><td>303.18</td><td>-1.78</td><td>-1.55</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-17</td><td>303.32</td><td>-1.73</td><td>-1.5</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-17</td><td>303.32</td><td>-1.73</td><td>-1.5</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-17</td><td>303.32</td><td>-1.73</td><td>-1.9</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-17</td><td>303.32</td><td>0.05</td><td>-1.9</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-18</td><td>300.45</td><td>-0.9</td><td>-2.82</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-18</td><td>300.45</td><td>-0.9</td><td>-2.82</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-18</td><td>300.45</td><td>-0.9</td><td>-3.23</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-18</td><td>300.45</td><td>-0.95</td><td>-3.23</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-19</td><td>300.98</td><td>-0.77</td><td>-3.06</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-19</td><td>300.98</td><td>-0.77</td><td>-3.06</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-19</td><td>300.98</td><td>-0.77</td><td>-3.74</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-19</td><td>300.98</td><td>0.18</td><td>-3.74</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-22</td><td>302.79</td><td>0.78</td><td>-3.16</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-22</td><td>302.79</td><td>0.78</td><td>-3.16</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-22</td><td>302.79</td><td>0.78</td><td>-2.56</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-22</td><td>302.79</td><td>0.6</td><td>-2.56</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-23</td><td>303.78</td><td>0.93</td><td>-2.24</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-23</td><td>303.78</td><td>0.93</td><td>-2.24</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-23</td><td>303.78</td><td>0.93</td><td>-1.77</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-23</td><td>303.78</td><td>0.33</td><td>-1.77</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-24</td><td>304.56</td><td>0.58</td><td>-1.51</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-24</td><td>304.56</td><td>0.58</td><td>-1.51</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-24</td><td>304.56</td><td>0.58</td><td>-1.33</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-24</td><td>304.56</td><td>0.26</td><td>-1.33</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-26</td><td>305.09</td><td>0.43</td><td>-1.16</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-26</td><td>305.09</td><td>0.43</td><td>-1.16</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-26</td><td>305.09</td><td>0.43</td><td>0.63</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-26</td><td>305.09</td><td>0.17</td><td>0.63</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-29</td><td>305.74</td><td>0.39</td><td>0.84</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-29</td><td>305.74</td><td>0.39</td><td>0.84</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-29</td><td>305.74</td><td>0.39</td><td>0.8</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-29</td><td>305.74</td><td>0.21</td><td>0.8</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-30</td><td>302.05</td><td>-1.0</td><td>-0.42</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-30</td><td>302.05</td><td>-1.0</td><td>-0.42</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-30</td><td>302.05</td><td>-1.0</td><td>0.53</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-30</td><td>302.05</td><td>-1.21</td><td>0.53</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-31</td><td>296.21</td><td>-3.12</td><td>-1.41</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-31</td><td>296.21</td><td>-3.12</td><td>-1.41</td><td>null</td></tr><tr><td>IBM</td><td>2025-12-31</td><td>296.21</td><td>-1.93</td><td>-1.58</td><td>null</td></tr><tr><td>IBM</td><td>2026-01-02</td><td>291.5</td><td>-3.49</td><td>-3.15</td><td>null</td></tr><tr><td>IBM</td><td>2026-01-02</td><td>291.5</td><td>-3.49</td><td>-3.15</td><td>null</td></tr><tr><td>IBM</td><td>2026-04-24</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-11-28</td><td>null</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-01</td><td>486.74</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-01</td><td>486.74</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-02</td><td>490.0</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-02</td><td>490.0</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-03</td><td>477.73</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-03</td><td>477.73</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-04</td><td>480.84</td><td>null</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-04</td><td>480.84</td><td>-1.21</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-05</td><td>483.16</td><td>-0.74</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-05</td><td>483.16</td><td>-1.4</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-08</td><td>491.02</td><td>0.21</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-08</td><td>491.02</td><td>2.78</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-09</td><td>492.02</td><td>2.99</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-09</td><td>492.02</td><td>2.33</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-10</td><td>478.56</td><td>-0.47</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-10</td><td>478.56</td><td>-0.95</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-11</td><td>483.47</td><td>0.06</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-11</td><td>483.47</td><td>-1.54</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-12</td><td>478.53</td><td>-2.54</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-12</td><td>478.53</td><td>-2.74</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-15</td><td>474.82</td><td>-3.5</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-15</td><td>474.82</td><td>-0.78</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-16</td><td>476.39</td><td>-0.45</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-16</td><td>476.39</td><td>-1.46</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-17</td><td>476.12</td><td>-1.52</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-17</td><td>476.12</td><td>-0.5</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-18</td><td>483.98</td><td>1.14</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-18</td><td>483.98</td><td>1.93</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-19</td><td>485.92</td><td>2.34</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-19</td><td>485.92</td><td>2.0</td><td>null</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-22</td><td>484.92</td><td>1.79</td><td>-0.37</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-22</td><td>484.92</td><td>1.85</td><td>-0.37</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-23</td><td>486.85</td><td>2.25</td><td>-0.64</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-23</td><td>486.85</td><td>0.59</td><td>-0.64</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-24</td><td>488.02</td><td>0.83</td><td>2.15</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-24</td><td>488.02</td><td>0.43</td><td>2.15</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-26</td><td>487.71</td><td>0.37</td><td>1.43</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-26</td><td>487.71</td><td>0.58</td><td>1.43</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-29</td><td>487.1</td><td>0.45</td><td>0.82</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-29</td><td>487.1</td><td>0.05</td><td>0.82</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-30</td><td>487.48</td><td>0.13</td><td>-0.72</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-30</td><td>487.48</td><td>-0.11</td><td>-0.72</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-31</td><td>483.62</td><td>-0.9</td><td>-1.71</td><td>null</td></tr><tr><td>MSFT</td><td>2025-12-31</td><td>483.62</td><td>-0.84</td><td>-1.71</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-02</td><td>472.94</td><td>-3.03</td><td>-1.17</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-02</td><td>472.94</td><td>-2.91</td><td>-1.17</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-05</td><td>472.85</td><td>-2.93</td><td>-2.2</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-05</td><td>472.85</td><td>-3.0</td><td>-2.2</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-06</td><td>478.51</td><td>-1.84</td><td>0.0</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-06</td><td>478.51</td><td>-1.06</td><td>0.0</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-07</td><td>483.47</td><td>-0.03</td><td>1.82</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-07</td><td>483.47</td><td>2.23</td><td>1.82</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-08</td><td>478.11</td><td>1.09</td><td>0.36</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-08</td><td>478.11</td><td>1.11</td><td>0.36</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-09</td><td>479.28</td><td>1.36</td><td>0.66</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-09</td><td>479.28</td><td>0.16</td><td>0.66</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-12</td><td>477.18</td><td>-0.28</td><td>-1.41</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-12</td><td>477.18</td><td>-1.3</td><td>-1.41</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-13</td><td>470.67</td><td>-2.65</td><td>-3.14</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-13</td><td>470.67</td><td>-1.56</td><td>-3.14</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-14</td><td>459.38</td><td>-3.92</td><td>-5.27</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-14</td><td>459.38</td><td>-4.15</td><td>-5.27</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-15</td><td>456.66</td><td>-4.72</td><td>-6.2</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-15</td><td>456.66</td><td>-4.3</td><td>-6.2</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-16</td><td>459.86</td><td>-3.63</td><td>-5.77</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-16</td><td>459.86</td><td>-2.3</td><td>-5.77</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-20</td><td>454.52</td><td>-3.43</td><td>-6.81</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-20</td><td>454.52</td><td>-1.06</td><td>-6.81</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-21</td><td>444.11</td><td>-3.32</td><td>-8.83</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-21</td><td>444.11</td><td>-2.75</td><td>-8.83</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-22</td><td>451.14</td><td>-1.21</td><td>-7.45</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-22</td><td>451.14</td><td>-1.9</td><td>-7.45</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-23</td><td>465.95</td><td>1.32</td><td>-3.65</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-23</td><td>465.95</td><td>2.51</td><td>-3.65</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-26</td><td>470.28</td><td>3.47</td><td>-0.56</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-26</td><td>470.28</td><td>5.89</td><td>-0.56</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-27</td><td>480.58</td><td>8.21</td><td>1.63</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-27</td><td>480.58</td><td>6.53</td><td>1.63</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-28</td><td>481.63</td><td>6.76</td><td>0.65</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-28</td><td>481.63</td><td>3.37</td><td>0.65</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-29</td><td>433.5</td><td>-6.96</td><td>-10.34</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-29</td><td>433.5</td><td>-7.82</td><td>-10.34</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-30</td><td>430.29</td><td>-8.5</td><td>-10.0</td><td>null</td></tr><tr><td>MSFT</td><td>2026-01-30</td><td>430.29</td><td>-10.46</td><td>-10.0</td><td>null</td></tr><tr><td>MSFT</td><td>2026-02-02</td><td>423.37</td><td>-11.9</td><td>-11.67</td><td>null</td></tr><tr><td>MSFT</td><td>2026-02-02</td><td>423.37</td><td>-12.1</td><td>-11.67</td><td>null</td></tr><tr><td>MSFT</td><td>2026-02-03</td><td>411.21</td><td>-14.62</td><td>-13.82</td><td>null</td></tr><tr><td>MSFT</td><td>2026-02-03</td><td>411.21</td><td>-5.14</td><td>-13.82</td><td>null</td></tr><tr><td>MSFT</td><td>2026-02-04</td><td>414.19</td><td>-4.45</td><td>-12.0</td><td>null</td></tr><tr><td>MSFT</td><td>2026-02-04</td><td>414.19</td><td>-3.74</td><td>-12.0</td><td>null</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         null,
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-01",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-01",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-03",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-03",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-04",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-04",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-05",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-05",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-08",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-08",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-10",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-10",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-11",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-11",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-12",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-12",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-15",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-15",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-16",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-16",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-17",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-17",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-18",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-18",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-19",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-19",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-22",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-22",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-24",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-24",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-26",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-26",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-29",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-29",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-30",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-30",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-31",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2025-12-31",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-05",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-05",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-06",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-06",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-07",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-07",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-08",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-08",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-12",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-12",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-13",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-13",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-14",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-14",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-15",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-15",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-16",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-16",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-20",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-20",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-21",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-21",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-22",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-22",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-26",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-26",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-27",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-27",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-28",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-28",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-29",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-29",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-30",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-01-30",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-03",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-03",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-04",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-04",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-05",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-05",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-06",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-06",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-10",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-10",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-11",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-11",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-12",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-12",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-13",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-13",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-17",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-17",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-18",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-18",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-19",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-19",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-20",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-20",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-24",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-24",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-25",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-25",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-26",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-26",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-27",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-02-27",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-03",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-03",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-04",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-04",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-05",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-05",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-06",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-06",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-10",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-10",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-11",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-11",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-12",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-12",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-13",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-13",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-16",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-16",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-17",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-17",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-18",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-18",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-19",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-19",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-20",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-20",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-24",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-24",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-25",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-25",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-26",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-26",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-27",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-27",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-30",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-30",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-31",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-03-31",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-01",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-01",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-02",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-06",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-06",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-07",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-07",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-08",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-08",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-09",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-10",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-10",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-13",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-13",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-14",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-14",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-15",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-15",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-16",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-16",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-17",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-17",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-20",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-20",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-21",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-21",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-22",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-22",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-23",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-24",
         null,
         null,
         null,
         null
        ],
        [
         null,
         "2026-04-24",
         null,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-01",
         283.1,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-01",
         283.1,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-02",
         286.19,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-02",
         286.19,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-03",
         284.15,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-03",
         284.15,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-04",
         280.7,
         null,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-04",
         280.7,
         -0.85,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-05",
         278.78,
         -1.53,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-05",
         278.78,
         -2.59,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-08",
         277.89,
         -2.9,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-08",
         277.89,
         -2.2,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-09",
         277.18,
         -2.45,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-09",
         277.18,
         -1.25,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-10",
         278.78,
         -0.68,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-10",
         278.78,
         0.0,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-11",
         278.03,
         -0.27,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-11",
         278.03,
         0.05,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-12",
         278.28,
         0.14,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-12",
         278.28,
         0.4,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-15",
         274.11,
         -1.11,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-15",
         274.11,
         -1.68,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-16",
         274.61,
         -1.5,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-16",
         274.61,
         -1.23,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-17",
         271.84,
         -2.23,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-17",
         271.84,
         -2.31,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-18",
         272.19,
         -2.19,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-18",
         272.19,
         -0.7,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-19",
         273.67,
         -0.16,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-19",
         273.67,
         -0.34,
         null,
         null
        ],
        [
         "AAPL",
         "2025-12-22",
         270.97,
         -1.33,
         -4.28,
         null
        ],
        [
         "AAPL",
         "2025-12-22",
         270.97,
         -0.32,
         -4.28,
         null
        ],
        [
         "AAPL",
         "2025-12-23",
         272.36,
         0.19,
         -4.83,
         null
        ],
        [
         "AAPL",
         "2025-12-23",
         272.36,
         0.06,
         -4.83,
         null
        ],
        [
         "AAPL",
         "2025-12-24",
         273.81,
         0.6,
         -3.64,
         null
        ],
        [
         "AAPL",
         "2025-12-24",
         273.81,
         0.05,
         -3.64,
         null
        ],
        [
         "AAPL",
         "2025-12-26",
         273.4,
         -0.1,
         -2.6,
         null
        ],
        [
         "AAPL",
         "2025-12-26",
         273.4,
         0.9,
         -2.6,
         null
        ],
        [
         "AAPL",
         "2025-12-29",
         273.76,
         1.03,
         -1.8,
         null
        ],
        [
         "AAPL",
         "2025-12-29",
         273.76,
         0.51,
         -1.8,
         null
        ],
        [
         "AAPL",
         "2025-12-30",
         273.08,
         0.26,
         -1.73,
         null
        ],
        [
         "AAPL",
         "2025-12-30",
         273.08,
         -0.27,
         -1.73,
         null
        ],
        [
         "AAPL",
         "2025-12-31",
         271.86,
         -0.71,
         -1.92,
         null
        ],
        [
         "AAPL",
         "2025-12-31",
         271.86,
         -0.56,
         -1.92,
         null
        ],
        [
         "AAPL",
         "2026-01-02",
         271.01,
         -0.87,
         -2.79,
         null
        ],
        [
         "AAPL",
         "2026-01-02",
         271.01,
         -1.0,
         -2.79,
         null
        ],
        [
         "AAPL",
         "2026-01-05",
         267.26,
         -2.37,
         -3.87,
         null
        ],
        [
         "AAPL",
         "2026-01-05",
         267.26,
         -2.13,
         -3.87,
         null
        ],
        [
         "AAPL",
         "2026-01-06",
         262.36,
         -3.93,
         -5.72,
         null
        ],
        [
         "AAPL",
         "2026-01-06",
         262.36,
         -3.49,
         -5.72,
         null
        ],
        [
         "AAPL",
         "2026-01-07",
         260.33,
         -4.24,
         -5.03,
         null
        ],
        [
         "AAPL",
         "2026-01-07",
         260.33,
         -3.94,
         -5.03,
         null
        ],
        [
         "AAPL",
         "2026-01-08",
         259.04,
         -4.42,
         -5.67,
         null
        ],
        [
         "AAPL",
         "2026-01-08",
         259.04,
         -3.08,
         -5.67,
         null
        ],
        [
         "AAPL",
         "2026-01-09",
         259.37,
         -2.95,
         -4.59,
         null
        ],
        [
         "AAPL",
         "2026-01-09",
         259.37,
         -1.14,
         -4.59,
         null
        ],
        [
         "AAPL",
         "2026-01-12",
         260.25,
         -0.8,
         -4.39,
         null
        ],
        [
         "AAPL",
         "2026-01-12",
         260.25,
         -0.03,
         -4.39,
         null
        ],
        [
         "AAPL",
         "2026-01-13",
         261.05,
         0.28,
         -4.61,
         null
        ],
        [
         "AAPL",
         "2026-01-13",
         261.05,
         0.78,
         -4.61,
         null
        ],
        [
         "AAPL",
         "2026-01-14",
         259.96,
         0.36,
         -4.06,
         null
        ],
        [
         "AAPL",
         "2026-01-14",
         259.96,
         0.23,
         -4.06,
         null
        ],
        [
         "AAPL",
         "2026-01-15",
         258.21,
         -0.45,
         -5.2,
         null
        ],
        [
         "AAPL",
         "2026-01-15",
         258.21,
         -0.78,
         -5.2,
         null
        ],
        [
         "AAPL",
         "2026-01-16",
         255.53,
         -1.81,
         -6.68,
         null
        ],
        [
         "AAPL",
         "2026-01-16",
         255.53,
         -2.11,
         -6.68,
         null
        ],
        [
         "AAPL",
         "2026-01-20",
         246.7,
         -5.5,
         -9.77,
         null
        ],
        [
         "AAPL",
         "2026-01-20",
         246.7,
         -5.1,
         -9.77,
         null
        ],
        [
         "AAPL",
         "2026-01-21",
         247.65,
         -4.74,
         -9.54,
         null
        ],
        [
         "AAPL",
         "2026-01-21",
         247.65,
         -4.09,
         -9.54,
         null
        ],
        [
         "AAPL",
         "2026-01-22",
         248.35,
         -3.82,
         -9.06,
         null
        ],
        [
         "AAPL",
         "2026-01-22",
         248.35,
         -2.81,
         -9.06,
         null
        ],
        [
         "AAPL",
         "2026-01-23",
         248.04,
         -2.93,
         -8.76,
         null
        ],
        [
         "AAPL",
         "2026-01-23",
         248.04,
         0.54,
         -8.76,
         null
        ],
        [
         "AAPL",
         "2026-01-26",
         255.41,
         3.53,
         -5.76,
         null
        ],
        [
         "AAPL",
         "2026-01-26",
         255.41,
         3.13,
         -5.76,
         null
        ],
        [
         "AAPL",
         "2026-01-27",
         258.27,
         4.29,
         -3.36,
         null
        ],
        [
         "AAPL",
         "2026-01-27",
         258.27,
         3.99,
         -3.36,
         null
        ],
        [
         "AAPL",
         "2026-01-28",
         256.44,
         3.26,
         -2.26,
         null
        ],
        [
         "AAPL",
         "2026-01-28",
         256.44,
         3.39,
         -2.26,
         null
        ],
        [
         "AAPL",
         "2026-01-29",
         258.28,
         4.13,
         -0.79,
         null
        ],
        [
         "AAPL",
         "2026-01-29",
         258.28,
         1.12,
         -0.79,
         null
        ],
        [
         "AAPL",
         "2026-01-30",
         259.48,
         1.59,
         0.17,
         null
        ],
        [
         "AAPL",
         "2026-01-30",
         259.48,
         0.47,
         0.17,
         null
        ],
        [
         "AAPL",
         "2026-02-02",
         270.01,
         4.55,
         4.1,
         null
        ],
        [
         "AAPL",
         "2026-02-02",
         270.01,
         5.29,
         4.1,
         null
        ],
        [
         "AAPL",
         "2026-02-03",
         269.48,
         5.09,
         3.55,
         null
        ],
        [
         "AAPL",
         "2026-02-03",
         269.48,
         4.34,
         3.55,
         null
        ],
        [
         "AAPL",
         "2026-02-04",
         276.49,
         7.05,
         5.91,
         null
        ],
        [
         "AAPL",
         "2026-02-04",
         276.49,
         6.56,
         5.91,
         null
        ],
        [
         "IBM",
         "2025-11-28",
         308.58,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-01",
         305.67,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-01",
         305.67,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-01",
         305.67,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-01",
         305.67,
         -0.94,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-02",
         301.78,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-02",
         301.78,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-02",
         301.78,
         null,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-02",
         301.78,
         -1.27,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-03",
         302.62,
         -1.0,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-03",
         302.62,
         -1.0,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-03",
         302.62,
         -1.0,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-03",
         302.62,
         0.28,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-04",
         307.99,
         2.06,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-04",
         307.99,
         2.06,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-04",
         307.99,
         2.06,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-04",
         307.99,
         1.77,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-05",
         307.94,
         1.76,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-05",
         307.94,
         1.76,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-05",
         307.94,
         1.76,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-05",
         307.94,
         -0.02,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-08",
         309.18,
         0.39,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-08",
         309.18,
         0.39,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-08",
         309.18,
         0.39,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-08",
         309.18,
         0.4,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-09",
         310.48,
         0.82,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-09",
         310.48,
         0.82,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-09",
         310.48,
         0.82,
         0.62,
         null
        ],
        [
         "IBM",
         "2025-12-09",
         310.48,
         0.42,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-10",
         312.67,
         1.13,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-10",
         312.67,
         1.13,
         null,
         null
        ],
        [
         "IBM",
         "2025-12-10",
         312.67,
         1.13,
         2.29,
         null
        ],
        [
         "IBM",
         "2025-12-10",
         312.67,
         0.71,
         2.29,
         null
        ],
        [
         "IBM",
         "2025-12-11",
         310.74,
         0.08,
         1.66,
         null
        ],
        [
         "IBM",
         "2025-12-11",
         310.74,
         0.08,
         1.66,
         null
        ],
        [
         "IBM",
         "2025-12-11",
         310.74,
         0.08,
         2.97,
         null
        ],
        [
         "IBM",
         "2025-12-11",
         310.74,
         -0.62,
         2.97,
         null
        ],
        [
         "IBM",
         "2025-12-12",
         309.24,
         -1.1,
         2.47,
         null
        ],
        [
         "IBM",
         "2025-12-12",
         309.24,
         -1.1,
         2.47,
         null
        ],
        [
         "IBM",
         "2025-12-12",
         309.24,
         -1.1,
         2.19,
         null
        ],
        [
         "IBM",
         "2025-12-12",
         309.24,
         -0.48,
         2.19,
         null
        ],
        [
         "IBM",
         "2025-12-15",
         308.66,
         -0.67,
         2.0,
         null
        ],
        [
         "IBM",
         "2025-12-15",
         308.66,
         -0.67,
         2.0,
         null
        ],
        [
         "IBM",
         "2025-12-15",
         308.66,
         -0.67,
         0.22,
         null
        ],
        [
         "IBM",
         "2025-12-15",
         308.66,
         -0.19,
         0.22,
         null
        ],
        [
         "IBM",
         "2025-12-16",
         303.18,
         -1.96,
         -1.56,
         null
        ],
        [
         "IBM",
         "2025-12-16",
         303.18,
         -1.96,
         -1.56,
         null
        ],
        [
         "IBM",
         "2025-12-16",
         303.18,
         -1.96,
         -1.55,
         null
        ],
        [
         "IBM",
         "2025-12-16",
         303.18,
         -1.78,
         -1.55,
         null
        ],
        [
         "IBM",
         "2025-12-17",
         303.32,
         -1.73,
         -1.5,
         null
        ],
        [
         "IBM",
         "2025-12-17",
         303.32,
         -1.73,
         -1.5,
         null
        ],
        [
         "IBM",
         "2025-12-17",
         303.32,
         -1.73,
         -1.9,
         null
        ],
        [
         "IBM",
         "2025-12-17",
         303.32,
         0.05,
         -1.9,
         null
        ],
        [
         "IBM",
         "2025-12-18",
         300.45,
         -0.9,
         -2.82,
         null
        ],
        [
         "IBM",
         "2025-12-18",
         300.45,
         -0.9,
         -2.82,
         null
        ],
        [
         "IBM",
         "2025-12-18",
         300.45,
         -0.9,
         -3.23,
         null
        ],
        [
         "IBM",
         "2025-12-18",
         300.45,
         -0.95,
         -3.23,
         null
        ],
        [
         "IBM",
         "2025-12-19",
         300.98,
         -0.77,
         -3.06,
         null
        ],
        [
         "IBM",
         "2025-12-19",
         300.98,
         -0.77,
         -3.06,
         null
        ],
        [
         "IBM",
         "2025-12-19",
         300.98,
         -0.77,
         -3.74,
         null
        ],
        [
         "IBM",
         "2025-12-19",
         300.98,
         0.18,
         -3.74,
         null
        ],
        [
         "IBM",
         "2025-12-22",
         302.79,
         0.78,
         -3.16,
         null
        ],
        [
         "IBM",
         "2025-12-22",
         302.79,
         0.78,
         -3.16,
         null
        ],
        [
         "IBM",
         "2025-12-22",
         302.79,
         0.78,
         -2.56,
         null
        ],
        [
         "IBM",
         "2025-12-22",
         302.79,
         0.6,
         -2.56,
         null
        ],
        [
         "IBM",
         "2025-12-23",
         303.78,
         0.93,
         -2.24,
         null
        ],
        [
         "IBM",
         "2025-12-23",
         303.78,
         0.93,
         -2.24,
         null
        ],
        [
         "IBM",
         "2025-12-23",
         303.78,
         0.93,
         -1.77,
         null
        ],
        [
         "IBM",
         "2025-12-23",
         303.78,
         0.33,
         -1.77,
         null
        ],
        [
         "IBM",
         "2025-12-24",
         304.56,
         0.58,
         -1.51,
         null
        ],
        [
         "IBM",
         "2025-12-24",
         304.56,
         0.58,
         -1.51,
         null
        ],
        [
         "IBM",
         "2025-12-24",
         304.56,
         0.58,
         -1.33,
         null
        ],
        [
         "IBM",
         "2025-12-24",
         304.56,
         0.26,
         -1.33,
         null
        ],
        [
         "IBM",
         "2025-12-26",
         305.09,
         0.43,
         -1.16,
         null
        ],
        [
         "IBM",
         "2025-12-26",
         305.09,
         0.43,
         -1.16,
         null
        ],
        [
         "IBM",
         "2025-12-26",
         305.09,
         0.43,
         0.63,
         null
        ],
        [
         "IBM",
         "2025-12-26",
         305.09,
         0.17,
         0.63,
         null
        ],
        [
         "IBM",
         "2025-12-29",
         305.74,
         0.39,
         0.84,
         null
        ],
        [
         "IBM",
         "2025-12-29",
         305.74,
         0.39,
         0.84,
         null
        ],
        [
         "IBM",
         "2025-12-29",
         305.74,
         0.39,
         0.8,
         null
        ],
        [
         "IBM",
         "2025-12-29",
         305.74,
         0.21,
         0.8,
         null
        ],
        [
         "IBM",
         "2025-12-30",
         302.05,
         -1.0,
         -0.42,
         null
        ],
        [
         "IBM",
         "2025-12-30",
         302.05,
         -1.0,
         -0.42,
         null
        ],
        [
         "IBM",
         "2025-12-30",
         302.05,
         -1.0,
         0.53,
         null
        ],
        [
         "IBM",
         "2025-12-30",
         302.05,
         -1.21,
         0.53,
         null
        ],
        [
         "IBM",
         "2025-12-31",
         296.21,
         -3.12,
         -1.41,
         null
        ],
        [
         "IBM",
         "2025-12-31",
         296.21,
         -3.12,
         -1.41,
         null
        ],
        [
         "IBM",
         "2025-12-31",
         296.21,
         -1.93,
         -1.58,
         null
        ],
        [
         "IBM",
         "2026-01-02",
         291.5,
         -3.49,
         -3.15,
         null
        ],
        [
         "IBM",
         "2026-01-02",
         291.5,
         -3.49,
         -3.15,
         null
        ],
        [
         "IBM",
         "2026-04-24",
         null,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-11-28",
         null,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-01",
         486.74,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-01",
         486.74,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-02",
         490.0,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-02",
         490.0,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-03",
         477.73,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-03",
         477.73,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-04",
         480.84,
         null,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-04",
         480.84,
         -1.21,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-05",
         483.16,
         -0.74,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-05",
         483.16,
         -1.4,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-08",
         491.02,
         0.21,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-08",
         491.02,
         2.78,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-09",
         492.02,
         2.99,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-09",
         492.02,
         2.33,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-10",
         478.56,
         -0.47,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-10",
         478.56,
         -0.95,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-11",
         483.47,
         0.06,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-11",
         483.47,
         -1.54,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-12",
         478.53,
         -2.54,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-12",
         478.53,
         -2.74,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-15",
         474.82,
         -3.5,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-15",
         474.82,
         -0.78,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-16",
         476.39,
         -0.45,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-16",
         476.39,
         -1.46,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-17",
         476.12,
         -1.52,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-17",
         476.12,
         -0.5,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-18",
         483.98,
         1.14,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-18",
         483.98,
         1.93,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-19",
         485.92,
         2.34,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-19",
         485.92,
         2.0,
         null,
         null
        ],
        [
         "MSFT",
         "2025-12-22",
         484.92,
         1.79,
         -0.37,
         null
        ],
        [
         "MSFT",
         "2025-12-22",
         484.92,
         1.85,
         -0.37,
         null
        ],
        [
         "MSFT",
         "2025-12-23",
         486.85,
         2.25,
         -0.64,
         null
        ],
        [
         "MSFT",
         "2025-12-23",
         486.85,
         0.59,
         -0.64,
         null
        ],
        [
         "MSFT",
         "2025-12-24",
         488.02,
         0.83,
         2.15,
         null
        ],
        [
         "MSFT",
         "2025-12-24",
         488.02,
         0.43,
         2.15,
         null
        ],
        [
         "MSFT",
         "2025-12-26",
         487.71,
         0.37,
         1.43,
         null
        ],
        [
         "MSFT",
         "2025-12-26",
         487.71,
         0.58,
         1.43,
         null
        ],
        [
         "MSFT",
         "2025-12-29",
         487.1,
         0.45,
         0.82,
         null
        ],
        [
         "MSFT",
         "2025-12-29",
         487.1,
         0.05,
         0.82,
         null
        ],
        [
         "MSFT",
         "2025-12-30",
         487.48,
         0.13,
         -0.72,
         null
        ],
        [
         "MSFT",
         "2025-12-30",
         487.48,
         -0.11,
         -0.72,
         null
        ],
        [
         "MSFT",
         "2025-12-31",
         483.62,
         -0.9,
         -1.71,
         null
        ],
        [
         "MSFT",
         "2025-12-31",
         483.62,
         -0.84,
         -1.71,
         null
        ],
        [
         "MSFT",
         "2026-01-02",
         472.94,
         -3.03,
         -1.17,
         null
        ],
        [
         "MSFT",
         "2026-01-02",
         472.94,
         -2.91,
         -1.17,
         null
        ],
        [
         "MSFT",
         "2026-01-05",
         472.85,
         -2.93,
         -2.2,
         null
        ],
        [
         "MSFT",
         "2026-01-05",
         472.85,
         -3.0,
         -2.2,
         null
        ],
        [
         "MSFT",
         "2026-01-06",
         478.51,
         -1.84,
         0.0,
         null
        ],
        [
         "MSFT",
         "2026-01-06",
         478.51,
         -1.06,
         0.0,
         null
        ],
        [
         "MSFT",
         "2026-01-07",
         483.47,
         -0.03,
         1.82,
         null
        ],
        [
         "MSFT",
         "2026-01-07",
         483.47,
         2.23,
         1.82,
         null
        ],
        [
         "MSFT",
         "2026-01-08",
         478.11,
         1.09,
         0.36,
         null
        ],
        [
         "MSFT",
         "2026-01-08",
         478.11,
         1.11,
         0.36,
         null
        ],
        [
         "MSFT",
         "2026-01-09",
         479.28,
         1.36,
         0.66,
         null
        ],
        [
         "MSFT",
         "2026-01-09",
         479.28,
         0.16,
         0.66,
         null
        ],
        [
         "MSFT",
         "2026-01-12",
         477.18,
         -0.28,
         -1.41,
         null
        ],
        [
         "MSFT",
         "2026-01-12",
         477.18,
         -1.3,
         -1.41,
         null
        ],
        [
         "MSFT",
         "2026-01-13",
         470.67,
         -2.65,
         -3.14,
         null
        ],
        [
         "MSFT",
         "2026-01-13",
         470.67,
         -1.56,
         -3.14,
         null
        ],
        [
         "MSFT",
         "2026-01-14",
         459.38,
         -3.92,
         -5.27,
         null
        ],
        [
         "MSFT",
         "2026-01-14",
         459.38,
         -4.15,
         -5.27,
         null
        ],
        [
         "MSFT",
         "2026-01-15",
         456.66,
         -4.72,
         -6.2,
         null
        ],
        [
         "MSFT",
         "2026-01-15",
         456.66,
         -4.3,
         -6.2,
         null
        ],
        [
         "MSFT",
         "2026-01-16",
         459.86,
         -3.63,
         -5.77,
         null
        ],
        [
         "MSFT",
         "2026-01-16",
         459.86,
         -2.3,
         -5.77,
         null
        ],
        [
         "MSFT",
         "2026-01-20",
         454.52,
         -3.43,
         -6.81,
         null
        ],
        [
         "MSFT",
         "2026-01-20",
         454.52,
         -1.06,
         -6.81,
         null
        ],
        [
         "MSFT",
         "2026-01-21",
         444.11,
         -3.32,
         -8.83,
         null
        ],
        [
         "MSFT",
         "2026-01-21",
         444.11,
         -2.75,
         -8.83,
         null
        ],
        [
         "MSFT",
         "2026-01-22",
         451.14,
         -1.21,
         -7.45,
         null
        ],
        [
         "MSFT",
         "2026-01-22",
         451.14,
         -1.9,
         -7.45,
         null
        ],
        [
         "MSFT",
         "2026-01-23",
         465.95,
         1.32,
         -3.65,
         null
        ],
        [
         "MSFT",
         "2026-01-23",
         465.95,
         2.51,
         -3.65,
         null
        ],
        [
         "MSFT",
         "2026-01-26",
         470.28,
         3.47,
         -0.56,
         null
        ],
        [
         "MSFT",
         "2026-01-26",
         470.28,
         5.89,
         -0.56,
         null
        ],
        [
         "MSFT",
         "2026-01-27",
         480.58,
         8.21,
         1.63,
         null
        ],
        [
         "MSFT",
         "2026-01-27",
         480.58,
         6.53,
         1.63,
         null
        ],
        [
         "MSFT",
         "2026-01-28",
         481.63,
         6.76,
         0.65,
         null
        ],
        [
         "MSFT",
         "2026-01-28",
         481.63,
         3.37,
         0.65,
         null
        ],
        [
         "MSFT",
         "2026-01-29",
         433.5,
         -6.96,
         -10.34,
         null
        ],
        [
         "MSFT",
         "2026-01-29",
         433.5,
         -7.82,
         -10.34,
         null
        ],
        [
         "MSFT",
         "2026-01-30",
         430.29,
         -8.5,
         -10.0,
         null
        ],
        [
         "MSFT",
         "2026-01-30",
         430.29,
         -10.46,
         -10.0,
         null
        ],
        [
         "MSFT",
         "2026-02-02",
         423.37,
         -11.9,
         -11.67,
         null
        ],
        [
         "MSFT",
         "2026-02-02",
         423.37,
         -12.1,
         -11.67,
         null
        ],
        [
         "MSFT",
         "2026-02-03",
         411.21,
         -14.62,
         -13.82,
         null
        ],
        [
         "MSFT",
         "2026-02-03",
         411.21,
         -5.14,
         -13.82,
         null
        ],
        [
         "MSFT",
         "2026-02-04",
         414.19,
         -4.45,
         -12.0,
         null
        ],
        [
         "MSFT",
         "2026-02-04",
         414.19,
         -3.74,
         -12.0,
         null
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "symbol",
            "nullable": true,
            "type": "string"
           },
           {
            "metadata": {},
            "name": "trade_date",
            "nullable": true,
            "type": "date"
           },
           {
            "metadata": {},
            "name": "close",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "growth_7d_pct",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "growth_30d_pct",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "growth_90d_pct",
            "nullable": true,
            "type": "double"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 10
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "symbol",
         "type": "\"string\""
        },
        {
         "metadata": "{}",
         "name": "trade_date",
         "type": "\"date\""
        },
        {
         "metadata": "{}",
         "name": "close",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "growth_7d_pct",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "growth_30d_pct",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "growth_90d_pct",
         "type": "\"double\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Check missing values in growth columns\n",
    "SELECT *\n",
    "FROM workspace.default.gold_price_growth\n",
    "WHERE growth_7d_pct IS NULL\n",
    "   OR growth_30d_pct IS NULL\n",
    "   OR growth_90d_pct IS NULL;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "6bdfd6a1-6bd5-445a-805a-70bb0a2c91c4",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>symbol</th><th>trade_date</th><th>open</th><th>high</th><th>low</th><th>close</th><th>volume</th><th>processed_at</th></tr></thead><tbody></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "symbol",
            "nullable": true,
            "type": "string"
           },
           {
            "metadata": {},
            "name": "trade_date",
            "nullable": true,
            "type": "date"
           },
           {
            "metadata": {},
            "name": "open",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "high",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "low",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "close",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "volume",
            "nullable": true,
            "type": "long"
           },
           {
            "metadata": {},
            "name": "processed_at",
            "nullable": true,
            "type": "timestamp"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 11
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "symbol",
         "type": "\"string\""
        },
        {
         "metadata": "{}",
         "name": "trade_date",
         "type": "\"date\""
        },
        {
         "metadata": "{}",
         "name": "open",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "high",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "low",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "close",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "volume",
         "type": "\"long\""
        },
        {
         "metadata": "{}",
         "name": "processed_at",
         "type": "\"timestamp\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Check volume values are positive\n",
    "SELECT *\n",
    "FROM workspace.default.stock_silver\n",
    "WHERE volume < 0;"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 0,
   "metadata": {
    "application/vnd.databricks.v1+cell": {
     "cellMetadata": {
      "byteLimit": 2048000,
      "implicitDf": true,
      "rowLimit": 10000
     },
     "inputWidgets": {},
     "nuid": "e35acc33-a3a6-4a70-ac2a-938249b3678a",
     "showTitle": false,
     "tableResultSettingsMap": {},
     "title": ""
    }
   },
   "outputs": [
    {
     "output_type": "display_data",
     "data": {
      "text/html": [
       "<style scoped>\n",
       "  .table-result-container {\n",
       "    max-height: 300px;\n",
       "    overflow: auto;\n",
       "  }\n",
       "  table, th, td {\n",
       "    border: 1px solid black;\n",
       "    border-collapse: collapse;\n",
       "  }\n",
       "  th, td {\n",
       "    padding: 5px;\n",
       "  }\n",
       "  th {\n",
       "    text-align: left;\n",
       "  }\n",
       "</style><div class='table-result-container'><table class='table-result'><thead style='background-color: white'><tr><th>min_price</th><th>max_price</th></tr></thead><tbody><tr><td>223.35</td><td>492.02</td></tr></tbody></table></div>"
      ]
     },
     "metadata": {
      "application/vnd.databricks.v1+output": {
       "addedWidgets": {},
       "aggData": [],
       "aggError": "",
       "aggOverflow": false,
       "aggSchema": [],
       "aggSeriesLimitReached": false,
       "aggType": "",
       "arguments": {},
       "columnCustomDisplayInfos": {},
       "data": [
        [
         223.35,
         492.02
        ]
       ],
       "datasetInfos": [
        {
         "name": "_sqldf",
         "schema": {
          "fields": [
           {
            "metadata": {},
            "name": "min_price",
            "nullable": true,
            "type": "double"
           },
           {
            "metadata": {},
            "name": "max_price",
            "nullable": true,
            "type": "double"
           }
          ],
          "type": "struct"
         },
         "tableIdentifier": null,
         "typeStr": "pyspark.sql.connect.dataframe.DataFrame"
        }
       ],
       "dbfsResultPath": null,
       "isJsonSchema": true,
       "metadata": {
        "createTempViewForImplicitDf": true,
        "dataframeName": "_sqldf",
        "executionCount": 12
       },
       "overflow": false,
       "plotOptions": {
        "customPlotOptions": {},
        "displayType": "table",
        "pivotAggregation": null,
        "pivotColumns": null,
        "xColumns": null,
        "yColumns": null
       },
       "removedWidgets": [],
       "schema": [
        {
         "metadata": "{}",
         "name": "min_price",
         "type": "\"double\""
        },
        {
         "metadata": "{}",
         "name": "max_price",
         "type": "\"double\""
        }
       ],
       "type": "table"
      }
     },
     "output_type": "display_data"
    }
   ],
   "source": [
    "%sql\n",
    "-- Check close price range\n",
    "SELECT MIN(close) AS min_price,\n",
    "       MAX(close) AS max_price\n",
    "FROM workspace.default.stock_silver;"
   ]
  }
 ],
 "metadata": {
  "application/vnd.databricks.v1+notebook": {
   "computePreferences": null,
   "dashboards": [],
   "environmentMetadata": {
    "base_environment": "",
    "environment_version": "5"
   },
   "inputWidgetPreferences": null,
   "language": "python",
   "notebookMetadata": {
    "mostRecentlyExecutedCommandWithImplicitDF": {
     "commandId": 6495634065054035,
     "dataframes": [
      "_sqldf"
     ]
    },
    "pythonIndentUnit": 4
   },
   "notebookName": "validation_queries.sql",
   "widgets": {}
  },
  "language_info": {
   "name": "python"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 0
}