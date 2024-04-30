using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;

namespace rentalManagementWebsite
{
    public partial class VendorMessage : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;
        int userID;
        protected void Page_Load(object sender, EventArgs e)
        {

            userID = Convert.ToInt32(Session["USER_ID"]);
          //   ClientScript.RegisterStartupScript(this.GetType(), "ShowUserID", "alert('User ID: " + userID.ToString() + "');", true);

        }
        protected void SendBtn_Click(object sender, EventArgs e)
        {
            string userName = name.Text.Trim();
            string userEmail = email.Text.Trim();
            string userMessage = message.Text.Trim();

            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    connection.Open();
                    string query = @"
                INSERT INTO Messages (Message_ID, Message, FIRSTNAME, Email, USER_ID)
                VALUES (
                    (SELECT COALESCE(MAX(Message_ID), 0) + 1 FROM Messages),
                    :userMessage,
                    :userName,
                    NULL, -- Assuming LastName is not used and can be null
                    :userEmail,
                    :userID
                )";
                    OracleCommand command = new OracleCommand(query, connection);
                    command.Parameters.Add(new OracleParameter("userMessage", OracleDbType.Varchar2)).Value = userMessage;
                    command.Parameters.Add(new OracleParameter("userName", OracleDbType.Varchar2)).Value = userName;
                    command.Parameters.Add(new OracleParameter("userEmail", OracleDbType.Varchar2)).Value = userEmail;
                    command.Parameters.Add(new OracleParameter("userID", OracleDbType.Int32)).Value = userID;

                    int rowsAffected = command.ExecuteNonQuery();
                    if (rowsAffected > 0)
                    {
                       
                        Response.Write("<script>alert('Message sent successfully');</script>");
                        Response.Redirect("Home.aspx");
                    }
                    else
                    {

                        Response.Write("<script>alert('Message sending failed');</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Exception occurred: " + ex.Message + "');</script>");
            }
        }
    }





}
