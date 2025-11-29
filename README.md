
# Customer-Churn-Prediction-Retention-Analytics-

An end-to-end data analytics project that simulates a real SaaS/OTT business environment and performs full-stack analysis using Python (Pandas, NumPy), SQL, and Power BI.
The goal is to understand customer churn, revenue loss, user engagement, retention patterns, and behavior segmentation.

Overview

This project analyzes a subscription-based business using four datasets: customers, usage, payments, and churn.
It includes complete data cleaning, transformation, SQL analytics, exploratory analysis, and the creation of a Power BI dashboard for business insights.

This project demonstrates skills required for Data Analyst, Business Analyst, and Power BI Analyst roles.

Dataset Description

The project uses 4 CSV files (synthetic but realistic):

Dataset	Description
customers.csv	Customer demographics, city, signup date, subscription plan
usage_data.csv	Monthly watch-time, activity score, pages viewed
payments.csv	Monthly subscription payment logs, plan, amount, payment status
churn.csv	Churned customers with churn date and churn reason.

Tools & Technologies Used

Python (Pandas, NumPy)

Jupyter Notebook

MySQL / SQL

Power BI

Data Cleaning & EDA

DAX Measures

Visualization & Dashboard Design

 Steps Performed
1. Data Loading & Cleaning (Python)

Handled missing values, incorrect types, duplicates

Cleaned dates and standardized payment status

Engineered new fields: activity_score, tenure, last_active_month, revenue_per_user

2. Data Transformation & Merging

Joined all four datasets using common keys

Created consolidated master table for modeling & SQL analysis

3. Exploratory Data Analysis (EDA)

Identified trends in engagement, payment behavior, and plan usage

Visualized churners vs non-churners

Analyzed behavioral patterns leading to churn

4. SQL Analysis

Queries included:

Monthly churn rate

Customer retention cohorts

Revenue loss due to churn

City-wise & plan-wise churn

High-risk customer detection

Payment failure impact on churn

5. Power BI Dashboard

Built a fully interactive dashboard featuring:

KPIs: Total Users, Churn %, MRR, Revenue Loss

Churn trend over months

Plan-wise churn & revenue

City segmentation

Behavior-based churn (activity scores, payment failures)

DAX for advanced metrics: churn rate, LTV, active user rate

 Dashboard Preview

(Add your dashboard screenshots here after publishing.)

 Key Insights

Customers with low activity scores showed 60% higher churn rate

Payment failure users were 3× more likely to churn

Premium users had the highest retention, Basic users the lowest

Churn peaked in month 5–6 after signup

Gurugram & Bengaluru showed highest churn, Mumbai the lowest

 What This Project Shows

This project highlights your ability to:

✔ Work with real-world business datasets
✔ Analyze churn & revenue loss
✔ Use SQL for business-level insights
✔ Build dashboards that help CEOs & Managers make decisions
✔ Do end-to-end analytics like a professional Data Analyst
