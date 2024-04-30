<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="rentalManagementWebsite.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <link rel="stylesheet" href="Home.css">
    
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
                 <p>"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint o
                     ccaecat cupidatat non proident, sunt in culpa qui officia dese
                     runt mollit anim id est laborum." </p>
            </div>
             

          

             


        </div>
    </section>






</body>
</html>
