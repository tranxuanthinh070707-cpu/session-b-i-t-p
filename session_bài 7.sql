-- Tạo cơ sở dữ liệu
CREATE DATABASE CompanyDB;

-- Sử dụng cơ sở dữ liệu vừa tạo
USE CompanyDB;

-- Tạo bảng Employees
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50)
);

-- Sử dụng cơ sở dữ liệu CompanyDB
USE CompanyDB;

-- Thêm cột HireDate (ngày tuyển dụng)
ALTER TABLE Employees
ADD COLUMN HireDate DATE;

-- Thêm cột Salary (mức lương)
ALTER TABLE Employees
ADD COLUMN Salary INT;

INSERT INTO Employees (FirstName, LastName, HireDate, Salary)
VALUES
('Minh', 'Nguyen', '2023-01-15', 8000.00),
('Hoa', 'Tran', '2023-03-10', 7500.00),
('Tuan', 'Le', '2024-05-20', 9000.00);

SELECT * FROM Employees;

UPDATE Employees
SET Salary = 4800
WHERE EmployeeID = 2;

UPDATE Employees
SET HireDate = '2021-08-01'
WHERE FirstName = 'David';

SELECT * FROM Employees;

DELETE FROM Employees
WHERE EmployeeID = 1;

DELETE FROM Employees
WHERE Salary < 5000;

SELECT * FROM Employees;

SELECT * FROM Employees;

SELECT * FROM Employees
WHERE Salary > 5000;

SELECT * FROM Employees
ORDER BY HireDate DESC;

ALTER TABLE Employees
ADD COLUMN Department VARCHAR(50);


UPDATE Employees SET Department = 'Sales' WHERE EmployeeID = 1;
UPDATE Employees SET Department = 'IT' WHERE EmployeeID = 2;
UPDATE Employees SET Department = 'HR' WHERE EmployeeID = 3;
UPDATE Employees SET Department = 'Sales' WHERE EmployeeID = 4;


SELECT Department, COUNT(*) AS SoLuongNhanVien
FROM Employees
GROUP BY Department;


SELECT Department, AVG(Salary) AS LuongTrungBinh
FROM Employees
GROUP BY Department;


SELECT Department, AVG(Salary) AS LuongTrungBinh
FROM Employees
GROUP BY Department
HAVING AVG(Salary) > 5000;
