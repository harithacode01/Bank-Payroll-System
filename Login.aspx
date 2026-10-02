<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="BankPayrollSystem.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bank Payroll System - Login</title>
     <style>
        body {
            font-family: Arial;
            background-color: #f2f2f2;
        }

        .login-box {
            width: 350px;
            margin: 120px auto;
            padding: 30px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }

        h2 {
            text-align: center;
        }

        .input {
            width: 100%;
            padding: 10px;
            margin: 8px 0;
        }

        .btn {
            width: 100%;
            padding: 10px;
            background-color: #0066cc;
            color: white;
            border: none;
            cursor: pointer;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="login-box">

            <h2>Bank Payroll System</h2>

            <asp:TextBox ID="txtUsername"
                runat="server"
                CssClass="input"
                placeholder="Username" BackColor="#669999"></asp:TextBox>

            <asp:TextBox ID="txtPassword"
                runat="server"
                CssClass="input"
                TextMode="Password"
                placeholder="Password" BackColor="#669999"></asp:TextBox>

            <asp:Button ID="btnLogin"
                runat="server"
                Text="Login"
                CssClass="btn"
                OnClick="btnLogin_Click" />

            <br /><br />

            <asp:Label ID="lblMessage"
                runat="server">
            </asp:Label>

        
        </div>
    </form>
</body>
</html>
