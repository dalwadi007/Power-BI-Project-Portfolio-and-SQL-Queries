# Project 1 : Customer Churn analysis

In this project, I developed an interactive Power BI dashboard that employed a Star Schema for dimensional modeling, enabling an effective analysis of customer churn across multiple factors such as bank balance, gender, region, profession, and age. By visualizing key metrics such as churn rate, the dashboard allowed stakeholders to identify high-risk segments, aiding in the development of targeted retention strategies and promotional offers. The insights generated from this analysis were instrumental in formulating data-driven decisions to improve customer retention.

Steps Followed in Customer Churn Analysis Project

1)Data Collection & Flat File Conversion : Collected customer data from multiple raw data files related to customer demographics, transactions, account status, and credit card status. Converted these raw files into a flat file format to unify the data, making it easier to analyze in Power BI.

2)Data Modeling using Star Schema : Designed a Star Schema model with a central fact table (Customer Churn data) linked to dimension tables (e.g., Customer Demographics, Credit Status, Geography).This schema enabled efficient querying and analysis, ensuring that the dashboard could handle complex calculations.

3)Data Cleaning and Preparation :Cleaned the data to handle missing values, duplicates, and inconsistencies.Standardized columns and defined data types to ensure compatibility with Power BI’s DAX functions.

4)Developing Key Metrics and KPIs : Defined important metrics such as Total Customers, Active and Inactive Customers, Credit Card Holders, Non-Credit Card Holders, and Churn Rate.Calculated churn rate (20.4%) to quantify the percentage of customers at risk of leaving.

5)Building the Power BI Dashboard:Created an interactive Power BI dashboard with various visualizations, including: Total Customers by Year and Active Category (bar chart) Exit Customers by Month and Previous Month Comparison (line chart) Exit Customer Breakdown by Gender and Credit Score Range (pie charts)

6)Detailed Monthly Churn Analysis :Analyzed customer exits on a monthly basis to identify trends:Found the highest churn in November (307 exits), which was a 429.31% increase compared to February (58 exits).These insights highlighted seasonal trends, allowing for targeted retention strategies.

7)Demographic Breakdown:Analyzed exit customer data by demographic factors, showing gender distribution (e.g., 44.08% female and 55.92% male) and credit card status (30.09% credit card holders vs. 69.91% non-credit card holders).These breakdowns helped identify high-risk segments for churn.

8)Actionable Insights and Recommendations.

Presented key insights to stakeholders: 1)High churn among non-credit card holders and male customers. Seasonal trends, especially a spike in exits in November. 2)Recommended targeted promotional offers and personalized retention strategies to engage high-risk customer segments.

9)Dashboard Testing and Optimization:Conducted testing to ensure accuracy of data calculations and functionality of filters. Optimized the dashboard for better performance by adjusting query structures and refining visuals.

10)Final Review and Deployment:Reviewed the dashboard with stakeholders to gather feedback.Deployed the final dashboard, allowing teams to use it for real-time insights and data-driven decision-making.
