
-- PROJECT: HR Analytics
-- Query 1: Employee summary

SELECT
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Employment_Status = 'Active' THEN 1 ELSE 0 END) AS Active_Employees,
    SUM(CASE WHEN Employment_Status = 'Exited' THEN 1 ELSE 0 END) AS Exited_Employees
FROM Employees;


-- Query 2: Department exit analysis

SELECT
    Department,
    COUNT(*) AS Total_Employees,
    SUM(CASE WHEN Employment_Status = 'Exited' THEN 1 ELSE 0 END) AS Exited_Employees,
    ROUND(
        100.0 * SUM(CASE WHEN Employment_Status = 'Exited' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS Exit_Percentage
FROM Employees
GROUP BY Department
ORDER BY Exit_Percentage DESC;


-- Query 3: Monthly exit trend

SELECT
    strftime('%Y-%m', date(
        substr(Exit_Date, 7, 4) || '-' ||
        substr(Exit_Date, 4, 2) || '-' ||
        substr(Exit_Date, 1, 2)
    )) AS Exit_Month,
    COUNT(*) AS Exited_Employees
FROM Employees
WHERE Employment_Status = 'Exited'
  AND Exit_Date IS NOT NULL
GROUP BY Exit_Month
ORDER BY Exit_Month;
