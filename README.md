# Customer-Churn-Prediction-Retention-Analytics-

An end-to-end data analytics project that simulates a real SaaS/OTT business environment and performs full-stack analysis using Python (Pandas, NumPy), SQL, and Power BI.
The goal is to understand customer churn, revenue loss, user engagement, retention patterns, and behavior segmentation.

## Overview

This project analyzes a subscription-based business using four datasets: customers, usage, payments, and churn.
It includes complete data cleaning, transformation, SQL analytics, exploratory analysis, and the creation of a Power BI dashboard for business insights.

This project demonstrates skills required for Data Analyst, Business Analyst, and Power BI Analyst roles.

**Dataset	Description**

1.customers.csv	Customer demographics, city, signup date, subscription plan

2.usage_data.csv	Monthly watch-time, activity score, pages viewed

3.payments.csv	Monthly subscription payment logs, plan, amount, payment status

4.churn.csv	Churned customers with churn date and churn reason.

## Tools & Technologies Used

1.Python (Pandas, NumPy)

2.Jupyter Notebook

3.MySQL / SQL

4.Power BI

5.Data Cleaning & EDA

6.DAX Measures

7.Visualization & Dashboard Design

## Steps Performed
**1. Data Loading & Cleaning (Python)**

Handled missing values, incorrect types, duplicates

Cleaned dates and standardized payment status

Engineered new fields: activity_score, tenure, last_active_month, revenue_per_user

**2. Data Transformation & Merging**

Joined all four datasets using common keys

Created consolidated master table for modeling & SQL analysis

**3. Exploratory Data Analysis (EDA)**

Identified trends in engagement, payment behavior, and plan usage

Visualized churners vs non-churners

Analyzed behavioral patterns leading to churn

**4. SQL Analysis**

Monthly churn rate

Customer retention cohorts

Revenue loss due to churn

City-wise & plan-wise churn

High-risk customer detection

Payment failure impact on churn

**5. Power BI Dashboard**

Built a fully interactive dashboard featuring:

KPIs: Total Users, Churn %, MRR, Revenue Loss

Churn trend over months

Plan-wise churn & revenue

City segmentation

Behavior-based churn (activity scores, payment failures)

DAX for advanced metrics: churn rate, LTV, active user rate

Dashboard Preview

![Alt text of the image](https://github.com/singh-anuragg/Customer-Churn-Prediction-Retention-Analytics-/blob/main/Screenshot%202025-11-29%20150142.png)

## Key Insights

Customers with low activity scores showed 60% higher churn rate

Payment failure users were 3× more likely to churn

Premium users had the highest retention, Basic users the lowest

Churn peaked in month 5–6 after signup

Gurugram & Bengaluru showed highest churn, Mumbai the lowest
