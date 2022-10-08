using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagementProject
{
    public partial class Registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnRegistration_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string query = "INSERT INTO Registration (Name,Email,Age,Password) VALUES(@Name,@Email,@Age,@Password)";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.AddWithValue("@Name", txtregName.Text);
            com.Parameters.AddWithValue("@Email", txtEmail.Text);
            com.Parameters.AddWithValue("@Age", txtAge.Text);
            com.Parameters.AddWithValue("@Password", txtregPassword.Text);


            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            //Response.Redirect("~/Registration.aspx");
            Label1.Text = "Registration Success";

            txtregName.Text = "";
            txtEmail.Text = "";
            txtAge.Text = "";
            txtregPassword.Text = "";
            txtPassword2.Text = "";
        }
    }
}