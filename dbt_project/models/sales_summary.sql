{{ config(materialized='table') }}

SELECT
    order_date,
    COUNT(DISTINCT invoice_no) AS total_orders,
    SUM(total_revenue) AS total_revenue
FROM dbt_schema.nonexistent_table
GROUP BY order_date
ORDER BY order_date
