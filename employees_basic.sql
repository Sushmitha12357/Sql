-- Create a table for Employees
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    DeptID INT,
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

-- Insert sample data
INSERT INTO Employees (EmpID, EmpName, DeptID, Salary, JoiningDate) VALUES
(1, 'Alice', 101, 60000, '2022-01-10'),
(2, 'Bob', 102, 55000, '2022-02-15'),
(3, 'Charlie', 101, 70000, '2021-12-01'),
(4, 'David', 103, 50000, '2023-03-05'),
(5, 'Eve', 102, 80000, '2021-06-20');

-- Fetch all employees
SELECT * FROM Employees;
