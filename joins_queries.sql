-- Example tables: Departments
CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(100)
);

INSERT INTO Departments (DeptID, DeptName) VALUES
(101, 'IT'),
(102, 'HR'),
(103, 'Finance');

-- INNER JOIN: Employees with Department names
SELECT e.EmpName, d.DeptName, e.Salary
FROM Employees e
INNER JOIN Departments d ON e.DeptID = d.DeptID;

-- LEFT JOIN: All employees with departments (if exists)
SELECT e.EmpName, d.DeptName
FROM Employees e
LEFT JOIN Departments d ON e.DeptID = d.DeptID;
