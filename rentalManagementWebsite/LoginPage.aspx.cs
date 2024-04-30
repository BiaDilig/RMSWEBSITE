using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
namespace rentalManagementWebsite
{
    public partial class LoginPage : System.Web.UI.Page
    {

        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {



        }



        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text.Trim();
            string password = txtPassword.Text.Trim();

            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    connection.Open();
                    string query = "SELECT \"Role\", \"USER_ID\" FROM \"user\" WHERE \"Username\" = :username AND \"Password\" = :password";
                    using (OracleCommand command = new OracleCommand(query, connection))
                    {
                        command.Parameters.Add(new OracleParameter("username", OracleDbType.Varchar2)).Value = username;
                        command.Parameters.Add(new OracleParameter("password", OracleDbType.Varchar2)).Value = password;

                        using (OracleDataReader reader = command.ExecuteReader())
                        {
                            if (reader.Read())
                            {
                                string role = reader["Role"].ToString();
                                int userID = Convert.ToInt32(reader["USER_ID"]);
                                Session["Username"] = username;
                                Session["USER_ID"] = userID;
                                if (role == "Vendor")
                                {
                                    Response.Redirect("Home.aspx");
                                }
                                else if (role == "Landlord")
                                {
                                    Response.Redirect("adminDashboard.aspx");
                                }
                                else
                                {
                                    lblMessage.Text = "Unknown role";
                                }
                            }
                            else
                            {
                                lblMessage.Text = "Invalid username or password";
                            }
                        }
                    }
                }
            }
            catch (OracleException ex)
            {
                lblMessage.Text = "Oracle Error: " + ex.Message;
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
            }
        }





    }
}