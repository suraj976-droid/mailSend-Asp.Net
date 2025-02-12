using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace janBatchWebFormApp
{
    public partial class DbImplementation : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pname=TextBox1.Text, prodcat= DropDownList1.SelectedValue;
            double price=double.Parse(TextBox3.Text);

            string pimg; 

            FileUpload1.SaveAs(Server.MapPath("Products/") + Path.GetFileName(FileUpload1.FileName));
            pimg = "Products/" + Path.GetFileName(FileUpload1.FileName);

            String q = $"exec SaveProduct '{pname}','{prodcat}','{price}','{pimg}'";
            SqlCommand cmd= new SqlCommand(q,conn);
            cmd.ExecuteNonQuery();

            Response.Write("<script>alert('Product Saved Successfully')</script>");
            FetchProduct();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            FetchProduct();
        }

        public void FetchProduct()
        {
            string q = $"exec FetchProduct";
            SqlDataAdapter adapter = new SqlDataAdapter(q,conn);

            DataTable dt = new DataTable();

            adapter.Fill(dt);

            GridView1.DataSource = dt;
            GridView1.DataBind();

            DataList1.DataSource = dt;
            DataList1.DataBind();


        }
    }
}