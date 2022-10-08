using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InventoryManagementProject
{
    public partial class Manager : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Gender = string.Empty;
            if (RadioMale.Checked)
            {
                Gender = "Male";
            }
            else
            {
                Gender = "Female";
            }


            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string query = "INSERT INTO Manager (Manager_Name,Gender,Address,Joining_Date) VALUES(@Manager_Name,@Gender,@Address,@Joining_Date)";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.AddWithValue("@Manager_Name", txtManagerName.Text);
            com.Parameters.AddWithValue("@Gender", Gender);
            com.Parameters.AddWithValue("@Address", txtAddress.Text);
            com.Parameters.AddWithValue("@Joining_Date", txtJoiningDate.Text);


            con.Open();
            com.ExecuteNonQuery();
            con.Close();
            Response.Redirect("~/Manager.aspx");
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";

            string query = "select * from Manager where ManagerID='" + TextBox1.Text + "' ";
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

                TextBox2.Text = dr["Manager_Name"].ToString();
                TextBox3.Text = dr["Gender"].ToString();
                TextBox4.Text = dr["Address"].ToString();
                TextBox5.Text = dr["Joining_Date"].ToString();
            }

            con.Close();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";

            string query = "update  Manager set Manager_Name='" + TextBox2.Text + "',Gender='" + TextBox3.Text + "',Address='" + TextBox4.Text + "',Joining_Date='" + TextBox5.Text + "' where ManagerID='" + TextBox1.Text + "' ";
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
            Response.Redirect("~/Manager.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";

            string query = "delete from Manager where ManagerID='" + TextBox1.Text + "' ";
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
            Response.Redirect("~/Manager.aspx");
        }
    }
}