<%@ Page Title="View Payroll"
    Language="C#"
    MasterPageFile="~/Site.Master"
    AutoEventWireup="true"
    CodeBehind="ViewPayroll.aspx.cs"
    Inherits="BankPayrollSystem.ViewPayroll" %>

<asp:Content ID="BodyContent"
    ContentPlaceHolderID="MainContent"
    runat="server">

    <div class="container">

        <h2>View Payroll</h2>

        <p>
            View all saved employee payroll records.
        </p>

        <hr />

        <asp:Button ID="btnRefresh"
            runat="server"
            Text="Refresh Payroll"
            CssClass="btn btn-primary"
            OnClick="btnRefresh_Click" />

        <br />
        <br />

        <asp:Label ID="lblMessage"
            runat="server"
            CssClass="text-danger">
        </asp:Label>

        <br />

        <div style="overflow-x:auto;">

            <asp:GridView ID="gvPayroll"
                runat="server"
                AutoGenerateColumns="true"
                CssClass="table table-bordered table-striped"
                GridLines="Both"
                EmptyDataText="No payroll records found.">

            </asp:GridView>

        </div>

    </div>

</asp:Content>