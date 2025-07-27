# Data-Driven Analysis for User Behavior, Fraud Detection, and Revenue Insights
 
**Overview** \
This project presents a comprehensive analysis of user transaction and engagement data to extract actionable business insights. The primary goals were to understand user retention patterns, develop a system for detecting fraudulent activity, and measure the financial impact of different user acquisition strategies. The analysis was performed using a combination of Python for data manipulation and statistical analysis, and SQL for querying and identifying specific transaction patterns.

Tech Stack
Languages: Python, SQL (MySQL)

Libraries:

Python: Pandas, Matplotlib, Seaborn, Scikit-learn

Database: MySQL Workbench

**Problems Addressed & Analysis Performed**\
This project tackled six distinct business problems:

1. Transaction Data Analysis

Goal: Understand user behavior following their first transaction.

Analysis: Calculated key retention metrics, including the average time to a second transaction (1.6 days), user retention rate, and average subsequent transaction value.

2. High-Value Transaction Identification

Goal: Flag transactions that are significantly higher than a user's normal spending pattern.

Analysis: Used SQL window functions to identify and report transactions that were at least twice the value of the user's previous three-transaction average.

3. Fraudulent Wallet Activity Detection

Goal: Identify users whose wallet activity deviates significantly from the norm.

Analysis: Developed a Z-score based model in Python to score and rank users by how anomalous their transaction behavior was, flagging potential bonus abuse or money laundering.

4. User Sentiment Analysis

Goal: Extract insights from user upvote and downvote data on offers.

Analysis: Quantified overall user sentiment (95.6% upvote rate) and identified the best and worst-performing offers to provide data-driven recommendations.

5. Revenue Per User (RPU) Comparison

Goal: Measure the financial impact of the user referral program.

Analysis: Calculated and visualized the RPU for referred vs. organic users to determine which acquisition channel yielded more valuable customers.

6. Location Discrepancy Detection

Goal: Find users whose click activity originates from a different country than their signup country.

Analysis: Integrated multiple datasets to create a unified user profile and flagged accounts with geographical inconsistencies, indicating potential VPN use or account takeover.
