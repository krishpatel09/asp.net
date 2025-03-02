using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

public partial class code_BusBookingProject_BusBookingProject_ContactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        // Database connection string from Web.config
        string connStr = ConfigurationManager.ConnectionStrings["OnlineBusBookingConnectionString"].ToString();

        using (SqlConnection conn = new SqlConnection(connStr))
        {
            string query = "INSERT INTO ContactUs (Name, Email, Subject, Message) VALUES (@Name, @Email, @Subject, @Message)";
            SqlCommand cmd = new SqlCommand(query, conn);
            cmd.Parameters.AddWithValue("@Name", txtName.Text);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Subject", txtSubject.Text);
            cmd.Parameters.AddWithValue("@Message", txtMessage.Text);

            conn.Open();
            cmd.ExecuteNonQuery();
            conn.Close();

            // Show success message
            Response.Write("<script>alert('Your message has been sent successfully!');</script>");

            // Clear input fields after submission
            txtName.Text = "";
            txtEmail.Text = "";
            txtSubject.Text = "";
            txtMessage.Text = "";
        }
    }
}
