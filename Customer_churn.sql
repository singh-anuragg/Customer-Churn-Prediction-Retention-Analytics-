create database churn_analysis;
use churn_analysis;
CREATE TABLE customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    age INT,
    gender VARCHAR(10),
    city VARCHAR(50),
    signup_date DATE,
    subscription_type VARCHAR(20)
);
CREATE TABLE usage_data (
    customer_id VARCHAR(20),
    date DATE,
    minutes_watched INT,
    pages_viewed INT,
    activity_score FLOAT,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE payments (
    customer_id VARCHAR(20),
    payment_date DATE,
    amount INT,
    plan VARCHAR(20),
    status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE churn (
    customer_id VARCHAR(20),
    churn_date DATE,
    churn_reason VARCHAR(100),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


select * from churn;
select * from customers;
select * from usage_data;
select * from payments;

use churn_analysis;


 
-- monthly churn rate: churned customers / active customers that month


WITH monthly_active AS (
    SELECT 
        customer_id,
        DATE_FORMAT(date, '%Y-%m-01') AS month
    FROM usage_data
    GROUP BY customer_id, DATE_FORMAT(date, '%Y-%m-01')
),
monthly_churn AS (
    SELECT 
        customer_id,
        DATE_FORMAT(churn_date, '%Y-%m-01') AS churn_month
    FROM churn
)
SELECT 
    ma.month,
    COUNT(DISTINCT mc.customer_id) AS churn_count,
    COUNT(DISTINCT ma.customer_id) AS active_count,
    ROUND(
        100 * COUNT(DISTINCT mc.customer_id) 
        / NULLIF(COUNT(DISTINCT ma.customer_id), 0),
        2
    ) AS churn_pct
FROM monthly_active ma
LEFT JOIN monthly_churn mc
    ON ma.customer_id = mc.customer_id
    AND ma.month = mc.churn_month
GROUP BY ma.month
ORDER BY ma.month;


-- Churn rate by plan ?

SELECT
  c.subscription_type,
  COUNT(DISTINCT ch.customer_id) AS churners,
  COUNT(DISTINCT c.customer_id) AS total_customers,
  ROUND(100.0 * COUNT(DISTINCT ch.customer_id) / NULLIF(COUNT(DISTINCT c.customer_id),0),2) AS churn_prcnt
FROM customers c
LEFT JOIN churn ch ON c.customer_id = ch.customer_id
GROUP BY c.subscription_type
ORDER BY churn_pct DESC;


-- Are late payments predictive of churn?
SELECT
  c.subscription_type,
  SUM(CASE WHEN p.status IN ('Late','Failed') THEN 1 ELSE 0 END) AS late_count,
  COUNT(DISTINCT c.customer_id) AS customers,
  ROUND(100.0 * SUM(CASE WHEN p.status IN ('Late','Failed') THEN 1 ELSE 0 END) / NULLIF(COUNT(DISTINCT c.customer_id),0),2) AS pct_with_late_payments
FROM customers c
LEFT JOIN payments p ON c.customer_id = p.customer_id
LEFT JOIN churn ch ON c.customer_id = ch.customer_id
WHERE ch.customer_id IS NOT NULL
GROUP BY c.subscription_type;








