<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReserveForm.aspx.cs" Inherits="rentalManagementWebsite.ReserveForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="ReserveForm.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <asp:Image ImageUrl="img/s1.jpeg" runat="server" />

        
            <asp:Image ID="productImage" ImageUrl="img/gcash.jpg" runat="server" />

            <div class="container">
    <div class="stall-info">
        <h2>Stall Information</h2>
        <ul>
            <li>
                <label for="description">Stall Description:</label>
                <span id="description">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</span>
            </li>
            <li>
                <label for="size">Stall Size:</label>
                <span id="size">10 sqm</span>
            </li>
            <li>
                <label for="price">Stall Price:</label>
                <span id="price">$1000</span>
            </li>
            <li>
                <label for="downpayment">Downpayment:</label>
                <span id="downpayment">$200</span>
            </li>
        </ul>
    </div>
</div>
            <div>



                <button onclick="Rental.aspx">Back</button>
                <asp:Button ID="btnReserve" runat="server" Text="Reserve" OnClick="Reserve_Click" CssClass="btn btn-primary" />
            </div>
        </div>
    </form>
</body>
</html>
