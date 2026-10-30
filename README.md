# Toman Bike Share Dashboard

## Project Overview

This project focuses on analyzing Toman Bike Share's sales performance and developing an interactive dashboard using MySQL and Power BI.

The dashboard provides insights into key business metrics, including revenue, profit, rider demographics, and seasonal trends, helping stakeholders better understand business performance and support data-driven decision-making.

## Business Requirements

The analysis addresses the following business questions:

- **Hourly Revenue Analysis:** Identify the hours with the highest revenue.
- **Profit and Revenue Trends:** Track revenue and profit performance over time.
- **Seasonal Revenue:** Analyze revenue distribution across different seasons.
- **Rider Demographics:** Understand the proportion of registered and casual riders.

## Tools & Technologies

- **MySQL:** Data integration, SQL querying, and data transformation.
- **Power BI:** Data visualization and dashboard development.

## Data Sources

The project uses three CSV files:

| File | Description |
|---|---|
| `bike_share_yr_0.csv` | Bike-sharing sales data for the first year |
| `bike_share_yr_1.csv` | Bike-sharing sales data for the second year |
| `cost_table.csv` | Pricing and cost information by year |

## Data Processing (MySQL)

The following steps were performed to prepare the data for analysis:

1. **Data Integration:** Combined the two yearly sales datasets (`bike_share_yr_0` and `bike_share_yr_1`) using `UNION` within a Common Table Expression (CTE).
2. **Data Enrichment:** Used `LEFT JOIN` to combine the sales data with `cost_table`, matching records based on the year.
3. **Calculated Metrics:** Created two additional columns:
   - Revenue = Riders × Price
   - Profit = (Riders × Price) − (COGS × Riders)

## Dashboard & Key Insights

The Power BI dashboard includes:

- **KPI Cards:** Total Riders, Revenue, Profit, and Profit Margin.
- **KPI Over Time:** Monthly trends in rider count and average profit.
- **Revenue by Season:** Comparison of revenue across four seasons.
- **Rider Demographics:** Distribution of registered and casual riders.
- **Hourly Sales Analysis:** Revenue breakdown by hour to identify peak business periods.
## Dashboard Preview

![Toman Bike Share Dashboard](PowerBI_Dashboards/Final%20Report.jpg)

## Project Files

- **Data:** Three original CSV files containing bike-sharing sales data and pricing information.
- **SQL:** MySQL query for data integration, transformation, and metric calculation.
- **Dashboard:** Power BI dashboard exported as a PDF image for visualization and presentation.
- **README.md:** Project overview, business requirements, data processing steps, and dashboard insights.
