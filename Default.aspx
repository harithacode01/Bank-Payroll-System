<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/Site.Master"
    AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="BankPayrollSystem._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div style="text-align:center; margin-top:40px;">

        <h1>🏦 Bank Payroll Management System</h1>

        <h3>Admin Dashboard</h3>

        <hr />

        <div style="margin-top:30px;">

            <asp:Button ID="btnEmployees"
                runat="server"
                Text="Employee Management"
                Width="220px"
                Height="50px" />

            <br /><br />

            <asp:Button ID="btnAttendance"
                runat="server"
                Text="Attendance & Leave"
                Width="220px"
                Height="50px" />

            <br /><br />

            <asp:Button ID="btnSalary"
                runat="server"
                Text="Salary Management"
                Width="220px"
                Height="50px" />

            <br /><br />

            <asp:Button ID="btnPayroll"
                runat="server"
                Text="Process Payroll"
                Width="220px"
                Height="50px" />

            <br /><br />

            <asp:Button ID="btnPayslip"
                runat="server"
                Text="Generate Payslip"
                Width="220px"
                Height="50px" />

        </div>

    </div>

</asp:Content>