--- Simple SELECT:
SELECT * FROM dbo.Employees;


--- Filtering with WHERE:
SELECT * FROM dbo.Employees AS E
WHERE E.Department = 'IT';

--- Sorting with ORDER BY:
SELECT * FROM dbo.Employees AS E
ORDER BY E.HireDate ASC;

--- Aggregate functions:
SELECT AVG(Salary) as AverageSalary FROM Employees ;

--- JOIN on two tables:
SELECT E.Name, P.ProjectID
FROM Employees AS E
JOIN EmployeeProjects AS EP ON E.EmployeeID = EP.EmployeeID
JOIN Projects AS P ON EP.ProjectID = P.ProjectID;

--- Using GROUP BY and HAVING:
SELECT Department, SUM(Salary) AS TotalSalary
FROM Employees
GROUP BY Department
HAVING SUM(Salary) > 10000;

--- SUBQUERY:
SELECT Name, Salary
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary) FROM Employees
);

--- JOIN on multiple tables:
SELECT E.Name, P.ProjectID, EP.Role
FROM Employees AS E
JOIN EmployeeProjects AS EP ON E.EmployeeID = EP.EmployeeID
JOIN Projects AS P ON EP.ProjectID = P.ProjectID;

--- Complex query:
SELECT E.Name
FROM Employees AS E
LEFT JOIN EmployeeProjects AS EP ON E.EmployeeID = EP.EmployeeID
WHERE EP.ProjectID IS NULL;