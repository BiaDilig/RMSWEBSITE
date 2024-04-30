<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VendorInquiries.aspx.cs" Inherits="rentalManagementWebsite.VendorInquiries" %>

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

            <a href="adminDashboard.aspx">VENDOR INFORMATION</a>
            <a href="VendorInquiries.aspx">VENDOR INQUIRIES</a>
            <a href="v_requisition.aspx">VENDOR REQUISITION</a>
            <a href="#">TRACK STALL OCCUPANCY</a>
            <a href="#">ARCHIVE</a>
            <a href="LoginPage.aspx">LOG OUT</a>
        </div>
        
        <div class="content">
            <asp:Label ID="Label1" runat="server" Text="VENDOR INQUIRIES"></asp:Label>
        </div>


        <table>
            <tr>
                <td>
                    <asp:GridView ID="adminGridView" runat="server" AutoGenerateColumns="false" CssClass="adminTable">
                        <Columns>
                            <asp:BoundField DataField="USER_ID" HeaderText="USER ID" />
                            <asp:BoundField DataField="FIRSTNAME" HeaderText="FIRST NAME" />
                            <asp:BoundField DataField="LASTNAME" HeaderText="LAST NAME" />
                            <asp:BoundField DataField="MESSAGE" HeaderText="MESSAGE" />
                            <asp:BoundField DataField="EMAIL" HeaderText="EMAIL" />
                        </Columns>
                    </asp:GridView>
                </td>
            </tr>
        </table>


    </form>
</body>
</html>
