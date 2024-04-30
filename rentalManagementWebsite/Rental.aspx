<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rental.aspx.cs" Inherits="rentalManagementWebsite.Rental" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="icon" type="image/png" href="img/rms-icon.png"/>
    <link rel="stylesheet" href="Rental.css" />
</head>
<body>
   
    <section>
        
        <div class="container">
            
            <nav>
                <h1>RMS</h1>

                <ul>
                    <li><a href="Home.aspx"> Home      </a></li>
                    <li><a href="Rental.aspx"> Stall     </a></li>
                    <li><a href="ReservationStatus.aspx"> Reservation Status  </a></li>
                    <li><a href="VendorMessage.aspx"> Contact  </a></li>
                    
                    <li class="dropdown">
                        <a href="#" class="dropdown-btn">More</a>
                        <div class="dropdown-content">
                            <a href="account.aspx">Account</a>
                            <a href="LoginPage.aspx"> Log out</a>
                        </div>
                    </li>
                    

                </ul>  
            </nav>
            
            <div class="article">
                <asp:Label ID="lblUsername" Text="" runat="server" />
            </div>

            <form id="form1" runat="server">
                <div class="productImage">
                    <div class="imageBox">
                        <h1 style="color: red;">OCCUPIED</h1>
                        <img src="img/s1.jpeg" alt="Image 1" />
                        <p>STALL 1</p>
                        <asp:Button ID="reserveButton1" runat="server" Text="Reserve" OnClick="Reserve_Click" ClientIDMode="Static" CssClass="btn btn-primary" />
                    </div>

                    <div class="imageBox">
                        <h1 style="color: lawngreen">VACANT</h1>
                        <img src="img/s1.jpeg" alt="Image 2" />
                        <p>STALL 2</p>
                        <asp:Button ID="reserveButton2" runat="server" Text="Reserve" OnClick="Reserve_Click" />
                    </div>

                    <div class="imageBox">
                        <h1 style="color: lawngreen">VACANT</h1>
                        <img src="img/s1.jpeg" alt="Image 3" />
                        <p>STALL 3</p>
                        <asp:Button ID="reserveButton3" runat="server" Text="Reserve" OnClick="Reserve_Click" />
                    </div>

                    <div class="imageBox">
                        <h1 style="color: lawngreen">VACANT</h1>
                        <img src="img/s1.jpeg" alt="Image 4" />
                        <p>STALL 4</p>
                        <asp:Button ID="reserveButton4" runat="server" Text="Reserve" OnClick="Reserve_Click" />
                    </div>
                </div>
                <script>
                    document.getElementById('<%= reserveButton1.ClientID %>').disabled = true;
                </script>
            </form>
        </div>
    </section>
</body>
</html>
