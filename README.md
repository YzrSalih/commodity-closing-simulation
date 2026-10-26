# Commodity Closing Simulation

A practical Databricks project simulating a simplified **Commodity Accounting closing process** for energy trading data (Power, Gas, CO₂).

## Project Overview

This project demonstrates how to use **Databricks** and **Delta Lake** for:
- Ingesting commodity trading data
- Storing data reliably using Delta Lake
- Generating monthly closing summaries
- Calculating a simplified Profit & Loss (PnL)

It is designed as a hands-on learning project relevant to **Commodity Accounting** and energy trading environments.

## What This Project Includes

- Sample energy commodity trades (Power, Gas, CO₂)
- Data cleaning and transformation with PySpark
- Saving data as a **Delta Lake** table
- Monthly closing summary (average price, total volume, buy/sell volumes)
- Simple PnL calculation by commodity and market
- Use of SQL + Python in the same Databricks notebook

## Technologies Used

- Databricks (Serverless / Community Edition)
- PySpark
- Delta Lake
- Spark SQL
- Python

## How to Run

1. Import the notebook into your Databricks workspace
2. Attach a Serverless or classic cluster
3. Run all cells in order

## Key Learning Outcomes

- Working with Delta Lake tables
- Writing PySpark transformations
- Creating aggregated reports with Spark SQL
- Structuring a simple monthly closing workflow
- Combining Python and SQL in Databricks notebooks

## Future Improvements

- Add more realistic trade data
- Implement data quality checks
- Create a reconciliation process
- Build a simple dashboard
- Add Unity Catalog integration

## Author

Salih Yazar  
AI Engineer | Full-Stack & Data Automation
