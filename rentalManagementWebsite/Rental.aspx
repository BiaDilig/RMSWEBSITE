<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Rental.aspx.cs" Inherits="rentalManagementWebsite.Rental" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

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
                    <li><a href="Contact.aspx"> Contact  </a></li>
                    
                    <li class="dropdown">
                        <a href="#" class="dropdown-btn">More</a>
                        <div class="dropdown-content">
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                    </li>
                    <li><a href="LoginPage.aspx"> Log out   </a></li>

                </ul>  
            </nav>
            
            <div class="article">
                <asp:Label ID="lblUsername" Text="" runat="server" />
            </div>

            <form id="form1" runat="server">
                <div class="productImage">
                    <div class="imageBox">
                        <img src="img/s1.jpeg" alt="Image 1" />
                        <p>Description for Image 1</p>
                        <asp:Button ID="reserveButton1" runat="server" Text="Reserve" OnClick="Reserve_Click" />
                    </div>

                    <div class="imageBox">
                        <img src="img/s1.jpeg" alt="Image 2" />
                        <p>Description for Image 2</p>
                        <asp:Button ID="reserveButton2" runat="server" Text="Reserve" OnClick="Reserve_Click" />
                    </div>

                    <div class="imageBox">
                        <img src="img/s1.jpeg" alt="Image 3" />
                        <p>Description for Image 3</p>
                        <asp:Button ID="reserveButton3" runat="server" Text="Reserve" OnClick="Reserve_Click" />
                    </div>

                    <div class="imageBox">
                        <img src="img/s1.jpeg" alt="Image 4" />
                        <p>Description for Image 4</p>
                        <asp:Button ID="reserveButton4" runat="server" Text="Reserve" OnClick="Reserve_Click" />
                    </div>
                </div>
            </form>
        </div>
    </section>
</body>
</html>
