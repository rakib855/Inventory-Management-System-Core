using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagementProject
{
    public partial class WebUserControl1 : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True";

            string query = "select * from Category where CategoryID='" + TextBox1.Text + "' ";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = com.ExecuteReader();
            bool recordfound = dr.Read();
            if (!recordfound)
            {
                Label1.Text = "Recore Does Not Exixt......";
            }
            else
            {
                Label1.Text = "";

                TextBox2.Text = dr["Category_Name"].ToString();
            }

            con.Close();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True";
            string query = "INSERT INTO Category (Category_Name) VALUES(@Category_Name)";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.AddWithValue("@Category_Name", txtCategoryName.Text);


            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Category.aspx");
        }

        protected void btnCatUpdate_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True";

            string query = "update  Category set Category_Name='" + TextBox2.Text + "' where CategoryID='" + TextBox1.Text + "' ";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            int x = com.ExecuteNonQuery();
            if (x > 0)
            {
                Label1.Text = "Recore Updated......";
            }
            else
            {
                Label1.Text = "Recore Does Not Updated......";
            }
            con.Close();
            Response.Redirect("~/Category.aspx");
        }

        protected void btnCatDelete_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True";

            string query = "delete from Category where CategoryID='" + TextBox1.Text + "' ";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            int x = com.ExecuteNonQuery();
            if (x > 0)
            {
                Label1.Text = "Recore Deleted......";
            }
            else
            {
                Label1.Text = "Recore Does Not Deleted......";
            }
            con.Close();
            Response.Redirect("~/Category.aspx");
        }
    }
}