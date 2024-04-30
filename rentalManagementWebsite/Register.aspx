<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="rentalManagementWebsite.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <link rel="stylesheet" href="Register.css" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="registration-container">
            <h2>Registration</h2>
            <asp:Label ID="lblMessage" runat="server" ForeColor="Red" Text=""></asp:Label>
            <div>
                <asp:TextBox ID="txtUsername" runat="server" placeholder="UserName" CssClass="form-control" required=""></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="txtFirstName" runat="server" placeholder="First Name" CssClass="form-control" required=""></asp:TextBox>
            </div>
            <div>
                <asp:TextBox ID="txtMiddleName" runat="server" placeholder="Middle Name" CssClass="form-control" required=""></asp:TextBox>
            </div>

             <div>
                <asp:TextBox ID="txtLastName" runat="server" placeholder="Last Name" CssClass="form-control" required=""></asp:TextBox>
            </div>

            <div>
                <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="form-control" required=""></asp:TextBox>
            </div>
            
            <div>
                <asp:TextBox ID="txtRole" runat="server" placeholder="Role" CssClass="form-control" required=""></asp:TextBox>
            </div>


            <div>
                   <asp:Label ID="lblMessage2" runat="server" ForeColor="Red" Text=""></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" placeholder="Password" CssClass="form-control" required=""></asp:TextBox>
            </div>


            <div>
                <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" placeholder="Confirm Password" CssClass="form-control" required=""></asp:TextBox>
            </div>




            <div>
                <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" CssClass="btn btn-primary" />
            </div>
            <div class="login-link">
                <a href="LoginPage.aspx">Already have an account? Login</a>
            </div>
        </div>
    </form>
</body>

</html>
