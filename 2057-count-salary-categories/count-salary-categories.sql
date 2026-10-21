# Write your MySQL query statement below
-- select (case when income>50000 then "High Salary"
-- when income  (20000, 50000) then "Average Salary"
-- when income<20000 then "Low Salary" end) as category,
-- count(case when income then 1 else 0 end) as accounts_count
-- from Accounts
-- group by category;

SELECT "Low Salary" AS category, SUM(IF(income < 20000, 1, 0)) AS accounts_count FROM Accounts
UNION
SELECT "Average Salary" AS category, SUM(IF(income BETWEEN 20000 AND 50000, 1, 0)) AS accounts_count FROM Accounts
UNION
SELECT "High Salary" AS category, SUM(IF(income > 50000, 1, 0)) AS accounts_count FROM Accounts;