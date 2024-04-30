using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
namespace rentalManagementWebsite
{
    public partial class ReserveForm : System.Web.UI.Page
    {
        int userID;
        int stallID;
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {


            userID = Convert.ToInt32(Session["USER_ID"]);
            stallID = Convert.ToInt32(Session["Stall_ID"]);



        }

        public void Reserve_Click(object sender, EventArgs e)
        {
            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {

                    connection.Open();
                    string stallNo = "A1";
                    string query = "UPDATE Stall SET USER_ID = :userID WHERE Stall_No = :stallNo";
                    OracleCommand command = new OracleCommand(query, connection);
                    command.Parameters.Add(new OracleParameter("userID", userID));
                    command.Parameters.Add(new OracleParameter("stallNo", stallNo));

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                        // Stall reserved successfully
                        Session["Stall_No"] = stallNo;
                        Session["USER_ID"] = userID;

                        Response.Redirect("ReservationForm.aspx");




                    }
                    else
                    {
                        // Stall reservation failed

                    }

                }
            }
            catch (Exception)
            {

                throw;
            }

          


        }
    }
}