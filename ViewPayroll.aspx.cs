using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace BankPayrollSystem
{
    public partial class ViewPayroll : System.Web.UI.Page
    {
        string connectionString =
            ConfigurationManager.ConnectionStrings[
                "BankPayrollDBConnectionString"
            ].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadPayrollData();
            }
        }

        protected void btnRefresh_Click(object sender, EventArgs e)
        {
            LoadPayrollData();
        }

        private void LoadPayrollData()
        {
            try
            {
                using (SqlConnection con =
                    new SqlConnection(connectionString))
                {
                    string query = "SELECT * FROM Payroll ORDER BY PayrollID DESC";

                    using (SqlDataAdapter da =
                        new SqlDataAdapter(query, con))
                    {
                        DataTable dt = new DataTable();

                        da.Fill(dt);

                        gvPayroll.DataSource = dt;
                        gvPayroll.DataBind();

                        if (dt.Rows.Count == 0)
                        {
                            lblMessage.Text =
                                "No payroll records found.";
                        }
                        else
                        {
                            lblMessage.Text =
                                "Payroll records loaded successfully.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lblMessage.Text =
                    "Error loading payroll: " + ex.Message;
            }
        }
    }
}