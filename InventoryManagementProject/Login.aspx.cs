using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagementProject
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string query = "select count (*) from [Registration] where Email='" + txtName.Text+ "' and Password='"+ txtPassword.Text + "' ";
            
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
            con.Close();
            if (temp == 1)
            {
                Response.Redirect("Default.aspx");
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Invalid Email or Password";
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Registration.aspx");
        }
    }
}