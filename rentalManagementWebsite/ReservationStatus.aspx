<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ReservationStatus.aspx.cs" Inherits="rentalManagementWebsite.ReservationStatus" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Status</title>
    <link rel="icon" type="image/png" href="img/rms-icon.png"/>
    <link href="ReservationStatus.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <div class="container">
                <nav>
                    <h1>RMS</h1>

                    <ul>
                        <li><a href="Home.aspx"> Home </a></li>
                        <li><a href="Rental.aspx"> Stall </a></li>
                        <li><a href="ReservationStatus.aspx"> Reservation Status </a></li>
                        <li><a href="VendorMessage.aspx"> Contact </a></li>

                        <li class="dropdown">
                            <a href="#" class="dropdown-btn">More</a>
                            <div class="dropdown-content">
                                <a href="account.aspx">Account</a>
                                <a href="LoginPage.aspx"> Log out</a>
                            </div>
                        </li>
                    </ul>
                </nav>
                 
                <table class="reservation-table">
                    <tr>
                        <td>
                            <asp:GridView ID="ReservationGridView" runat="server" AutoGenerateColumns="false" CssClass="ReservationTable">
                                <Columns>
                                    <asp:BoundField DataField="Stall_No" HeaderText="Stall Number" />
                                    <asp:BoundField DataField="Status" HeaderText="Status" />
                                </Columns>
                            </asp:GridView>
                        </td>
                    </tr>
                </table>

            </div>
        </section>
    </form>
</body>
</html>
