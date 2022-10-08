using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagementProject
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string Condition = string.Empty;
            if (RadioNew.Checked)
            {
                Condition = "New";
            }
            else
            {
                Condition = "Used";
            }

            FileUpload1.SaveAs(Server.MapPath("~/MyPhoto/") + Path.GetFileName(FileUpload1.FileName));
            string link = "MyPhoto/" + Path.GetFileName(FileUpload1.FileName);


            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True";
            string query = "INSERT INTO Product (Product_Name,CategoryID,BrandID,ShopID,Condition,Quantity,Price,Selling_Date,Photo) VALUES(@Product_Name,@CategoryID,@BrandID,@ShopID,@Condition,@Quantity,@Price,@Selling_Date,@Photo)";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);


            com.Parameters.AddWithValue("@Product_Name", txtProduct_Name.Text);
            com.Parameters.AddWithValue("@CategoryID", DropDownList1.Text);
            com.Parameters.AddWithValue("@BrandID", DropDownList2.Text);
            com.Parameters.AddWithValue("@ShopID", DropDownList3.Text);
            com.Parameters.AddWithValue("@Condition", Condition);
            com.Parameters.AddWithValue("@Quantity", txtQuantity.Text);
            com.Parameters.AddWithValue("@Price", txtPrice.Text);
            com.Parameters.AddWithValue("@Selling_Date", txtSellingDate.Text);
            com.Parameters.AddWithValue("@Photo", link);


            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Write("<script>alert('Save Successfull')</script>");
            txtProduct_Name.Text = "";
            txtQuantity.Text = "";
            txtPrice.Text = "";
            txtSellingDate.Text = "";


            // Response.Redirect("~/Product.aspx");
        }
    }
}