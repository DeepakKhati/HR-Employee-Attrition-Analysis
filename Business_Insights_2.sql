-- Business Insights Part-2

USE hr_analysis;

-- Which education field has most attrition

SELECT 
    EducationField,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY EducationField
ORDER BY attrition_rate DESC;


-- Rank employees within each department by monthly income

SELECT 
	emp_id, 
    Department, 
    JobRole, MonthlyIncome, 
    RANK() OVER(PARTITION BY Department ORDER BY MonthlyIncome DESC) AS Salary_Ran 
    FROM hr_Attrition;
    

-- Find departments where average salary is below company average using CTE

WITH Company_avg AS (
	SELECT AVG(MonthlyIncome) AS overall_Avg
    FROM hr_attrition
),
dept_Avg AS (
	SELECT Department,
	AVG(MonthlyIncome)  AS dept_avg_salary
    FROM hr_attrition
    GROUP BY department
)
SELECT Department, dept_avg_salary, overall_Avg
FROM dept_Avg, Company_Avg 
WHERE dept_avg_salary < overall_avg;


-- Top 3 highest paid employees in each job role

WITH ranked_employees AS (
	SELECT emp_id, JobRole, Department, MonthlyIncome, 
    RANK() OVER(PARTITION BY JobRole ORDER BY MonthlyIncome DESC) AS salary_Rank
FROM hr_attrition
)
SELECT * FROM ranked_employees 
WHERE salary_rank <=3
ORDER BY JobRole, salary_Rank;