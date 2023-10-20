# Customer Lifetime Value (CLV) Analysis Project


## **Introduction**


This repository contains code and documentation for a Customer Lifetime Value (CLV) analysis project, driven by a growing recognition of the significance of cohort-based analysis. 

Cohort analysis provides a powerful lens through which to view the behavior of distinct groups of customers, helping businesses understand their unique journeys, preferences, and tendencies. This nuanced perspective allows for improved strategic decision-making in marketing, product development, and customer retention efforts. It's essential in today's data-driven landscape, where businesses are seeking ways to optimize their marketing campaigns, enhance customer experiences, and boost revenue.

The project will use data from the turing_data_analytics.raw_events table, and it is set in the context of the current week, which is assumed to be 2021-01-24 (the last weekly cohort available in the dataset).

 ## **Project Objectives**

This project aims to address the following objectives:

### 1. Inclusion of All Users
To provide a more holistic view of customer behavior, the project will extend its analysis beyond just purchasers. It will consider all users who have visited the website, aligning with marketing's broader view of user registrations.

### 2. Weekly Cohort Analysis
Recognizing that customer retention can vary over time, this project will focus on producing a weekly cohort-based analysis. It will investigate how long customers typically remain engaged with the ecommerce site, with an expectation that their engagement may not extend beyond 12 weeks.

   ## Task Details
This section outlines the specific tasks and steps involved in this Customer Lifetime Value (CLV) analysis project.

   ## Data Retrieval
The first step of the project involves retrieving the necessary data through SQL queries to extract data for weekly revenue divided by registrations. Given that the website lacks a distinct registration concept, I will use the first visit to the website as the equivalent of registration. The user_pseudo_id will be utilized to differentiate between users. Once the data is obtained, conditional formatting will be applied.

   ### Cohort Analysis and Visualization
The second phase revolves around cohort analysis and the visual representation of the findings. The key tasks are as follows:

  ### 1. Charting Growth of Revenue by Cohort
- Develop a chart illustrating the growth of revenue for different cohorts of registered users over time. Each cohort represents users who registered or visited the website within a specific week.
- Calculate the averages for each week, considering weeks since registration.

<img width="1266" alt="image" src="https://github.com/klavru/CLV/assets/128393456/a49fd458-6a57-43f7-a1ad-35391e09fe82">

 ### 2. Percentage Growth Calculation
- Calculate the percentage growth of revenue for each cohort over time, based on the average numbers calculated in the previous step.
- Present this data in a visual chart.

<img width="1266" alt="image" src="https://github.com/klavru/CLV/assets/128393456/194f5c31-833c-471c-98e5-1f1eacc09e2a">


 ## Revenue Prediction
The third task focuses on predicting missing data. In this context, missing data refers to revenue expectations from user cohorts in the future, particularly for the 12 weeks following registration. To achieve this, we will rely on the cumulative growth percentages calculated in the previous step.

<img width="1266" alt="image" src="https://github.com/klavru/CLV/assets/128393456/06682f7d-357e-4550-817e-be551a9e290b">

 ## Conclusion
 
In retrospect, the completion of this Customer Lifetime Value (CLV) analysis project has provided valuable insights and actionable recommendations based on past data and trends. The key findings and conclusions are as follows:

  ### Data Retrieval and Cohort Analysis
  
The data retrieval and cohort analysis phase enabled us to gain a comprehensive understanding of customer behavior. It addressed previous limitations by including all website visitors, not just purchasers, and provided a granular, weekly view of customer retention.

  ### Revenue Prediction
  
The prediction of missing data, especially revenue expectations for future weeks, was made possible by leveraging cumulative growth percentages. This aspect enhances our ability to estimate revenue for user cohorts with limited historical data.

  ### Final Results and Insights
  
The final results, particularly the chart displaying average cumulative revenue for the 12th week for all website visitors, offers a more comprehensive estimation of Customer Lifetime Value (CLV). This estimation encompasses all users, including those who did not make purchases. 
A notable insight from the analysis is that customers acquired between 2020-11-01 and 2020-12-12 brought in significantly more revenue, averaging $2.26. However, customers acquired during 2020-12-20 and 2021-01-16 generated considerably less revenue, only averaging $0.5. This atypical customer behavior, especially during the holiday season, raises questions about comparison shopping and alternative purchasing decisions. The stable web traffic during the holiday period, coupled with a substantial drop in revenue, indicates a potential shift in customer preferences. It's advisable to explore this further and consider whether the revenue data requires validation. It's possible that the customer acquisition channel in November 2020 was exceptionally effective, attracting more active visitors willing to spend.

 ## Recommendations
Based on the insights and findings from this analysis, we propose the following recommendations:

###  1. Marketing Campaign Evaluation

In the past, we observed a significant drop in both the number of customers and revenue between the weeks of 2020-12-13 and 2020-12-20. To avoid such declines in the future, it's crucial to evaluate and potentially adjust marketing campaigns during critical periods.
    
 ### 2. Continual Monitoring and Adaptation
 
The insights revealed fluctuations in user behavior and revenue. We recommend a dynamic approach to marketing and product strategies. Continual monitoring and adaptation to changing user patterns will be essential for maintaining growth.
    
  ### 3. ROI Assessment
  
To ensure that Return on Investment (ROI) is met, it is imperative to regularly assess and align average revenue per customer with ROI expectations. This alignment will help in optimizing marketing expenditure and maximizing returns.

### 4. CAC Break-Even Analysis

Conduct a detailed analysis to determine if the company is breaking even on Customer Acquisition Costs (CACs). Ensuring that the revenue generated from acquired customers covers the cost of acquisition is critical for sustainable growth.
By implementing these recommendations, the company can enhance its understanding of customer behavior, optimize marketing efforts, and maximize the value derived from its customer base. It's essential to keep monitoring and adapting to changing trends to ensure continued success in the highly dynamic world of e-commerce.

### 5. In-Depth Customer Behavior Analysis

Conduct a detailed analysis of customer behavior during the holiday season and the impact of customer acquisition channels. Investigate why customers acquired during the holiday season appear to spend less and consider whether they are exploring competitive options. This analysis will help in tailoring marketing strategies to align with customer preferences.


