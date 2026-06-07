SELECT *
FROM CUSTOMER
LIMIT 10;
1.TOTAL APPLICATIONS
SELECT COUNT(*) AS Total_Applications
FROM CUSTOMER;
2.AVERAGE INCOME
SELECT AVG(income_annum) AS Average_Income
FROM CUSTOMER;
3.AVERAGE LOAN AMOUNT
SELECT AVG(loan_amount) AS Average_Loan_Amount
FROM CUSTOMER;
4.EDUCATION WISE LOAN APPLICATION
SELECT education,
       COUNT(*) AS Total_Applications
FROM CUSTOMER
GROUP BY education;
5.SELF EMPLOYED VSLOAN STATUS
SELECT self_employed,
       loan_status,
       COUNT(*) AS Total
FROM CUSTOMER
GROUP BY self_employed, loan_status;
6.Average CIBIL Score by Loan Status
SELECT loan_status,
       AVG(cibil_score) AS Avg_CIBIL
FROM CUSTOMER
GROUP BY loan_status;
7.Top 10 Applicants with Highest Income
SELECT loan_id,
       income_annum
FROM CUSTOMER
ORDER BY income_annum DESC
LIMIT 10;
8.Highest Loan Amount
SELECT MAX(loan_amount) AS Highest_Loan
FROM CUSTOMER;
9.Average Loan Amount by Education
SELECT education,
       AVG(loan_amount) AS Avg_Loan_Amount
FROM CUSTOMER
GROUP BY education;
10.Income Category Analysis
SELECT
CASE
    WHEN income_annum < 3000000 THEN 'Low Income'
    WHEN income_annum BETWEEN 3000000 AND 7000000 THEN 'Medium Income'
    ELSE 'High Income'
END AS Income_Category,
COUNT(*) AS Total_Applicants
FROM CUSTOMER
GROUP BY Income_Category;
