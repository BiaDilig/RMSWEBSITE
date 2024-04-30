<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="v_requisition.aspx.cs" Inherits="rentalManagementWebsite.v_requisition" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" type="image/png" href="img/rms-icon.png"/>
    <link href="adminDashboard.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">
       

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
            <asp:Label ID="Label1" runat="server" Text="VENDOR REQUISITION"></asp:Label>
        </div>


        <table>
            <tr>
                <td>
                    <asp:GridView ID="adminGridView" runat="server" AutoGenerateColumns="false" CssClass="adminTable">
                        <Columns>
                            <asp:BoundField DataField="RESERVE_ID" HeaderText="RESERVATION NUMBER" />
                            <asp:BoundField DataField="STALL_ID" HeaderText="STALL ID" />
                            <asp:BoundField DataField="TRANSACTION_NUMBER" HeaderText="TRANSACTION NUMBER" />
                            <asp:BoundField DataField="FIRST_NAME" HeaderText="FIRST NAME" />
                            <asp:BoundField DataField="LAST_NAME" HeaderText="LAST NAME" />
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" />
                            <asp:BoundField DataField="PHONE_NO" HeaderText="CONTACT" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>


    </form>
</body>
</html>
