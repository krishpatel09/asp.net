using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace BusBookingProject
{
    public partial class UserRegistration : System.Web.UI.Page
    {
        #region Global Variable
        SqlConnection connString = new SqlConnection(ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString());
        #endregion

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        private int Registration()
        {
            try
            {
                int ResultCount = 0;
                SqlCommand sqlCmd = new SqlCommand();
                if (connString.State == ConnectionState.Closed)
                {
                    connString.Open();
                }
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@FName", txtFirstName.Text);
                sqlCmd.Parameters.AddWithValue("@LName", txtLastName.Text);
                sqlCmd.Parameters.AddWithValue("@EmailId", txtEmailID.Text);
                sqlCmd.Parameters.AddWithValue("@Address", txtAddress.Text);
                sqlCmd.Parameters.AddWithValue("@City", txtCity.Text);
                sqlCmd.Parameters.AddWithValue("@PinCode", txtPincode.Text);
                sqlCmd.Parameters.AddWithValue("@ContactNo", txtMobileNo.Text);
                sqlCmd.Parameters.AddWithValue("@Password", txtPassword.Text);
                sqlCmd.Parameters.Add("@Ret_Val", SqlDbType.BigInt).Direction = ParameterDirection.Output;
                sqlCmd.CommandText = "ispUserRegistration";
                sqlCmd.Connection = connString;
                sqlCmd.ExecuteNonQuery();
                ResultCount = Convert.ToInt32(sqlCmd.Parameters["@Ret_Val"].Value);
                return ResultCount;
            }
            catch (Exception)
            {
                throw;
            }
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            int RegistrationStatus = Registration();
            if (RegistrationStatus > 0)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alertMessage", "alert('User Registration Successful'); window.location='Login.aspx';", true);
            }
            else if (RegistrationStatus == -1)
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Mobile No already exists. Please try with another mobile number.')", true);
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Error occurred. Please contact your system administrator.')", true);
            }

            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtAddress.Text = "";
            txtMobileNo.Text = "";
            txtPincode.Text = "";
            txtCity.Text = "";
            txtPassword.Text = "";
            txtEmailID.Text = "";
        }
    }
}