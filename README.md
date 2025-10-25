# 🏦 INTRODUCTION TO A BANK CUSTOMER CHURN DATASET

In this project, I sourced a dataset for ABC Multistate Bank from Kaggle, which will be used to predict the likelihood of a customer churning. I take the role of an analyst who the bank hires to help understand customer loyalty, retention strategy, and risk prediction:

Link to dataset: https://www.kaggle.com/datasets/gauravtopre/bank-customer-churn-dataset?select=Bank+Customer+Churn+Prediction.csv

## UNDERSTANDING THE PROBLEM

In terms of business implications, are customers from certain regions churning more? Are customers who don’t have credit cards churning? Is the bank losing premium clients?

## KEY QUESTIONS

1. What is the overall % churn rate in the dataset?

→Shows the percentage of customers leaving vs. staying.

→Business implication: Helps the bank understand the size of the churn problem.


2. Which country has the highest churn rate?

→Compare churn across France, Germany, and Spain.

→Business implication: Reveals regional differences — the bank may need different retention strategies by country.


3. Does age influence churn?

→Check if younger or older customers leave more often.


→Business implication: Age segments may need different products (e.g., digital banking for younger clients, retirement planning for older ones).


4. Do customers with higher credit scores churn less?


→Compare churn rates across credit score ranges.


→Business implication: High-credit customers are often more profitable; losing them has a bigger impact.


5. Does balance size affect churn?


→Look at churn rates for customers with zero balance vs. those with higher balances.


→Business implication: Customers not actively using their accounts (zero balance) may be disengaged and at risk of leaving.


## SUMMARY, FINDINGS, RECOMMENDATIONS

### 1. Overall Churn Rate

→20.37% of customers have churned, while 79.63% have stayed.

→This indicates that approximately 1 in 5 customers leave the company, a moderately high churn rate that warrants investigation into customer satisfaction and engagement.

### 2. Churn by Country

→Germany has the highest churn rate (32.44%), followed by Spain (16.67%) and France (16.15%).

→This suggests that German customers are twice as likely to churn compared to those in France and Spain.

→Possible factors could include differences in service quality, customer expectations, or localized competition.

### 3. Churn by Age

→Older customers churn more often:

→Ages 51–61 show the highest churn rate (55.18%).

→Ages 18–28 show the lowest churn rate (7.42%).

→This trend indicates that as age increases, the likelihood of churn also increases — potentially due to shifting financial priorities, retirement transitions, or lower digital engagement.

### 4. Churn by Credit Score

→Customers with higher credit scores churn less:

→Excellent (800+) credit score customers have a churn rate of 19.54%, which is significantly lower than customers with poor (300–499) scores.

→This implies that financially stable and creditworthy customers tend to be more loyal and consistent.

### 5. Churn by Balance Size

→The relationship between balance and churn shows an interesting pattern:

→Low Balance (1–50K) customers have the highest churn rate (34.67%).

→Zero Balance customers surprisingly have the lowest churn rate (13.82%).

→Medium (50K–100K) and High (100K+) balance groups show moderate churn rates (19.88% and 25.23% respectively).

→This suggests that customers with small balances may feel less invested or engaged with the company, while zero-balance customers could represent dormant or low-activity accounts that haven’t formally churned yet.

## Overall Takeaways

1. Target High-Risk Segments: Focus retention efforts on German customers, older age groups (50+), and low-balance customers. Use personalized engagement campaigns, loyalty rewards, or targeted communication to address their needs.

2. Improve Financial Engagement: Encourage low-balance customers to maintain higher balances by offering incentives such as better interest rates, account perks, or rewards programs.

3. Strengthen Relationships with High-Value Customers: Retain high-credit-score and medium/high-balance customers through premium services, relationship management, and exclusive offers.

4. Country-Specific Strategies: Investigate why Germany experiences higher churn — consider customer feedback, competitive pricing, or service satisfaction surveys specific to that market.

5. Age-Based Personalization: For older customers, simplify digital services and enhance customer support accessibility. For younger customers, maintain engagement through app-based experiences and value-driven messaging.

6. Monitor Dormant Accounts: Reassess zero-balance customers to determine if they’re truly active or need re-engagement campaigns to avoid silent churn.


