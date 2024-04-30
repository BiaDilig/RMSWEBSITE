<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="occupancy.aspx.cs" Inherits="rentalManagementWebsite.occupancy" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <link href="adminDashboard.css" rel="stylesheet" />
</head>

<body>
    <form id="form2" runat="server">
       


      

        <div class="sidebar">
             <div class="LandLord-Name">
           <asp:Label ID="lblUsername" runat="server" Text=""></asp:Label>
           </div>

            <a href="adminDashboard.aspx">VENDOR INFORMATION</a>
            <a href="VendorInquiries.aspx">VENDOR INQUIRIES</a>
            <a href="v_requisition.aspx">VENDOR REQUISITION</a>
            <a href="occupancy.aspx">TRACK STALL OCCUPANCY</a>
            <a href="#">ARCHIVE</a>
            <a href="LoginPage.aspx">LOG OUT</a>
        </div>
        
        <div class="content">
            <asp:Label ID="Label1" runat="server" Text="TRACK STALL OCCUPANCY"></asp:Label>
        </div>

        <table>
            <tr>
                <asp:GridView ID="adminGridView" runat="server" AutoGenerateColumns="false" CssClass="adminTable">
                    <Columns>
                        <asp:BoundField DataField="Stall_No" HeaderText="Stall Number" />
                        <asp:BoundField DataField="STATUS" HeaderText="STALL STATUS" />
                        <asp:BoundField DataField="DATE_OCCUPIED" HeaderText="OCCUPIED DATE" />
                    </Columns>
                </asp:GridView>
            </tr>
        </table>
    </form>
</body>
</html>
