-- Rank employees by salary
SELECT EmpName, Salary,
RANK() OVER (ORDER BY Salary DESC) AS SalaryRank
FROM Employees;

-- Department-wise top 2 salaries using ROW_NUMBER
SELECT EmpName, DeptID, Salary
FROM (
    SELECT EmpName, DeptID, Salary,
           ROW_NUMBER() OVER (PARTITION BY DeptID ORDER BY Salary DESC) AS rn
    FROM Employees
) t
WHERE rn <= 2;
