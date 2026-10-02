<%@ Page Title="Payroll"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="Payroll.aspx.cs"
    Inherits="BankPayrollSystem.Payroll" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <h2>Payroll Processing</h2>

        <hr />

        <!-- Employee ID -->
        <div class="form-group">
            <label>Employee ID</label>
            <asp:TextBox ID="txtEmployeeID"
                runat="server"
                CssClass="form-control">
            </asp:TextBox>
        </div>

        <br />

        <!-- Payroll Month -->
        <div class="form-group">
            <label>Payroll Month</label>
            <asp:TextBox ID="txtPayrollMonth"
                runat="server"
                CssClass="form-control"
                placeholder="YYYY-MM">
            </asp:TextBox>
        </div>

        <br />

        <!-- Basic Salary -->
        <div class="form-group">
            <label>Basic Salary</label>
            <asp:TextBox ID="txtBasicSalary"
                runat="server"
                CssClass="form-control">
            </asp:TextBox>
        </div>

        <br />

        <!-- HRA -->
        <div class="form-group">
            <label>HRA</label>
            <asp:TextBox ID="txtHRA"
                runat="server"
                CssClass="form-control">
            </asp:TextBox>
        </div>

        <br />

        <!-- DA -->
        <div class="form-group">
            <label>DA</label>
            <asp:TextBox ID="txtDA"
                runat="server"
                CssClass="form-control">
            </asp:TextBox>
        </div>

        <br />

        <!-- Other Allowance -->
        <div class="form-group">
            <label>Other Allowance</label>
            <asp:TextBox ID="txtOtherAllowance"
                runat="server"
                CssClass="form-control">
            </asp:TextBox>
        </div>

        <br />

        <!-- PF -->
        <div class="form-group">
            <label>PF</label>
            <asp:TextBox ID="txtPF"
                runat="server"
                CssClass="form-control">
            </asp:TextBox>
        </div>

        <br />

        <!-- ESI -->
        <div class="form-group">
            <label>ESI</label>
            <asp:TextBox ID="txtESI"
                runat="server"
                CssClass="form-control">
            </asp:TextBox>
        </div>

        <br />

        <!-- Gross Salary -->
        <div class="form-group">
            <label>Gross Salary</label>
            <asp:Label ID="lblGrossSalary"
                runat="server"
                CssClass="form-control">
            </asp:Label>
        </div>

        <br />

        <!-- Net Salary -->
        <div class="form-group">
            <label>Net Salary</label>
            <asp:Label ID="lblNetSalary"
                runat="server"
                CssClass="form-control">
            </asp:Label>
        </div>

        <br />

        <!-- Calculate Button -->
        <asp:Button ID="btnCalculate"
            runat="server"
            Text="Calculate Salary"
            CssClass="btn btn-primary"
            OnClick="btnCalculate_Click" />

        &nbsp;

        <!-- Save Button -->
        <asp:Button ID="btnSave"
            runat="server"
            Text="Save Payroll"
            CssClass="btn btn-success"
            OnClick="btnSave_Click" />

        <br />
        <br />

        <!-- Message -->
        <asp:Label ID="lblMessage"
            runat="server"
            CssClass="text-success">
        </asp:Label>

    </div>

</asp:Content>