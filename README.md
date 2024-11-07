# Project 1 : Customer Churn analysis of a Bank

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


 # Project 2 : Insurance Business Overview Project Report (Two dashboards in this Project)

A brief description of what this project does and who it's for


1)Data Collection & Flat File Conversion

Gathered data from multiple sources related to policy distribution, claim amounts, customer demographics, and vehicle information.

Transformed these individual datasets into a flat file format to streamline data integration and ensure compatibility with Power BI.

This allowed for efficient data modeling and simplified complex relationships within the data.

2)Data Modeling with Star Schema

Implemented a Star Schema design to organize data with a central fact table (Policy and Claim Information) linked to multiple dimension tables (e.g., State, Gender, Car Brand, Policy Details).

This structure provided a clear, logical framework for analyzing premium collections, claims, and customer demographics, optimizing the performance of the Power BI dashboard.

3)Metrics and KPI Definitions

Defined key metrics critical to assessing business performance, such as:
1)Policy Numbers (1002 policies)
2)Total Premium Collected ($1.26M)
3)Total Claim Amount ($53M)
4)Capital Gains/Losses ($25M gains and $27M losses)
5)Policy Deductibles ($1M)
6)Property Claims ($7M)
7)Dashboard Visualizations and Analysis

4)Policy Distribution by State and Gender:

Ohio, Illinois, and Indiana are the primary states, with Ohio having the highest distribution (354 policies).

Policy distribution by gender shows a near-equal split, with slightly more policies held by females (537) than males (465).

1)Annual Premium Collected by State:
Ohio led in premium collection ($447K), followed by Illinois ($424K) and Indiana ($389K).
2)Claim Amount Analysis by State:
Claims were highest in Ohio ($18.6M), followed by Illinois ($17.9M) and Indiana ($16.4M), indicating potential areas for claim cost optimization.
3)Policy Distribution by Car Brand:
Dodge, Saab, and Subaru have the highest policy counts among car brands, each with 80 policies. Honda has the lowest count with 55 policies, providing insights into customer preferences.

4)Combined Single Limit by State:

A breakdown of single policy limits by state shows variance, with Illinois holding higher limits for the 250/500 category, indicating diverse policy structures across regions.

5)Insights on Policy and Claim Trends

Policy Deductibles and Umbrella Limit: Ohio holds the highest policy deductibles ($0.41M), followed by Indiana and Illinois.

The umbrella limit is slightly higher in Illinois ($0.41M) than in Ohio ($0.38M), showing variations in deductible preferences among states.

Policy Distribution by Occupation:The analysis reveals that farming and machine operators represent the top and bottom occupations for policy distribution, providing potential for targeted marketing efforts.

6)Recommendations for Business Optimization

Based on the insights, strategies can be formed to optimize customer engagement, such as targeting regions with high premium collections and claim amounts for customer retention programs.

Address high claim regions like Ohio for cost management and refine deductible offerings based on state-specific trends.
Leverage customer demographic insights to tailor policies, promotions, and engagement efforts, especially for high-policy segments such as Dodge and Saab owners.

7)Dashboard Functionality and User Interaction

Filters for Year, Quarter, Month, Policy State, Gender, Age Category, and Model Category allow users to interactively explore data by specific dimensions, providing a customizable analysis experience.

The “Reset” button enables a quick return to the default view, enhancing usability for stakeholders exploring multiple scenarios.

8)Final Insights and Business Impact

This dashboard facilitates a comprehensive understanding of the insurance portfolio, policyholder demographics, and claim patterns.

It supports data-driven decisions, enabling more efficient claims processing, customer engagement, and strategic planning to boost profitability.


# Report on the Comprehensive Claims and Fraud Insights Dashboard 2

The Comprehensive Claims and Fraud Insights Dashboard by Acko provides an analytical overview of various incidents and fraud-related activities involving vehicle claims across different states in the U.S. The key metrics are summarized as follows:

1)Overall Statistics:

Fraud Reported: 247 cases
Police Reports Available: 316 cases
Total Bodily Injuries: 662 reported
Vehicle Claims: 38 million

2)Incident Types by State:

New York shows the highest number of incidents involving multi-vehicle collisions (119), parked car incidents (16), and single-vehicle collisions (112), alongside some vehicle thefts (15).
South Carolina follows closely with notable incidents across all categories.
West Virginia has significant single-vehicle collision claims (85) and a moderate amount of vehicle theft (28).

3)Collision Types:

Front Collisions: The highest number is reported in New York (85), followed by other states with varying figures.
Rear Collisions: South Carolina leads with 87 incidents, while others range between 32 and 78.
Side Collisions: Incidents peak in West Virginia (68) and remain significant in other states.

4)Total Vehicle Claims by Damage Type:

Major Damage: Ohio reports the highest at 99 claims, followed by Indiana and Illinois.
Minor Damage: Ohio again leads (126), with Illinois (116) and Indiana (112) closely trailing.
Total Loss: Ohio records the most (101), with Illinois and Indiana reporting slightly lower numbers.
Trivial Damage: Illinois (36) has higher numbers compared to Indiana (26) and Ohio (28).

5)Bodily Injuries by Policy State:

Illinois has a significant number of cases with two bodily injuries (123) and one bodily injury (95).
Indiana and Ohio also show high counts for both categories, with slight variations.

# Summary

This dashboard highlights states with high incidences of vehicle-related claims, showing varying risk levels and potential fraudulent activities. New York, South Carolina, and Ohio are notable for high incident rates. Rear and side collisions represent significant claim types, while bodily injuries remain a major aspect in Illinois and other key states. This data supports insights into regional risk factors and guides strategic decisions for claims management and fraud prevention.


# Project : 3 - E-Commerce Sales Analysis Project Report

A brief description of what this project does and who it's for

Overview: In this project, I developed a comprehensive E-Commerce Sales Analysis dashboard using Power BI. The primary objective was to provide in-depth insights into sales trends, customer demographics, and delivery performance, allowing for data-driven strategic decision-making. To achieve this, I transformed the source data into a flat-file format, optimizing it for efficient analysis and visualization. I also structured the data using a Snowflake Schema to facilitate comprehensive exploration of various dimensions and metrics.

Data Preparation: The initial data was converted into flat files to simplify data loading and transformation in Power BI. This step was critical for ensuring that the data was consistent, organized, and ready for analysis. By leveraging this structure, I was able to seamlessly integrate diverse data points and maintain high data quality throughout the development of the dashboard.

Dashboard Insights: The dashboard provides a multifaceted analysis of the business's performance, including customer behavior, regional sales, and profit trends:

1)Key Metrics:

Total Customers: 9,994
Revenue: $4.30 million
Profit: $286K
Total Quantity Sold: 38,000 units
Average Order Value: $429.98

2)Customer Analysis:

Region Breakdown: The Central region accounts for 32.05% of the customer base, followed by East (28.5%), West (23.24%), and South (16.21%).
Segment Analysis: The Consumer segment is the largest, with 5.2K customers, making up over 50% of the total. Corporate (3K customers) and Home Office (1.8K customers) follow.
3)Sales Analysis:

Yearly Trends: Sales peaked in 2016 at $2.47 million but showed a decline in subsequent years, with minimal sales recorded by 2019.
Sales by Sub-Category: Paper generated the highest sales at $2.19 million, while other sub-categories like phones ($330K) and storage ($220K) also contributed.

4)Category Analysis:

The top-selling category is Office Supplies, with over 6K units sold. Furniture and Technology follow, with 2.1K and 1.8K units sold, respectively.

5)Delivery Analysis:

Standard Class dominates with 78.15% of deliveries, indicating customer preference for economical shipping. Second Class and First Class deliveries account for 10.69% and 8.18%, respectively.

6)Profit Analysis:

Profit by Region: The West region leads in profitability at $108K, followed by the Central region ($92K) and East ($47K). The South region reports the lowest profit ($40K).
Yearly Profit Trends: Profits increased from $47K in 2016 to a peak of $92K in 2018, followed by a decline in 2019.
Strategic Recommendations: This dashboard reveals actionable insights that can guide strategic business decisions:

Inventory Management: Allocate more resources to high-demand categories such as Office Supplies and Paper.
Marketing Strategy: Target regions with lower sales, like the South, to boost revenue through targeted campaigns.
Delivery Options: Consider enhancing the Standard Class delivery option to maintain high customer satisfaction, while promoting faster shipping for premium customers.
Profit Improvement: Investigate factors contributing to lower profits in certain regions and adjust strategies to increase overall profitability.

# Conclusion: 
The E-Commerce Sales Dashboard effectively highlights customer preferences, sales trends, and delivery performance, allowing the company to enhance customer experience, optimize inventory management, and improve marketing strategies. This data-centric approach equips decision-makers with the insights needed for sustainable growth and profitability.









