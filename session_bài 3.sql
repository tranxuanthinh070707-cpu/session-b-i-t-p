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



