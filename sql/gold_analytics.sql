-- 1. State-wise Sales Summary
SELECT
    state,
    COUNT(customer_id) AS total_customers,
    SUM(purchase_amount) AS total_sales,
    AVG(purchase_amount) AS average_purchase
FROM sliver_cleaned_customers
GROUP BY state
ORDER BY total_sales DESC;


-- 2. Top Performing State
SELECT state, total_sales
FROM gold_state_sales
ORDER BY total_sales DESC
LIMIT 1;


-- 3. Top 3 States
SELECT *
FROM gold_state_sales
ORDER BY total_sales DESC
LIMIT 3;


-- 4. Sales Contribution Percentage
SELECT
    state,
    total_sales,
    ROUND(
        100.0 * total_sales / SUM(total_sales) OVER (),
        2
    ) AS sales_percentage
FROM gold_state_sales
ORDER BY sales_percentage DESC;


-- 5. Sales Per Customer
SELECT
    state,
    ROUND(total_sales / total_customers, 2)
        AS sales_per_customer
FROM gold_state_sales
ORDER BY sales_per_customer DESC;
