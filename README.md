Ecommerce Transaction Analysis
==============================

This project analyzes **50,000 ecommerce transactions** to identify sales trends, customer behavior, and revenue drivers using Python, SQL, and Power BI.

The project demonstrates an end-to-end data analytics workflow:


`   Data Cleaning → SQL Analysis → Power BI Dashboard → Business Insights   `

Project Overview
================

Businesses rely on transaction data to understand customer purchasing behavior and improve decision-making.

This project answers key business questions such as:

*   Which product categories generate the most revenue?
    
*   Which countries contribute the highest sales?
    
*   What are the monthly revenue trends?
    
*   Which payment methods generate the most revenue?
    
*   Which customer segments spend the most?
    

Tech Stack
==========

Python, Pandas, MySQL, SQLAlchemy, Power BI

Dataset
=======

The dataset contains **50,000 ecommerce transactions** including:

*   customer demographics
    
*   purchase amounts
    
*   product categories
    
*   payment methods
    
*   transaction dates
    

Data Cleaning
=============

Data cleaning was performed using **Pandas**.

Key steps:

*   Date conversion
    
*   Duplicate removal
    
*   Data validation
    
*   Feature engineering
    

Notebook:

`   data_cleaning_notebook.ipynb   `

SQL Analysis
============

SQL queries were written to analyze:

*   revenue by category
    
*   revenue by country
    
*   monthly sales trends
    
*   payment method usage
    
*   customer lifetime value
    
*   revenue contribution by category
    

File:

`   SQL_analysis.sql   `

Power BI Dashboard
==================

An interactive dashboard was built to visualize key business insights.

Features include:

*   KPI summary metrics
    
*   revenue by product category
    
*   geographic revenue distribution
    
*   monthly revenue trends
    
*   payment method comparison
    

Dashboard file:

`   Ecommerce Transaction Analysis Dashboard.pbix   `

Dashboard Preview
=================

![Dashboard](screenshots/fullDashboard)

Key Insights
============

*   Product category revenue varies significantly across categories.
    
*   Certain countries contribute a large portion of total revenue.
    
*   Digital payment methods dominate ecommerce transactions.
    
*   Monthly sales trends remain relatively stable across the year.
    

Project Structure
=================

`   Ecommerce-Transaction-Analysis
    │
    ├── data_cleaning_notebook.ipynb
    ├── SQL_analysis.sql
    ├── Ecommerce Transaction Analysis Dashboard.pbix
    ├── cleaned_ecommerce_transactions.csv
    └── README.md  
`

How to Run
==========

1.  Run the Python notebook to clean the dataset.
    
2.  Load the cleaned dataset into MySQL.
    
3.  Execute SQL queries in SQL\_analysis.sql.
    
4.  Open the Power BI dashboard file.
    

Author
======

Rohit Singh
