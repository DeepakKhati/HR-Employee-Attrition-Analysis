-- Business Insights

-- Remember SQL execution order:
-- FROM → WHERE → GROUP BY → SELECT → ORDER BY
-- Check attrition split

SELECT Attrition, COUNT(*) AS total
FROM hr_attrition
GROUP BY Attrition;


SELECT SUM(CASE
 WHEN Attrition = 'Yes'
	THEN 1
    ELSE 0
    END)
AS employees_left, 
ROUND(SUM(CASE 
			WHEN attrition ='Yes'
            THEN 1 
            ELSE 0 
            END)*100/COUNT(*),2) AS attrition_rate
FROM hr_attrition;


-- Which Department has highest attrition

SELECT Department,  COUNT(*) AS total_employees
FROM hr_attrition
GROUP BY Department;

SELECT 
    Department,
    COUNT(*) AS total_employees,
    SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) AS employees_left,
    ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS attrition_rate
FROM hr_attrition
GROUP BY Department
ORDER BY attrition_rate DESC;


-- Average month income by department

SELECT Department, ROUND(AVG(MonthlyIncome), 2) AS avg_salary
FROM hr_attrition 
GROUP BY department 
ORDER BY avg_salary DESC;


-- Which job has highest Attrition rate

SELECT 
	JobRole, 
    COUNT(*) AS Total_Employee,
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS Employee_left,
	ROUND(SUM(CASE WHEN Attrition = 'Yes' THEN 1 ELSE 0 END) * 100 / COUNT(*), 2) AS attrition_rate
    FROM hr_attrition 
    GROUP BY JobRole 
    ORDER BY attrition_rate DESC;
    

-- Do employyes who travel frequently leave more

SELECT 
	BusinessTravel, 
    COUNT(*) AS Total_Employee, 
    SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS Employee_Left, 
    ROUND(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END)* 100/ COUNT(*),2) AS attrition_rate
    FROM hr_attrition 
    GROUP BY BusinessTravel
    ORDER BY attrition_rate DESC;
    
    
-- Average age of employees who left vs stayed

SELECT Attrition, 
	ROUND(AVG(age),2) AS Avg_Age
    FROM hr_attrition 
    GROUP BY attrition 
    ORDER BY Avg_Age DESC;