# End-to-End AWS Data Engineering Pipeline for Customer Sales Analytics

## Project Overview
Built an end-to-end data engineering pipeline using AWS services to process customer sales data through Raw, Silver and Gold layers.

## Architecture
Raw → Silver → Gold

## Technologies Used
- Amazon S3
- AWS Glue
- AWS Athena
- PySpark
- SQL
- Apache Parquet

## Data Pipeline

### 1. Raw Layer
- Stored original customer CSV files in Amazon S3.
- Maintained the source data.

### 2. Silver Layer
- Cleaned and transformed customer data using PySpark.
- Handled duplicate and missing records.
- Converted cleaned data into Parquet format.
- Stored the output in S3.

### 3. Gold Layer
- Used Amazon Athena and SQL to perform aggregations.
- Calculated state-wise customer counts, total sales and average purchases.
- Stored business-ready aggregated data in Parquet format.
- Created reusable SQL views for analytics.

## Business Analytics
- Identified the highest revenue-generating state.
- Calculated state-wise sales contributions.
- Analyzed the top three states by sales.
- Calculated average sales per customer.

## Project Outcome
Developed a multi-layer AWS data pipeline that transforms raw customer data into cleaned and business-ready datasets for analytical reporting.
