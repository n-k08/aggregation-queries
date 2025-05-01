CREATE TABLE online_sales (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

INSERT INTO online_sales (order_id, order_date, amount, product_id) VALUES
(101, '2023-01-15', 150.00, 1),
(102, '2023-01-20', 200.00, 2),
(103, '2023-02-05', 175.00, 3),
(104, '2023-02-15', 300.00, 1),
(105, '2023-03-10', 250.00, 2),
(106, '2023-03-20', 180.00, 3),
(107, '2023-04-01', 220.00, 1),
(108, '2023-04-18', 260.00, 2),
(109, '2023-05-03', 310.00, 3),
(110, '2023-05-22', 400.00, 1);

SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    online_sales
WHERE 
    order_date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY 
    EXTRACT(YEAR FROM order_date), 
    EXTRACT(MONTH FROM order_date)
ORDER BY 
    year, month;


