using System;
using System.Configuration;
using System.Data.SqlClient;

namespace BankPayrollSystem
{
    public partial class Payroll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            try
            {
                decimal basic = Convert.ToDecimal(txtBasicSalary.Text);
                decimal hra = Convert.ToDecimal(txtHRA.Text);
                decimal da = Convert.ToDecimal(txtDA.Text);
                decimal otherAllowance = Convert.ToDecimal(txtOtherAllowance.Text);
                decimal pf = Convert.ToDecimal(txtPF.Text);
                decimal esi = Convert.ToDecimal(txtESI.Text);

                decimal grossSalary =
                    basic + hra + da + otherAllowance;

                decimal netSalary =
                    grossSalary - pf - esi;

                lblGrossSalary.Text =
                    "Gross Salary: ₹" + grossSalary.ToString("N2");

                lblNetSalary.Text =
                    "Net Salary: ₹" + netSalary.ToString("N2");

                lblMessage.Text = "";
            }
            catch
            {
                lblMessage.Text =
                    "Please enter valid numbers in all salary fields.";
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            try
            {
                string connectionString =
                    ConfigurationManager
                    .ConnectionStrings["BankPayrollDBConnectionString"]
                    .ConnectionString;

                decimal basic = Convert.ToDecimal(txtBasicSalary.Text);
                decimal hra = Convert.ToDecimal(txtHRA.Text);
                decimal da = Convert.ToDecimal(txtDA.Text);
                decimal otherAllowance =
                    Convert.ToDecimal(txtOtherAllowance.Text);
                decimal pf = Convert.ToDecimal(txtPF.Text);
                decimal esi = Convert.ToDecimal(txtESI.Text);

                decimal grossSalary =
                    basic + hra + da + otherAllowance;

                decimal netSalary =
                    grossSalary - pf - esi;

                using (SqlConnection con =
                    new SqlConnection(connectionString))
                {
                    string query = @"
                        INSERT INTO Payroll
                        (
                            EmployeeID,
                            PayrollMonth,
                            BasicSalary,
                            HRA,
                            DA,
                            OtherAllowance,
                            PF,
                            ESI,
                            GrossSalary,
                            NetSalary
                        )
                        VALUES
                        (
                            @EmployeeID,
                            @PayrollMonth,
                            @BasicSalary,
                            @HRA,
                            @DA,
                            @OtherAllowance,
                            @PF,
                            @ESI,
                            @GrossSalary,
                            @NetSalary
                        )";

                    using (SqlCommand cmd =
                        new SqlCommand(query, con))
                    {
                        cmd.Parameters.AddWithValue(
                            "@EmployeeID",
                            txtEmployeeID.Text);

                        cmd.Parameters.AddWithValue(
                            "@PayrollMonth",
                            txtPayrollMonth.Text);

                        cmd.Parameters.AddWithValue(
                            "@BasicSalary",
                            basic);

                        cmd.Parameters.AddWithValue(
                            "@HRA",
                            hra);

                        cmd.Parameters.AddWithValue(
                            "@DA",
                            da);

                        cmd.Parameters.AddWithValue(
                            "@OtherAllowance",
                            otherAllowance);

                        cmd.Parameters.AddWithValue(
                            "@PF",
                            pf);

                        cmd.Parameters.AddWithValue(
                            "@ESI",
                            esi);

                        cmd.Parameters.AddWithValue(
                            "@GrossSalary",
                            grossSalary);

                        cmd.Parameters.AddWithValue(
                            "@NetSalary",
                            netSalary);

                        con.Open();
                        cmd.ExecuteNonQuery();
                    }
                }

                lblMessage.Text =
                    "Payroll saved successfully!";
            }
            catch (Exception ex)
            {
                lblMessage.Text =
                    "Error: " + ex.Message;
            }
        }
    }
}