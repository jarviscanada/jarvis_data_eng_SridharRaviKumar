# London Gift Shop – Retail Data Analytics

## Introduction

London Gift Shop (LGS) is an online retail business that sells gift items to customers across multiple countries. Over time, LGS has accumulated a large volume of transactional data from daily sales activities. While this data contains valuable information, it exists in raw form and is not directly useful for business decision-making.

The goal of this project is to transform raw retail transaction data into meaningful insights that help LGS understand customer behavior, sales patterns, and revenue drivers. By analyzing historical transactions, we can identify trends such as seasonality, customer retention, cancellation behavior, and bulk purchasing patterns.

LGS can use the results of this analysis to:
- Identify peak sales periods and seasonal trends
- Understand customer purchasing and retention behavior
- Measure the impact of canceled and bulk orders
- Design targeted marketing and promotional campaigns
- Support better inventory and revenue planning

This project was implemented using **Python** in a **Jupyter Notebook**, with data sourced from a **PostgreSQL** database and analyzed using common data analytics libraries.

---

## Implementation

### Project Architecture

This project follows a simple and practical analytics architecture similar to real-world data engineering workflows.

The LGS web application stores transactional data in a PostgreSQL database. This database acts as the source of truth for invoices, products, prices, quantities, and timestamps.

For analytics:
- Data is extracted from PostgreSQL using SQLAlchemy
- Data is loaded into Pandas DataFrames
- Data wrangling and aggregation are performed in Python
- Insights are visualized using charts and summary statistics in Jupyter Notebook

#### High-Level Architecture Flow

👉**[Architecture Diagram](./analytics/Architecture%20diagram.png)**


## Data Analytics and Wrangling

The complete analysis is implemented in the following notebook:

👉 **[Retail Data Analytics Notebook](./analytics/london_giftshop_analysis.ipynb)**

### Key Analytics Performed

#### Invoice-Level Analysis
- Each invoice consists of multiple line items
- A new feature `line_total = quantity × unit_price` was created
- Invoice totals were computed by aggregating line items per invoice

#### Invoice Distribution and Outliers
- Invoice amounts were analyzed using histograms, boxplots, and scatter plots
- The distribution was highly skewed, with a small number of very large invoices
- Negative invoice amounts were identified as canceled or reversed orders

#### 85th Percentile Analysis
- The first 85% of invoices were analyzed separately
- This focuses on typical customer purchasing behavior
- Extreme bulk orders were excluded to avoid distortion

#### Monthly Sales and Growth Trends
- Sales were aggregated by month
- Clear seasonality was observed, with consistent peaks in November
- Month-over-month growth rates were calculated

#### Placed vs Canceled Orders
- Canceled invoices were identified using invoice number patterns
- Monthly placed and canceled orders were compared
- Grouped bar charts were used for clear stakeholder interpretation

#### Customer Activity Analysis
- Monthly active users were calculated using unique customer counts
- Customers were classified as **New** or **Existing** based on first purchase month

#### RFM Analysis (Recency, Frequency, Monetary)
- **Recency**: Days since last purchase
- **Frequency**: Number of distinct invoices
- **Monetary**: Total spending per customer
- Used to identify high-value and loyal customers

## Additional Analysis: Bulk Order Behavior

During the analysis, it became clear that a small number of invoices behave very differently from regular customer orders. These invoices have unusually high quantities and invoice amounts and are often associated with bulk or wholesale purchases.

To better understand this behavior, additional analysis was performed by separating invoices into:
- **Normal orders** (typical customer purchases)
- **Bulk orders** (high-quantity or high-value invoices)

Bulk orders were identified using a percentile-based approach (top 15% of invoice amounts), which allows the definition to adapt naturally to the data without relying on an arbitrary threshold.

### Key Observations

- Bulk orders represent a small percentage of total invoices but contribute a large portion of total revenue
- Bulk orders have a higher cancellation rate compared to normal orders
- Including bulk orders in overall distributions heavily skews averages and hides typical customer behavior
- Normal customer purchasing patterns become much clearer when bulk orders are analyzed separately

### Design Suggestion for LGS

Based on these findings, it is recommended that LGS treat bulk orders separately from normal retail orders.

From a data and system design perspective:
- Bulk orders (orders above a certain quantity or invoice value threshold) can be flagged at ingestion time
- Normal and bulk orders can be stored or tagged separately in the analytics layer
- This allows cleaner reporting, more accurate customer behavior analysis, and better operational decision-making

From a business perspective:
- Normal orders can drive standard marketing campaigns and promotions
- Bulk orders can be handled with dedicated pricing, approval workflows, and customer support
- Cancellation patterns in bulk orders can be analyzed independently to reduce revenue loss

Separating normal and bulk order behavior helps LGS gain more accurate insights and design strategies that reflect how different customer groups actually behave.

### Business Value for LGS

Using the results of this analysis, LGS can:
- Focus marketing efforts during high-performing months
- Improve retention strategies for repeat customers
- Treat bulk and wholesale orders differently from regular customers
- Analyze cancellation behavior to reduce revenue loss
- Make data-driven business decisions

---

## Improvements

If more time were available, the following improvements could be made:

1. **Customer Segmentation**
   - Assign RFM scores and group customers into actionable segments

2. **Sales Forecasting**
   - Apply time-series forecasting models to predict future sales

3. **Automated Data Pipeline**
   - Convert the notebook-based workflow into a scheduled data pipeline
