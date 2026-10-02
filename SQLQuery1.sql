CREATE TABLE Employees
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
    BasicSalary DECIMAL(10,2),
    HRA DECIMAL(10,2),
    DA DECIMAL(10,2),
    OtherAllowance DECIMAL(10,2),
    PF DECIMAL(10,2),
    ESI DECIMAL(10,2)
);