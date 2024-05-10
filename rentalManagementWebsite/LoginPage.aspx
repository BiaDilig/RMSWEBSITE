<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="rentalManagementWebsite.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="icon" type="image/png" href="img/rms-icon.png"/>
     <link rel="stylesheet" href="LoginPage.css" />
    <title></title>
</head>
<body>
    
    <form id="form1" runat="server">
        <div class="login-container">

            <h2>RMS</h2>
            
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
           
            <div>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="Username" CssClass="form-control" required=""></asp:TextBox>
            </div>
            
            <div>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" required=""></asp:TextBox>
            </div>
            
            <div>
                <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" CssClass="btn btn-primary" />
            </div>

            
            <div class="register-link">
                <a href="Register.aspx">Create an account</a>
            </div>

        </div>
    </form>
</body>
</html>
