using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagementProject
{
    public partial class ProductHYP : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string imagelink1;

            string mycon = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string myquery = "select * from Product where ProductID='" + TextBox1.Text + "' ";

            SqlConnection con = new SqlConnection(mycon);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;

            //con.Open();
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);

            if (ds.Tables[0].Rows.Count > 0)
            {
                TextBox2.Text = ds.Tables[0].Rows[0]["Product_Name"].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0]["CategoryID"].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0]["BrandID"].ToString();
                TextBox5.Text = ds.Tables[0].Rows[0]["ShopID"].ToString();
                TextBox6.Text = ds.Tables[0].Rows[0]["Condition"].ToString();
                TextBox7.Text = ds.Tables[0].Rows[0]["Quantity"].ToString();
                TextBox8.Text = ds.Tables[0].Rows[0]["Price"].ToString();
                TextBox9.Text = ds.Tables[0].Rows[0]["Selling_Date"].ToString();
                imagelink1 = ds.Tables[0].Rows[0]["Photo"].ToString();
                Image1.ImageUrl = imagelink1 + "?n=" + DateTime.Now.Second.ToString();
            }

            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            FileUpload2.SaveAs(Server.MapPath("~/MyPhoto/") + Path.GetFileName(FileUpload2.FileName));
            string link = "MyPhoto/" + Path.GetFileName(FileUpload2.FileName);

            string mycon = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string updatedata = "update  Product set Product_Name='" + TextBox2.Text + "',CategoryID='" + TextBox3.Text + "',BrandID='" + TextBox4.Text + "',ShopID='" + TextBox5.Text + "',Condition='" + TextBox6.Text + "',Quantity='" + TextBox7.Text + "',Price='" + TextBox8.Text + "',Selling_Date='" + TextBox9.Text + "',Photo='" + link + "' where ProductID='" + TextBox1.Text + "' ";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = updatedata;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            Response.Redirect("~/ProductHYP.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";

            string query = "delete from Product where ProductID='" + TextBox1.Text + "' ";
            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);
            con.Open();
            int x = com.ExecuteNonQuery();
            if (x > 0)
            {
                Label3.Text = "Recore Deleted......";
            }
            else
            {
                Label3.Text = "Recore Does Not Deleted......";
            }
            con.Close();
            Response.Redirect("~/ProductHYP.aspx");
        }

        protected void btnCReport_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string query = "select * from Product";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);

            SqlDataAdapter sda = new SqlDataAdapter(com);
            DataSet ds = new DataSet();
            sda.Fill(ds);

            ReportDocument crp = new ReportDocument();
            crp.Load(Server.MapPath("CrystalReport1.rpt"));
            crp.SetDataSource(ds.Tables["table"]);
            CrystalReportViewer1.ReportSource = crp;
            crp.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, false, "Product Infoemation");
        }
    }
}