-- SELECT * FROM customer_churn.`bank customer churn prediction`;

-- Q1. What is the overall % churn rate in the dataset?
-- (Shows the percentage of customers leaving vs. staying.)
select 
    round(100*(sum(case when churn = '1' then 1 else 0 end)/count(*)),2) as has_churned,
    round(100*(sum(case when churn = '0' then 1 else 0 end)/count(*)),2) as not_churned
FROM customer_churn.`bank customer churn prediction`;
-- findings
-- 20.37% of customers in the dataset has churned
-- 79.63% of customers in the dataset has not churned

-- Q2. Which country has the highest churn rate?
-- (Compare churn across France, Germany, and Spain.)
SELECT
	country,
	round(100*sum(case when churn = 1 then 1 else 0 end) / count(*), 2) as highest_churn_rate
FROM customer_churn.`bank customer churn prediction`
group by 1
order by 2 desc;
-- findings
-- Germany has the highest churn rate of 32.44, followed by Spain with 16.67 and then France with 16.15

-- Q3. Does age influence churn?
-- (Check if younger or older customers leave more often.)
SELECT
	min(age) as min_age,
    max(age) as max_age
FROM customer_churn.`bank customer churn prediction`;
-- minumum age is 18 and maximum age is 92

SELECT
    case 
        when age between 18 and 28 then '18-28'
        when age between 29 and 39 then '29-39'
        when age between 40 and 50 then '40-50'
        when age between 51 and 61 then '51-61'
        else '62+'
    end as age_group,
    count(*) as total_customers,
    sum(case when churn = 1 then 1 else 0 end) as churned_customers,
    round(100.0 * sum(case when churn = 1 then 1 else 0 end) / count(*), 2) as churn_rate_percentage
FROM customer_churn.`bank customer churn prediction`
group by age_group
order by churn_rate_percentage asc;
-- customers in the age group btw 51 and 61 have the highest churn rate percentage of 55.18.
-- customers in the age group btn 18-28 have the lowest churn rate percentage of 7.42.alter.
-- conclusion, the older the age group the higher the churn rate.

-- Q4. Do customers with higher credit scores churn less?
-- (Compare churn rates across credit score ranges.)
SELECT
    case 
        when credit_score < 500 then 'Poor (300-499)'
        when credit_score between 500 and 599 then 'Fair (500-599)'
        when credit_score between 600 and 699 then 'Good (600-699)'
        when credit_score between 700 and 799 then 'Very Good (700-799)'
        else 'Excellent (800+)'
    end as credit_score_range,
    count(*) as total_customers,
    sum(case when churn = 1 then 1 else 0 end) as churned_customers,
    round(100.0 * sum(case when churn = 1 then 1 else 0 end) / count(*), 2) as churn_rate_percentage
FROM customer_churn.`bank customer churn prediction`
group by credit_score_range
order by churn_rate_percentage asc;
-- customers with an excellent credit score of 800+ have a churn rate of 19.54% which is significantly less than those customers with poor credit scores

-- Q5. Does balance size affect churn?
-- (Look at churn rates for customers with zero balance vs. those with higher balances.)
SELECT
    case 
        when balance = 0 then 'Zero Balance'
        when balance between 1 and 50000 then 'Low Balance (1–50K)'
        when balance between 50001 and 100000 then 'Medium Balance (50K–100K)'
        else 'High Balance (100K+)'
    end as balance_group,
    count(*) as total_customers,
    sum(case when churn = 1 then 1 else 0 end) as churned_customers,
    round(100.0 * sum(case when churn = 1 then 1 else 0 end) / COUNT(*), 2) as churn_rate_percentage
FROM customer_churn.`bank customer churn prediction`
group by balance_group
order by churn_rate_percentage desc;
-- customers with zero balance had the lowest churn rate of 13.82%
-- customers with low balance had the highest churn rate of 34.67%
-- customers with high balance had the churn rate of 25.23%
-- customers with medium balance had the churn rate of 19.88%




























