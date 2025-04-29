-- Create the online_sales table
CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    product_id INTEGER,
    amount REAL
);

-- Insert sample data
INSERT INTO online_sales (order_id, order_date, product_id, amount) VALUES
(101, '2023-01-15', 1, 250.00),
(102, '2023-01-20', 2, 175.50),
(103, '2023-02-05', 3, 300.00),
(104, '2023-02-10', 2, 220.00),
(105, '2023-02-15', 1, 180.75),
(106, '2023-03-01', 1, 500.00),
(107, '2023-03-05', 4, 130.25),
(108, '2023-03-15', 2, 420.00),
(109, '2023-04-01', 3, 600.00),
(110, '2023-04-05', 2, 320.00),
(111, '2023-05-10', 1, 150.00),
(112, '2023-05-15', 4, 400.00),
(113, '2023-05-20', 2, 250.00);

-- a. Monthly Revenue and Order Volume
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;

-- b. Top 3 Months by Revenue
SELECT 
    strftime('%Y', order_date) AS year,
    strftime('%m', order_date) AS month,
    SUM(amount) AS total_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    total_revenue DESC
LIMIT 3;
