using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
namespace rentalManagementWebsite
{
    public partial class Register : System.Web.UI.Page
    {

        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        public void btnRegister_Click(object sender, EventArgs e)
        {
            String firstname = txtFirstName.Text.Trim();
            String middlename = txtMiddleName.Text.Trim();
            String lastname = txtLastName.Text.Trim();
            String username = txtUsername.Text.Trim();
            String email = txtEmail.Text.Trim();
            String role = txtRole.Text.Trim();
            String password = txtPassword.Text.Trim();
            String confirmpassword = txtConfirmPassword.Text.Trim();

            try
            {
                
                if (password != confirmpassword)
                {
                    lblMessage.Text = "Password and confirm password do not match.";
                    return;
                }

                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    connection.Open();

                    
                    string query = @"
                   INSERT INTO ""user"" (""USER_ID"", ""Username"", ""Password"", ""FirstName"", ""LastName"", ""MiddleName"", ""Email"", ""Role"")
                 VALUES (
                  (SELECT COALESCE(MAX(""USER_ID""), 0) + 1 FROM ""user""),
                   :Username,
                    :Password,
                  :FirstName,
                     :LastName,
              :MiddleName,
              :Email,
                 :Role
                       )";



                    OracleCommand command = new OracleCommand(query, connection);

                   
                    command.Parameters.Add(new OracleParameter("Username", username));
                    command.Parameters.Add(new OracleParameter("Password", password)); 
                    command.Parameters.Add(new OracleParameter("FirstName", firstname));
                    command.Parameters.Add(new OracleParameter("LastName", lastname));
                    command.Parameters.Add(new OracleParameter("MiddleName", middlename));
                    command.Parameters.Add(new OracleParameter("Email", email));
                    command.Parameters.Add(new OracleParameter("Role", role));

                   
                    int rowsInserted = command.ExecuteNonQuery();

                    if (rowsInserted > 0)
                    {
                        lblMessage.Text = "Registration successful!";
                    }
                    else
                    {
                        lblMessage.Text = "Registration failed. Please try again.";
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


    
