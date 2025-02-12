using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace janBatchWebFormApp
{
    public partial class OtpVerify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string email;
            int gotp;
            email = TextBox1.Text;
            gotp = GenerateOTP();
            Session["Gotp"] = gotp;

            sendMail(email, gotp);
        }

        public int GenerateOTP()
        {
            Random random = new Random();
            return random.Next(1001,9999);
        }

        public void sendMail(string toEmail, int otp)
        {
            MailMessage mail = new MailMessage();
            mail.From = new MailAddress("surazkharwar772@gmail.com");    
            mail.To.Add(toEmail);
            mail.Subject = "regarding OTP";
            mail.Body = $"Your Generated OTP is {otp}";

            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Credentials = new NetworkCredential("surazkharwar772@gmail.com", "bxzx hrng lrkq bnwp");

            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(mail);

            Response.Write("<script>alert('Mail Send Successfully')</script>");


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Session["Gotp"]!= null)
            {
                if (Session["Gotp"].ToString().Equals(TextBox2.Text))
                {
                    Response.Write("<script>alert('Verified Successfully')</script>");
                }
                else
                {
                    {
                        Response.Write("<script>alert('invalid OTP')</script>");
                    }
                }
            }
        }
    }
}