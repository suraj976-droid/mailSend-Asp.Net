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
    public partial class Mail : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            sendMail(TextBox1.Text,TextBox2.Text,TextBox3.Text);
        }

        public void sendMail(string toEmail,string sub, string body)
        {
            string[] multimail = toEmail.Split(',');
            MailMessage mail = new MailMessage();
            mail.From =new MailAddress("surazkharwar772@gmail.com");
            foreach (string email in multimail)
            {
                mail.To.Add(toEmail); 
            }
           
            mail.Subject = sub;
            mail.Body = body;

          

            if (FileUpload1.HasFiles) {

                foreach (HttpPostedFile file in FileUpload1.PostedFiles)
                {
                    string filename = file.FileName;
                    mail.Attachments.Add(new Attachment(file.InputStream, filename));
                }
            }

            SmtpClient smtp = new SmtpClient("smtp.gmail.com");
            smtp.Credentials = new NetworkCredential("surazkharwar772@gmail.com", "bxzx hrng lrkq bnwp");
            smtp.Port = 587;
            smtp.EnableSsl = true;
            smtp.Send(mail);

            Response.Write("<script>alert('Mail Send Successfully')</script>");
        }
    }
}