USE BankPayrollDB;
GO

CREATE TABLE dbo.Employees
(
    EmployeeID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeName VARCHAR(100) NOT NULL,
    Gender VARCHAR(10),
    DateOfBirth DATE,
    DateOfJoining DATE,
    Department VARCHAR(100),
    Designation VARCHAR(100),
    Branch VARCHAR(100),
    Phone VARCHAR(15),
    Email VARCHAR(100),
    BasicSalary DECIMAL(18,2),
    HRA DECIMAL(18,2),
    DA DECIMAL(18,2),
    OtherAllowance DECIMAL(18,2),
    PF DECIMAL(18,2),
    ESI DECIMAL(18,2)
);


USE BankPayrollDB;

SELECT * FROM dbo.Employees;


USE BankPayrollDB;

CREATE TABLE Payroll
(
    PayrollID INT IDENTITY(1,1) PRIMARY KEY,
    EmployeeID INT NOT NULL,
    PayrollMonth VARCHAR(20) NOT NULL,
    BasicSalary DECIMAL(18,2),
    HRA DECIMAL(18,2),
    DA DECIMAL(18,2),
    OtherAllowance DECIMAL(18,2),
    GrossSalary DECIMAL(18,2),
    PF DECIMAL(18,2),
    ESI DECIMAL(18,2),
    NetSalary DECIMAL(18,2),
    PaymentDate DATE
);

USE BankPayrollDB;

SELECT * FROM Payroll;
