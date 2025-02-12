using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace janBatchWebFormApp
{
    public partial class AutoPostBackEvent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            int a, b, c;

            a = int.Parse(TextBox1.Text);
            b = int.Parse(TextBox2.Text);
            c = a + b;

            Label1.Text = $"Addition is {c}";
        }
    }
}