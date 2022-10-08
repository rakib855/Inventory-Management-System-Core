using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace InventoryManagementProject
{
    public class ClassDAL
    {
        public DataTable GetBrandName()
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string query = "SELECT BrandID, Brand_Name FROM Brand";

            SqlDataAdapter da = new SqlDataAdapter(query, constr);
            DataTable table = new DataTable();

            da.Fill(table);
            return table;
        }

        public void AddBrandName(Class c)
        {
            string constr = "Data Source=DESKTOP-T4CERU2;Initial Catalog=InventoryManagementSystem;Integrated Security=True;";
            string query = "INSERT INTO Brand (Brand_Name) VALUES(@Brand_Name)";

            SqlConnection con = new SqlConnection(constr);
            SqlCommand com = new SqlCommand(query, con);

            com.Parameters.AddWithValue("@Brand_Name", c.Brand_Name);

            con.Open();
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}