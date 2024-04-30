using System;
using System.Data;
using Oracle.ManagedDataAccess.Client;

namespace rentalManagementWebsite
{
    public partial class ReservationStatus : System.Web.UI.Page
    {
        private string connectionString = System.Configuration.ConfigurationManager.ConnectionStrings["OracleConnectionString"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
             
                if (Session["USER_ID"] != null && Session["USER_ID"] is int userID)
                {
                    DataTable dt = GetDataFromOracleDatabase(userID);
                    ReservationGridView.DataSource = dt;
                    ReservationGridView.DataBind();
                }
                else
                {
                    
                    Response.Redirect("~/Login.aspx");
                }
            }
        }

        public DataTable GetDataFromOracleDatabase(int userID)
        {
            DataTable dt = new DataTable();
            using (OracleConnection connection = new OracleConnection(connectionString))
            {
                string query = "SELECT * FROM Stall WHERE USER_ID = :userID";
                using (OracleCommand command = new OracleCommand(query, connection))
                {
                   
                    command.Parameters.Add("USER_ID", OracleDbType.Int32).Value = userID;
                    try
                    {
                        connection.Open();
                        using (OracleDataAdapter adapter = new OracleDataAdapter(command))
                        {
                            adapter.Fill(dt);
                        }
                    }
                    catch (Exception ex)
                    {
                       
                        Console.WriteLine("Error fetching data: " + ex.Message);
                     
                    }
                }
            }
            return dt;
        }
    }
}
