<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VendorMessage.aspx.cs" Inherits="rentalManagementWebsite.VendorMessage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Contact Us</title>
    <link rel="icon" type="image/png" href="img/rms-icon.png"/>
    <link href="VendorMessage.css" rel="stylesheet" />
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
                <div class="contact-container">
                    <div class="contact-info">
                        <h2>Contact Us</h2>
                        <p>Phone number: 099-22-333-4565</p>
                        <p>Email: RentalManagement@gmail.com</p>
                    </div>
                    <div class="contact-form">
                        <h2>Send Message</h2>
                        <asp:TextBox ID="name" runat="server" placeholder="Name"></asp:TextBox>
                        <asp:TextBox ID="email" runat="server" placeholder="Email"></asp:TextBox>
                        <asp:TextBox ID="message" runat="server" TextMode="MultiLine" placeholder="Type your message"></asp:TextBox>
                        <asp:Button ID="sendBtn" runat="server" Text="Send" OnClick="SendBtn_Click" />
                    </div>
                </div>
            </div>
        </section>
    </form>
</body>
</html>
