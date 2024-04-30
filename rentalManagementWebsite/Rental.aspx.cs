using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
namespace rentalManagementWebsite
{
    public partial class Rental : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;
        int userID;

       public void Page_Load(object sender, EventArgs e)
        {
            string username = Session["Username"].ToString();

            userID = Convert.ToInt32(Session["USER_ID"]);


           // ClientScript.RegisterStartupScript(this.GetType(), "ShowUserID", "alert('User ID: " + userID.ToString() + "');", true);
        }



        public void Reserve_Click(object sender, EventArgs e)
        {

            try
            {
                using (OracleConnection connection = new OracleConnection(connectionString))
                {
                    if (sender == reserveButton1)
                    {

                        connection.Open();
                        int stallIDOne = 1;
                        string query = "UPDATE Stall SET USER_ID = :userID WHERE Stall_ID = :stallID";
                        OracleCommand command = new OracleCommand(query, connection);
                        command.Parameters.Add(new OracleParameter("userID", userID));
                        command.Parameters.Add(new OracleParameter("stallID", stallIDOne));

                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Stall reserved successfully
                            //Always ready session para sa next form para ma store yung variable
                            Session["Stall_ID"] = stallIDOne;
                           
                            Session["USER_ID"] = userID;

                            Response.Redirect("ReserveForm.aspx");




                        }
                        else
                        {
                            // Stall reservation failed
                            
                        }



                    }
                    else if (sender == reserveButton2)
                    {

                        connection.Open();
                        int stallIDTwo = 2;
                        string query = "UPDATE Stall SET USER_ID = :userID WHERE Stall_ID = :stallID";
                        OracleCommand command = new OracleCommand(query, connection);
                        command.Parameters.Add(new OracleParameter("userID", userID));
                        command.Parameters.Add(new OracleParameter("stallID", stallIDTwo));

                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Stall reserved successfully
                            Session["Stall_ID"] = stallIDTwo;

                            Session["USER_ID"] = userID;

                            Response.Redirect("ReserveForm.aspx");




                        }
                        else
                        {
                            // Stall reservation failed

                        }






                    }
                    else if (sender == reserveButton3)
                    {

                        connection.Open();
                        int stallIDThree = 3;
                        string query = "UPDATE Stall SET USER_ID = :userID WHERE Stall_ID = :stallID";
                        OracleCommand command = new OracleCommand(query, connection);
                        command.Parameters.Add(new OracleParameter("userID", userID));
                        command.Parameters.Add(new OracleParameter("stallID", stallIDThree));

                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Stall reserved successfully
                            Session["Stall_ID"] = stallIDThree;

                            Session["USER_ID"] = userID;

                            Response.Redirect("ReserveForm.aspx");




                        }
                        else
                        {
                            // Stall reservation failed

                        }


                    }
                    else if (sender == reserveButton4)
                    {


                        connection.Open();
                        int stallIDFour = 4;
                        string query = "UPDATE Stall SET USER_ID = :userID WHERE Stall_ID = :stallID";
                        OracleCommand command = new OracleCommand(query, connection);
                        command.Parameters.Add(new OracleParameter("userID", userID));
                        command.Parameters.Add(new OracleParameter("stallID", stallIDFour));

                        int rowsAffected = command.ExecuteNonQuery();
                        if (rowsAffected > 0)
                        {
                            // Stall reserved successfully
                            Session["Stall_ID"] = stallIDFour;

                            Session["USER_ID"] = userID;

                            Response.Redirect("ReserveForm.aspx");




                        }
                        else
                        {
                            // Stall reservation failed

                        }


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