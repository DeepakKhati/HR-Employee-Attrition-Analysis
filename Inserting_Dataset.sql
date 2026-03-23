CREATE DATABASE hr_analysis;
USE hr_analysis;

CREATE TABLE hr_attrition (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    Age INT,
    Attrition VARCHAR(10),
    BusinessTravel VARCHAR(50),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(5),
    OverTime VARCHAR(5),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);
SET SQL_SAFE_UPDATES = 0;
DELETE FROM hr_attrition;
ALTER TABLE hr_attrition AUTO_INCREMENT = 1;
SET SQL_SAFE_UPDATES = 1;

SELECT COUNT(*) FROM hr_attrition;
SELECT * FROM hr_attrition LIMIT 10;

-- Check attrition split
SELECT Attrition, COUNT(*) AS total
FROM hr_attrition
GROUP BY Attrition;
