using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace janBatchWebFormApp
{
    public partial class Second : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "Page Load event";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name, dept;
            int id;
            double salary;

            name = TextBox2.Text;
            id = int.Parse(TextBox1.Text);
            salary = double.Parse(TextBox3.Text);
            dept = DropDownList1.SelectedValue;

            Label1.Text = $"name is {name},Id is {id}, salary is {salary} , dept is {dept}";

        }
    }
}