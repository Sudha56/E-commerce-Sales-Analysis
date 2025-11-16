# 📦 E-Commerce Sales Analysis

A professionally crafted and insight‑driven analysis of e‑commerce sales data, transforming raw information into meaningful business intelligence.

A comprehensive project to analyze e-commerce sales data using **Python**, **Pandas**, **Power BI**, and **SQL**. This project identifies key insights such as sales trends, top-performing products, customer behavior, and profit-driving factors.

---

## 📚 Table of Contents

1. Project Overview
2. Objectives
3. Dataset Description
4. Tools & Technologies
5. Data Cleaning
6. Exploratory Data Analysis
7. Visualizations
8. SQL Queries
9. Insights
10. Conclusion
11. Features
12. Badges
13. Project Logo
14. Screenshots
15. Installation
16. How to Run
17. Future Enhancements
18. Support

---

## 📘 Project Overview

The **E-Commerce Sales Analysis** project focuses on understanding business performance by exploring patterns in sales data. Through data cleaning, transformation, and visualization, this project reveals meaningful insights that help businesses make informed decisions on product strategy, pricing, marketing, and customer engagement.

---

## 🎯 Objectives

* Analyze overall sales performance and revenue trends.
* Identify top-selling products and high-performing categories.
* Study customer purchase behavior and payment preferences.
* Examine monthly and yearly sales trends for patterns.
* Compare sales performance across cities and regions.
* Detect factors influencing profit, such as discounts and pricing.
* Clean and preprocess raw data for accurate analysis.
* Visualize insights using dashboards and charts.

---

## 🗂️ Dataset Description

The dataset contains information such as:

| Column Name      |
| ---------------- |
| Order_Id         |
| Customer_Id      |
| Age              |
| Gender           |
| City             |
| Product_Category |
| Unit_Price       |
| Quantity         |
| Discount_Amount  |
| Total_Amount     |
| Payment_Method   |
| Device_Type      |
| Session_Duration |
| Returning        |
| Delivery_Time    |
| Customer_Rating  |
| Year             |
| Month            |
| Day              |
| Cost             |
| Profit           |

---

## 🛠️ Tools & Technologies Used

* **Python** (Pandas, NumPy, Matplotlib)
* **Jupyter Notebook / VS Code**
* **Power BI** for dashboard creation
* **SQL** for querying and data exploration
* **GitHub** for project hosting and version control

---

## 🧹 Data Cleaning & Preprocessing

Key steps performed:

* Handling missing values
* Removing duplicates
* Correcting data types (dates, numbers)
* Creating new calculated fields
* Removing inconsistencies

Example Python code for loading data:

```
import pandas as pd

df = pd.read_csv('ecommerce_sales.csv')
```

---

## 📊 Exploratory Data Analysis (EDA)

The analysis includes:

* Monthly sales trend
* Yearly performance comparison
* Profit vs. discount analysis
* Top 10 products by sales
* Highest revenue-generating cities
* Payment method distribution

---

## 📈 Visualizations (Power BI / Python)

Key visuals built:

* Line chart – monthly revenue trend
* Bar chart – top-selling categories
* Pie chart – payment method usage
* Heatmap – sales across cities and categories
* KPI cards – total sales, total orders, total profit

---

## 🧮 SQL Queries Used

Example simple query:

```
SELECT city, product_category, SUM(profit) AS total_profit
FROM cleanedsales
GROUP BY city, product_category
ORDER BY total_profit DESC;
```

More SQL queries are included in the project files.

---

## 🧾 Insights & Findings

* Certain product categories consistently outperform others.
* Discounts significantly impact profit margins.
* Some cities generate higher revenue due to higher order volume.
* Customers prefer specific payment methods over others.
* Seasonal spikes observed during certain months.

---

## 📍 Conclusion

A polished and comprehensive analysis highlighting key drivers of sales performance, customer preferences, and profitability. The findings offer actionable insights for strategic business decision‑making.

---

## 🌟 Features

* Professionally structured dataset and analysis
* Automated Python scripts for cleaning and EDA
* Interactive Power BI dashboard
* SQL-based insights for deeper exploration
* High-quality visual analytics
* GitHub‑ready documentation with images and badges

---

## 🏅 Badges

This project provides a complete overview of the sales performance of an e-commerce business. It reveals hidden patterns, customer preferences, and profitability factors that can help businesses optimize decisions and boost sales.

---

## 📁 Folder Structure

```
📦 E-Commerce-Sales-Analysis
 ┣ 📂 data
 ┣ 📂 notebooks
 ┣ 📂 powerbi_dashboard
 ┣ 📂 sql_queries
 ┣ README.md
```

---

## 🔗 Useful Links

* 🗂️ **Raw Dataset Logo:** (https://github.com/Sudha56/E-commerce-Sales-Analysis/blob/main/ecommerce_customer_behavior_dataset.csv)
* 📁 **Cleaned Dataset:** (https://github.com/Sudha56/E-commerce-Sales-Analysis/blob/main/Cleanedsales.csv)
* 📊 **Power BI Dashboard:** (https://github.com/Sudha56/E-commerce-Sales-Analysis/blob/main/project.pbix)
* 📝 **SQL Queries Folder:** (https://github.com/Sudha56/E-commerce-Sales-Analysis/blob/main/project.pbix)
* 📙 **Python Analysis Scripts:** (https://github.com/Sudha56/E-commerce-Sales-Analysis/blob/main/sales.ipynb)

---

## 🤝 Contribution

Contributions are welcome! Feel free to submit issues or pull requests.

---

## 📜 License

This project is licensed under the MIT License.

---

## 🏅 Badges

![Python](https://img.shields.io/badge/Python-3.x-blue)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-yellow)
![Pandas](https://img.shields.io/badge/Pandas-Data%20Analysis-green)
![License](https://img.shields.io/badge/License-MIT-lightgrey)
![Status](https://img.shields.io/badge/Project%20Status-Completed-brightgreen)

---

## 🖼️ Project Logo

> *(Add your logo image file to the repo and replace the markdown below with your file name)*

```
![Project Logo](project_logo.png)
```

---

## 📷 Screenshots

> *(Upload your screenshots to the repository and update the filenames below)*

### 🔹 Power BI Dashboard Preview

```
![Dashboard Preview](screenshots/dashboard1.png)
```

### 🔹 Python EDA Output

```
![EDA Output](screenshots/eda_output.png)
```

---

## 🧩 Additional Sections

### 🛠️ Installation

```
# Clone the repository
git clone https://github.com/yourusername/E-Commerce-Sales-Analysis.git

# Navigate into the directory
cd E-Commerce-Sales-Analysis

# Install dependencies
pip install -r requirements.txt
```

### ▶️ How to Run the Project

1. Open the Jupyter Notebook from the **notebooks/** folder.
2. Run the data cleaning and EDA scripts.
3. Open the **Power BI dashboard** using the provided `.pbix` file.
4. Explore SQL queries in the **sql_queries/** folder.

### 🚀 Future Enhancements

* Add predictive modeling for future sales.
* Implement customer segmentation.
* Build a web app dashboard using Streamlit.
* Add automated data refresh for Power BI.

---

## ⭐ Support

If you like this project, consider giving it a **star** ⭐ on GitHub!
