SET IDENTITY_INSERT [dbo].[Payroll] ON
INSERT INTO [dbo].[Payroll] ([PayrollID], [EmployeeID], [PayrollMonth], [BasicSalary], [HRA], [DA], [OtherAllowance], [GrossSalary], [PF], [ESI], [NetSalary], [PaymentDate]) VALUES (1, 1, N'2026-10', CAST(60000.00 AS Decimal(18, 2)), CAST(12000.00 AS Decimal(18, 2)), CAST(6000.00 AS Decimal(18, 2)), CAST(5000.00 AS Decimal(18, 2)), CAST(83000.00 AS Decimal(18, 2)), CAST(3000.00 AS Decimal(18, 2)), CAST(750.00 AS Decimal(18, 2)), CAST(79250.00 AS Decimal(18, 2)), N'2026-10-02')
SET IDENTITY_INSERT [dbo].[Payroll] OFF
