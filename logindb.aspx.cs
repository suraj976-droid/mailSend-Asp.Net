using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace janBatchWebFormApp
{
    public partial class logindb : System.Web.UI.Page
    {
        SqlConnection conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["dbconn"].ConnectionString;
            conn = new SqlConnection(cs);
            conn.Open();

            string s = $"exec logincheck 'john','john@gmail.com'";
            SqlCommand cmd = new SqlCommand(s, conn);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows)
            {
                while (dr.Read())
                {
                    if (dr["email"].Equals("john")  && dr["pass"].Equals("john@gmail.com"))
                    {
                        Response.Write("<script>alert('login Successfully')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('login not Successfully')</script>");
                    }
                }
               
            }
        }
    }
}