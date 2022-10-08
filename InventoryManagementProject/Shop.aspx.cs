using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagementProject
{
    public partial class Shop : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string query = "INSERT INTO Shop (Shop_Name,ManagerID,ShopAddress,Opening_Date) VALUES(@Shop_Name,@ManagerID,@ShopAddress,@Opening_Date)";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.AddWithValue("@Shop_Name", txtShopName.Text);
            com.Parameters.AddWithValue("@ManagerID", DropDownManagerName.Text);
            com.Parameters.AddWithValue("@ShopAddress", txtShopAddress.Text);
            com.Parameters.AddWithValue("@Opening_Date", txtOpeningDate.Text);


            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Shop.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";

            string query = "select * from Shop where ShopID='" + TextBox1.Text + "' ";
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

                TextBox2.Text = dr["Shop_Name"].ToString();
                TextBox3.Text = dr["ManagerID"].ToString();
                TextBox4.Text = dr["ShopAddress"].ToString();
                TextBox5.Text = dr["Opening_Date"].ToString();
            }

            con.Close();
        }

        protected void btnSUpdate_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";

            string query = "update  Shop set Shop_Name='" + TextBox2.Text + "',ManagerID='" + TextBox3.Text + "',ShopAddress='" + TextBox4.Text + "',Opening_Date='" + TextBox5.Text + "' where ShopID='" + TextBox1.Text + "' ";
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
            Response.Redirect("~/Shop.aspx");
        }

        protected void btnSDelete_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";

            string query = "delete from Shop where ShopID='" + TextBox1.Text + "' ";
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
            Response.Redirect("~/Shop.aspx");
        }
    }
}