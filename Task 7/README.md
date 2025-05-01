# Task 7: Basic Sales Summary from SQLite Database

## 📌 Objective
- Connect to an SQLite database (`sales_data.db`)
- Run SQL queries to calculate total quantity and revenue per product
- Display results using Python `print` and a simple bar chart

## 🛠 Tools Used
- Python (`sqlite3`, `pandas`, `matplotlib`)
- SQLite

## 💻 Steps Done
1. Created `sales_data.db` with a `sales` table.
2. Inserted sample data:
   - Apple: 10, 1.5
   - Banana: 20, 0.8
   - Orange: 15, 1.2
   - Apple: 5, 1.5
   - Banana: 10, 0.8
   - Orange: 8, 1.2
3. Ran SQL query:
   ```sql
   SELECT product, SUM(quantity) AS total_qty, SUM(quantity * price) AS revenue
   FROM sales
   GROUP BY product;
