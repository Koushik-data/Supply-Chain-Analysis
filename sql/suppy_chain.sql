CREATE TABLE orders (
    order_id INT,
    order_date TIMESTAMP,
    shipping_date TIMESTAMP,
    sales NUMERIC,
    quantity INT,
    profit NUMERIC,
    category VARCHAR(100),
    product VARCHAR(255),
    actual_shipping_days INT,
    scheduled_shipping_days INT,
    delivery_status VARCHAR(50),
    late_risk INT,
    shipping_delay INT,
    month VARCHAR(10)
);

SELECT * FROM orders;

ALTER TABLE orders ADD PRIMARY KEY (order_id);

SELECT SUM(sales) AS total_sales FROM orders;

SELECT SUM(profit) AS total_profit FROM orders;

SELECT 
COUNT(*) FILTER (WHERE late_risk = 1) * 100.0 / COUNT(*) AS late_delivery_rate
FROM orders;

SELECT AVG(shipping_delay) FROM orders;

SELECT product, SUM(sales) AS revenue
FROM orders
GROUP BY product
ORDER BY revenue DESC
LIMIT 10;


SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS monthly_revenue
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;


SELECT 
    DATE_TRUNC('month', order_date) AS month,
    SUM(profit) AS monthly_profit
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;


WITH product_sales AS (
    SELECT 
        product,
        SUM(sales) AS revenue
    FROM orders
    GROUP BY product
),
ranked_products AS (
    SELECT 
        product,
        revenue,
        SUM(revenue) OVER (ORDER BY revenue DESC) AS cumulative_revenue,
        SUM(revenue) OVER () AS total_revenue
    FROM product_sales
)
SELECT 
    product,
    revenue,
    cumulative_revenue,
    total_revenue,
    (cumulative_revenue / total_revenue) AS cumulative_percent,   
    CASE 
        WHEN (cumulative_revenue / total_revenue) <= 0.7 THEN 'A'
        WHEN (cumulative_revenue / total_revenue) <= 0.9 THEN 'B'
        ELSE 'C'
    END AS abc_category
FROM ranked_products
ORDER BY revenue DESC;



WITH abc_data AS (
    SELECT 
        product,
        SUM(sales) AS revenue
    FROM orders
    GROUP BY product
),
ranked AS (
    SELECT *,
        SUM(revenue) OVER (ORDER BY revenue DESC) AS cum_rev,
        SUM(revenue) OVER () AS total_rev
    FROM abc_data
)
SELECT 
    CASE 
        WHEN cum_rev/total_rev <= 0.7 THEN 'A'
        WHEN cum_rev/total_rev <= 0.9 THEN 'B'
        ELSE 'C'
    END AS category,
    COUNT(*) AS product_count,
    SUM(revenue) AS total_revenue
FROM ranked
GROUP BY category;


SELECT 
    DATE_TRUNC('month', order_date) AS month,
    COUNT(order_id) AS total_orders
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month;

