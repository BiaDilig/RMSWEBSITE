<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adminDashboard.aspx.cs" Inherits="rentalManagementWebsite.adminDashboard" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="adminDashboard.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
       


      

        <div class="sidebar">
             <div class="LandLord-Name">
           <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
           </div>

            <a href="#">VENDOR INFORMATION</a>
            <a href="VendorInquiries.aspx">VENDOR INQUIRIES</a>
            <a href="#">VENDOR REQUISITION</a>
            <a href="#">TRACK STALL OCCUPANCY</a>
            <a href="#">ARCHIVE</a>
            <a href="LoginPage.aspx">LOG OUT</a>
        </div>
        
        <div class="content">
            <asp:Label ID="Label1" runat="server" Text="Vendor Information"></asp:Label>
        </div>

        <table>
            <tr>
                <td>
                    <asp:GridView ID="adminGridView" runat="server" AutoGenerateColumns="false" CssClass="adminTable">
                        <Columns>
                            <asp:BoundField DataField="Username"  HeaderText="Username" />
                            <asp:BoundField DataField="Email" HeaderText="Email" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>


    </form>
</body>
</html>
