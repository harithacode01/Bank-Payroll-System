<%@ Page Title="Employees"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Employees.aspx.cs"
    Inherits="BankPayrollSystem.Employees" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="employee-container">

        <h2>Employee Registration</h2>

        <!-- Employee Name -->
        <label>Employee Name</label>
        <asp:TextBox ID="txtEmployeeName"
            runat="server"
            CssClass="input"
            placeholder="Enter Employee Name">
        </asp:TextBox>

        <!-- Gender -->
        <label>Gender</label>
        <asp:DropDownList ID="ddlGender"
            runat="server"
            CssClass="input">

            <asp:ListItem Text="Select Gender"
                Value="">
            </asp:ListItem>

            <asp:ListItem Text="Male"
                Value="Male">
            </asp:ListItem>

            <asp:ListItem Text="Female"
                Value="Female">
            </asp:ListItem>

        </asp:DropDownList>

        <!-- Date of Birth -->
        <label>Date of Birth</label>
        <asp:TextBox ID="txtDOB"
            runat="server"
            CssClass="input"
            TextMode="Date">
        </asp:TextBox>

        <!-- Date of Joining -->
        <label>Date of Joining</label>
        <asp:TextBox ID="txtDOJ"
            runat="server"
            CssClass="input"
            TextMode="Date">
        </asp:TextBox>

        <!-- Department -->
        <label>Department</label>
        <asp:TextBox ID="txtDepartment"
            runat="server"
            CssClass="input"
            placeholder="Enter Department">
        </asp:TextBox>

        <!-- Designation -->
        <label>Designation</label>
        <asp:TextBox ID="txtDesignation"
            runat="server"
            CssClass="input"
            placeholder="Enter Designation">
        </asp:TextBox>

        <!-- Branch -->
        <label>Branch</label>
        <asp:TextBox ID="txtBranch"
            runat="server"
            CssClass="input"
            placeholder="Enter Branch">
        </asp:TextBox>

        <!-- Phone -->
        <label>Phone</label>
        <asp:TextBox ID="txtPhone"
            runat="server"
            CssClass="input"
            placeholder="Enter Phone Number">
        </asp:TextBox>

        <!-- Email -->
        <label>Email</label>
        <asp:TextBox ID="txtEmail"
            runat="server"
            CssClass="input"
            placeholder="Enter Email">
        </asp:TextBox>

        <!-- Basic Salary -->
        <label>Basic Salary</label>
        <asp:TextBox ID="txtBasicSalary"
            runat="server"
            CssClass="input"
            placeholder="Enter Basic Salary">
        </asp:TextBox>

        <!-- HRA -->
        <label>HRA</label>
        <asp:TextBox ID="txtHRA"
            runat="server"
            CssClass="input"
            placeholder="Enter HRA">
        </asp:TextBox>

        <!-- DA -->
        <label>DA</label>
        <asp:TextBox ID="txtDA"
            runat="server"
            CssClass="input"
            placeholder="Enter DA">
        </asp:TextBox>

        <!-- PF -->
        <label>PF</label>
        <asp:TextBox ID="txtPF"
            runat="server"
            CssClass="input"
            placeholder="Enter PF">
        </asp:TextBox>

        <!-- ESI -->
        <label>ESI</label>
        <asp:TextBox ID="txtESI"
            runat="server"
            CssClass="input"
            placeholder="Enter ESI">
        </asp:TextBox>

        <br />

        <!-- Save Button -->
        <asp:Button ID="btnSave"
            runat="server"
            Text="Save Employee"
            CssClass="button"
            OnClick="btnSave_Click" />
        <asp:TextBox ID="txtOtherAllowance" runat="server"
    CssClass="input"
    placeholder="Other Allowance"></asp:TextBox>

<asp:TextBox ID="TextBox1" runat="server"
    CssClass="input"
    placeholder="ESI"></asp:TextBox>
    <asp:Button ID="Button1" runat="server"
    Text="Save Employee"
    OnClick="btnSave_Click" />

<br /><br />

<asp:Label ID="lblMessage" runat="server"></asp:Label>

    </div>

    <style>

        .employee-container {
            max-width: 650px;
            margin: auto;
        }

        .employee-container h2 {
            text-align: center;
            color: #1f4e78;
            margin-bottom: 25px;
        }

        .employee-container label {
            display: block;
            margin-top: 15px;
            margin-bottom: 5px;
            font-weight: bold;
        }

        .input {
            width: 100%;
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .button {
            background-color: #1f4e78;
            color: white;
            border: none;
            padding: 12px 30px;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 15px;
        }

        .button:hover {
            background-color: #2f75b5;
        }

    </style>

</asp:Content>