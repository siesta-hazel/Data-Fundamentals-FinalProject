# Data Fundamentals – Retail Store Sales Analysis

## 📌 Project Overview
This project analyzes electronic product sales (laptops, mobiles, headphones, keyboards) across three cities (Pune, Mumbai, Nagpur).  
The goal is to help management understand:
- Which products generate the most revenue
- Which cities perform best
- Category-wise performance
- Sales trends over time

The same dataset is analyzed using **three different tools** to compare methodologies and ensure consistency:
- **SQL (Oracle APEX)** – database creation, querying
- **Excel** – formulas, pivot tables, filtering
- **Python (Pandas)** – data manipulation, aggregation, visualization

## 📁 Repository Contents

| File | Description |
|------|-------------|
| `sales_data.csv` | 15 rows of sales records (original 5 + 10 additional for richer analysis) |
| `Retail Sales Analysis.xlsx` | Excel workbook: Sheet1 contains raw data, calculated columns (`Total Sales`), sorting, filtering, and charts; Sheet2 contains a pivot table (Product vs City) |
| `revenue store analysis sql script.sql` | Oracle SQL script: creates `sales_data` table, inserts all rows, and includes 7 analytical queries (total revenue, top product, revenue per city, category revenue, highest-value order, average price) |
| `python analysis.py` | Python script using Pandas: loads CSV, adds `total_sales` column, prints summary statistics, groups by city/product, and identifies top-selling product |

## 🚀 How to Run / Use

### SQL (Oracle APEX or any Oracle DB)
1. Open Oracle APEX SQL Workshop or SQL*Plus.
2. Run the entire script `revenue store analysis sql script.sql`.
3. Execute each query to see results.

### Excel
1. Open `Retail Sales Analysis.xlsx`.
2. Sheet1: Data already imported. Column H (`Total Sales`) = Quantity × Price.  
   Use filters (Data → Filter) to explore by city or product.  
   Charts (bar, pie, line) are embedded.
3. Sheet2: Pivot Table showing total sales per product per city.

### Python
1. Install Python 3.x and Pandas: `pip install pandas`
2. Place `python analysis.py` and `sales_data.csv` in the same folder.
3. Run: `python analysis.py`
4. Outputs in terminal: total revenue, top product, sales by city, summary statistics.

## 📊 Key Insights (from analysis)

- **Highest revenue product:** Laptop  
- **Best performing city:** Mumbai (highest total sales)  
- **Category performance:** Electronics dominates over Accessories  
- **Top-selling by quantity:** Headphones (due to high volume)  
- **Highest single order value:** Order #1001 (2 Laptops = ₹1,00,000)  

> For full charts and SQL outputs, refer to the project document or run the scripts.

## 🧰 Tech Stack

- **Database:** Oracle (APEX) – SQL
- **Spreadsheet:** Microsoft Excel (pivot tables, formulas)
- **Programming:** Python 3 + Pandas

## 📈 Visualizations (created in Excel)

- Bar chart – Product vs Total Sales
- Pie chart – Category sales distribution
- Line chart – Sales trend by date

## 🔮 Future Improvements

- Larger dataset (1000+ rows) for seasonal trends
- Customer segmentation (age, membership tier)
- Predictive sales forecasting (scikit-learn)

## 📄 License

This project is for educational purposes as part of a Data Fundamentals course.

## 👤 Author

[Shreya Kumari] – Data Fundamentals Final Project
