using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BankPayrollSystem
{
    public partial class Employees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string connectionString =
               @"Data Source=(localdb)\MSSQLLocalDB;
                  Initial Catalog=BankPayrollDB;
                  Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string query = @"INSERT INTO Employees
                (
                    EmployeeName,
                    Gender,
                    DateOfBirth,
                    DateOfJoining,
                    Department,
                    Designation,
                    Branch,
                    Phone,
                    Email,
                    BasicSalary,
                    HRA,
                    DA,
                    OtherAllowance,
                    PF,
                    ESI
                )
                VALUES
                (
                    @EmployeeName,
                    @Gender,
                    @DateOfBirth,
                    @DateOfJoining,
                    @Department,
                    @Designation,
                    @Branch,
                    @Phone,
                    @Email,
                    @BasicSalary,
                    @HRA,
                    @DA,
                    @OtherAllowance,
                    @PF,
                    @ESI
                )";

                SqlCommand cmd = new SqlCommand(query, con);

                cmd.Parameters.AddWithValue("@EmployeeName", txtEmployeeName.Text);
                cmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                cmd.Parameters.AddWithValue("@DateOfBirth", txtDOB.Text);
                cmd.Parameters.AddWithValue("@DateOfJoining", txtDOJ.Text);
                cmd.Parameters.AddWithValue("@Department", txtDepartment.Text);
                cmd.Parameters.AddWithValue("@Designation", txtDesignation.Text);
                cmd.Parameters.AddWithValue("@Branch", txtBranch.Text);
                cmd.Parameters.AddWithValue("@Phone", txtPhone.Text);
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text);

                cmd.Parameters.AddWithValue("@BasicSalary", txtBasicSalary.Text);
                cmd.Parameters.AddWithValue("@HRA", txtHRA.Text);
                cmd.Parameters.AddWithValue("@DA", txtDA.Text);
                cmd.Parameters.AddWithValue("@OtherAllowance", txtOtherAllowance.Text);
                cmd.Parameters.AddWithValue("@PF", txtPF.Text);
                cmd.Parameters.AddWithValue("@ESI", txtESI.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();

                lblMessage.Text = "Employee saved successfully!";
            }
        }
    }
}