using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;
using System.Data;
using MySql.Data.MySqlClient;

namespace EmployeTrackingSystem
{
    public partial class ForgotPassword_Page : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
      
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn_backto_login_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void btn_recover_pw_Click(object sender, EventArgs e)
        {
            try
            {
                    conn.Open();
                    MySqlCommand recovercmd = new MySqlCommand("SELECT password FROM patron WHERE e_mail='" + txtemail.Text + "'", conn);
                    MySqlDataReader dr_recover = recovercmd.ExecuteReader();
                    dr_recover.Read();
                    string recovery = dr_recover["password"].ToString();
                    dr_recover.Close();
                    conn.Close();
                    MailMessage mail = new MailMessage();
                    mail.From = new MailAddress("employetrackingsystem@gmail.com");
                    mail.To.Add(txtemail.Text);
                    mail.Subject = "Recovery";
                    mail.Body = recovery;
                    SmtpClient message = new SmtpClient();
                    message.Credentials = new NetworkCredential("employetrackingsystem@gmail.com", "empets1096");
                    message.Port = 587;
                    message.Host = "smtp.gmail.com";
                    message.EnableSsl = true;
                    message.Send(mail);
                    Response.Write("<script>alert('Recovery mail sent')</script>");
            }
            catch
            {
                Response.Write("<script>alert('No such an e-mail registered')</script>");
            }
        }
    }
}