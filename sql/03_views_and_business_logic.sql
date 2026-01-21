CREATE VIEW vw_daily_revenue AS
SELECT
    DATE(order_date) AS day,
    SUM(quantity * unit_price) AS daily_revenue
FROM sales
GROUP BY DATE(order_date)
ORDER BY day;


SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(quantity * unit_price) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;


CREATE VIEW vw_monthly_revenue AS
SELECT
    DATE_FORMAT(order_date, '%Y-%m') AS sales_month,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY sales_month;
What this view does
Groups sales by month


WITH monthly_revenue AS (
    SELECT
        DATE_FORMAT(order_date, '%Y-%m') AS month,
        SUM(quantity * unit_price) AS revenue
    FROM sales
    GROUP BY DATE_FORMAT(order_date, '%Y-%m')
)
SELECT
    month,
    revenue,
    LAG(revenue) OVER (ORDER BY month) AS prev_month_revenue,
    (revenue - LAG(revenue) OVER (ORDER BY month))
        / LAG(revenue) OVER (ORDER BY month) * 100 AS growth_pct
FROM monthly_revenue;



SELECT
    customer_name,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY customer_name
ORDER BY total_revenue DESC;


CREATE VIEW vw_customer_revenue AS
SELECT
    customer_id,
    customer_name,
    SUM(quantity * unit_price) AS total_spent
FROM sales
GROUP BY customer_id, customer_name;


SELECT
    customer_name,
    SUM(quantity * unit_price) AS total_revenue
FROM sales
GROUP BY customer_name
ORDER BY total_revenue DESC
LIMIT 3;


SELECT
    customer_name,
    SUM(quantity * unit_price) / COUNT(DISTINCT order_id)
        AS avg_order_value
FROM sales
GROUP BY customer_name;



CREATE VIEW vw_average_order_value AS
SELECT
    order_id,
    order_date,
    SUM(quantity * unit_price) AS order_value
FROM sales
GROUP BY order_id, order_date;
