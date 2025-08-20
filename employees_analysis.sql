-- 1. Fetch top 3 highest salaries
SELECT EmpName, Salary
FROM Employees
ORDER BY Salary DESC
LIMIT 3;

-- 2. Find employees who joined after Jan 1, 2022
SELECT EmpName, JoiningDate
FROM Employees
WHERE JoiningDate > '2022-01-01';

-- 3. Find average salary by department
SELECT DeptID, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY DeptID;

-- 4. Fetch employees with salary greater than 60,000
SELECT EmpName, Salary
FROM Employees
WHERE Salary > 60000;

-- 5. Get department-wise highest salary
SELECT DeptID, EmpName, Salary
FROM Employees e
WHERE Salary = (
    SELECT MAX(Salary) FROM Employees WHERE DeptID = e.DeptID
);
