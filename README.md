Customer Lifetime Value (CLV) Analysis Project


**Introduction**


This repository contains code and documentation for a Customer Lifetime Value (CLV) analysis project, driven by a growing recognition of the significance of cohort-based analysis. 
Cohort analysis provides a powerful lens through which to view the behavior of distinct groups of customers, helping businesses understand their unique journeys, preferences, and tendencies. This nuanced perspective allows for improved strategic decision-making in marketing, product development, and customer retention efforts. It's essential in today's data-driven landscape, where businesses are seeking ways to optimize their marketing campaigns, enhance customer experiences, and boost revenue.

The project will use data from the turing_data_analytics.raw_events table, and it is set in the context of the current week, which is assumed to be 2021-01-24 (the last weekly cohort available in the dataset).

**Project Objectives**
This project aims to address the following objectives:

1. Inclusion of All Users
To provide a more holistic view of customer behavior, the project will extend its analysis beyond just purchasers. It will consider all users who have visited the website, aligning with marketing's broader view of user registrations.

2. Weekly Cohort Analysis
Recognizing that customer retention can vary over time, this project will focus on producing a weekly cohort-based analysis. It will investigate how long customers typically remain engaged with the ecommerce site, with an expectation that their engagement may not extend beyond 12 weeks.

Task Details
This section outlines the specific tasks and steps involved in this Customer Lifetime Value (CLV) analysis project.

1. Data Retrieval
The first step of the project involves retrieving the necessary data through SQL queries to extract data for weekly revenue divided by registrations. Given that the website lacks a distinct registration concept, I will use the first visit to the website as the equivalent of registration. The user_pseudo_id will be utilized to differentiate between users. Once the data is obtained, conditional formatting will be applied.

2. Cohort Analysis and Visualization
Produce a chart that shows the growth of revenue by registered users in cohorts for 'n' weeks after registration. Include the calculation of averages for all week numbers (weeks since registration).

<img width="1266" alt="image" src="https://github.com/klavru/CLV/assets/128393456/a49fd458-6a57-43f7-a1ad-35391e09fe82">

Calculate percentage growth based on the average numbers and provide a chart illustrating this data.
4. Revenue Prediction
Use the previously calculated cumulative growth percentage to predict revenue for all 12 future weeks for each cohort. This prediction will help estimate revenue for cohorts where data is missing.
5. Final Results
Provide a chart that calculates the average of cumulative revenue for the 12th week for all users who have visited the website, including those who did not make purchases.
Insights
The project will also provide valuable insights based on the analysis:

After First Graph:
Investigate whether marketing campaigns were altered, as there is a significant decrease in the number of customers and revenue between weeks 2020-12-13 and 2020-12-20.
After the Last Graph:
Assess whether marketing campaigns were changed again, as there is a decrease in results between weeks 2020-12-13 and 2020-12-20.
Examine whether the return on investment (ROI) is met by checking whether the average revenue per customer aligns with ROI expectations.
Evaluate whether the company is breaking even on customer acquisition costs (CACs).
Conclusion
This project will provide a comprehensive view of customer behavior, cohort-based CLV, and predictions for future revenue. By addressing the manager's concerns and providing valuable insights, it will enable data-driven decision-making and a better understanding of the ecommerce site's performance.
