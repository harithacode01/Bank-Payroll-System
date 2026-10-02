<%@ Page Title="About"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="About.aspx.cs"
    Inherits="BankPayrollSystem.About" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <h2>About Employee Payroll System</h2>

        <hr />

        <h3>Employee Payroll Management System</h3>

        <p>
            The Employee Payroll System is a web-based application
            developed to manage employee information and salary
            processing efficiently.
        </p>

        <br />

        <h3>Purpose of the System</h3>

        <p>
            This system helps an organization maintain employee
            details, calculate monthly salaries, save payroll
            information and view payroll records easily.
        </p>

        <br />

        <h3>System Features</h3>

        <ul>
            <li>Employee Registration</li>
            <li>Employee Information Management</li>
            <li>Monthly Payroll Processing</li>
            <li>Salary Calculation</li>
            <li>PF and ESI Deduction Management</li>
            <li>Gross Salary Calculation</li>
            <li>Net Salary Calculation</li>
            <li>Payroll Record Storage</li>
            <li>View Saved Payroll Records</li>
        </ul>

        <br />

        <h3>Payroll Calculation</h3>

        <p>
            Gross Salary = Basic Salary + HRA + DA + Other Allowance
        </p>

        <p>
            Net Salary = Gross Salary - PF - ESI
        </p>

        <br />

        <h3>Technology Used</h3>

        <ul>
            <li>ASP.NET Web Forms</li>
            <li>C#</li>
            <li>SQL Server LocalDB</li>
            <li>HTML and CSS</li>
            <li>Visual Studio</li>
        </ul>

        <br />

        <h3>System Workflow</h3>

        <ol>
            <li>Register employee details.</li>
            <li>Enter monthly salary details.</li>
            <li>Calculate gross and net salary.</li>
            <li>Save payroll information into the database.</li>
            <li>View saved payroll records.</li>
        </ol>

        <br />

        <div class="alert alert-info">
            <strong>Employee Payroll System</strong><br />
            A simple system for managing employees and monthly payroll.
        </div>

    </div>

</asp:Content>