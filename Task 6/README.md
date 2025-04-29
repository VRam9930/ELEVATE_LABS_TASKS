# Task 6: Sales Trend Analysis Using Aggregations

## 📊 Objective
Analyze monthly revenue and order volume using SQL on a sample `online_sales` dataset.

## 📁 Dataset Structure
The table used:
- `order_id` (INTEGER)
- `order_date` (DATE)
- `product_id` (INTEGER)
- `amount` (REAL)

## 🔧 Tasks Performed
- Calculated **monthly total revenue** using `SUM(amount)`
- Counted **unique orders** using `COUNT(DISTINCT order_id)`
- Grouped results by **year and month**
- Displayed **top 3 months** by total revenue

## 🧪 SQL Functions Used
- `strftime('%Y', order_date)` and `strftime('%m', order_date)` (for grouping by year/month)
- `SUM()`, `COUNT(DISTINCT)`
- `GROUP BY`, `ORDER BY`, `LIMIT`

## 💡 Output Example
| Year | Month | Total Revenue | Order Volume |
|------|--------|----------------|----------------|
| 2023 | 01     | ₹425.50        | 2             |
| 2023 | 02     | ₹700.75        | 3             |

## ✅ Tools Used
- SQLite (via SQLiteOnline.com)

## 📌 Notes
- `EXTRACT()` was replaced by `strftime()` for compatibility with SQLite.
