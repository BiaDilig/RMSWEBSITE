<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationForm.aspx.cs" Inherits="rentalManagementWebsite.ReservationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" type="image/png" href="img/rms-icon.png"/>
    <link href="ReservationForm.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Stall Reservation</h2>
            <asp:Panel ID="reservationPanel" runat="server">
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="firstname">First Name:</asp:Label>
                    <asp:TextBox ID="firstname" runat="server" placeholder="Enter your first name" CssClass="form-control" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="lastname">Last Name:</asp:Label>
                    <asp:TextBox ID="lastname" runat="server" placeholder="Enter your last name" CssClass="form-control" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="phone">Phone Number:</asp:Label>
                    <asp:TextBox ID="phone" runat="server" placeholder="Enter your phone number" CssClass="form-control" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="email">Email:</asp:Label>
                    <asp:TextBox ID="email" runat="server" placeholder="Enter your email" CssClass="form-control" required=""></asp:TextBox>
                </div>
                <div class="form-group">
                    <asp:Label runat="server" AssociatedControlID="transaction">Transaction Number:</asp:Label>
                    <asp:TextBox ID="transaction" runat="server" placeholder="Enter transaction number" CssClass="form-control" required=""></asp:TextBox>
                </div>
                <div class="buttons">
                    <asp:Button ID="btnClose" runat="server" Text="Close" CssClass="close" OnClientClick="return false;" />
                    <asp:Button ID="btnReserve" runat="server" Text="Reserve" CssClass="btn-reserve" OnClick="btnReserve_Click" />
                </div>
            </asp:Panel>
        </div>
    </form>
</body>
</html>
