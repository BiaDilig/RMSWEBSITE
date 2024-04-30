using System;
using System.Data;
using Oracle.ManagedDataAccess.Client;

namespace rentalManagementWebsite
{
    public partial class ReservationForm : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["USER_ID"] == null || Session["Stall_ID"] == null)
            {
               
                Response.Redirect("Login.aspx");
            }
        }

        protected void btnReserve_Click(object sender, EventArgs e)
        {
            int userID = Convert.ToInt32(Session["USER_ID"]);
            int stallID = Convert.ToInt32(Session["Stall_ID"]);

            string firstName = firstname.Text.Trim();
            string lastName = lastname.Text.Trim();
            string phoneNumber = phone.Text.Trim();
            string txtemail = email.Text.Trim();
            string txttransaction = transaction.Text.Trim();

            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    connection.Open();
                    string query = @"
                        INSERT INTO Stall_Reservation (Reserve_ID, Transaction_Number, Phone_No, Last_Name, First_Name, Email, USER_ID, Stall_ID)
                        VALUES (
                            (SELECT COALESCE(MAX(Reserve_ID), 0) + 1 FROM Stall_Reservation),
                            :transaction,
                            :phoneNumber,
                            :lastName,
                            :firstName,
                            :email,
                            :userID,
                            :stallID
                        )";
                    OracleCommand command = new OracleCommand(query, connection);
                    command.Parameters.Add(new OracleParameter("transaction", txttransaction));
                    command.Parameters.Add(new OracleParameter("phoneNumber", phoneNumber));
                    command.Parameters.Add(new OracleParameter("lastName", lastName));
                    command.Parameters.Add(new OracleParameter("firstName", firstName));
                    command.Parameters.Add(new OracleParameter("email", txtemail));
                    command.Parameters.Add(new OracleParameter("userID", userID));
                    command.Parameters.Add(new OracleParameter("stallID", stallID));

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // Stall reserved successfully
                       
                        Response.Write("<script>alert('Stall reserved successfully');</script>");
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {
                        // Stall reservation failed
                      
                        Response.Write("<script>alert('Stall reservation failed');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle exception
                Response.Write("<script>alert('Exception occurred: " + ex.Message + "');</script>");
            }
        }
    }
}
