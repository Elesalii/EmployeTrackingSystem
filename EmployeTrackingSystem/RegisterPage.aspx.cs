using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI.HtmlControls;
using System.Drawing;

namespace EmployeTrackingSystem
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
        public void patronRegister()
        {
            if(LabelMasterAutho.Text == "220")
            {
                conn.Open();
                string addquery = "INSERT INTO patron VALUES('"+textboxPatronID.Text.ToString() +"', '"+textboxCardID.Text.ToString() + "', '"+textboxUsername.Text.ToString() +"', '"+textboxPassword.Text.ToString()+"','"+textboxEmail.Text+"')";
                MySqlCommand addcommand = new MySqlCommand(addquery, conn);
                addcommand.ExecuteNonQuery();
                Response.Write("<script>alert('Inserted Successfully')</script>");
                conn.Close();
            }
            else
            {
                authorization_msg.Text = "CAN NOT REGISTER!";
                authorization_msg.ForeColor = Color.Red;
                authorization_msg.Visible = true;
            }


        }
        public void MasterCardAutho()
        {
            conn.Open();
            MySqlCommand verifycommand = new MySqlCommand("SELECT * FROM logs ORDER BY id DESC LIMIT 1", conn);
            MySqlDataReader drVerifier = verifycommand.ExecuteReader();
            drVerifier.Read();
            LabelMasterAutho.Text = drVerifier["scannedid"].ToString();
            LabelMasterAutho.Visible = false;
            drVerifier.Close();
            conn.Close();
            if(LabelMasterAutho.Text == "220")
            {
                authorization_msg.Text = "AUTHORIZATION COMPLETE";
                authorization_msg.ForeColor = Color.Green;
                authorization_msg.Visible = true;
            }
            else
            {
                authorization_msg.Text = "AUTHORIZATION FAILED";
                authorization_msg.ForeColor = Color.Red;
                authorization_msg.Visible = true;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btn_register2_Click(object sender, EventArgs e)
        {
            patronRegister(); 
        }

        protected void LabelMasterAutho_Load(object sender, EventArgs e)
        {
            //HtmlMeta metatag_master = new HtmlMeta();
            //metatag_master.HttpEquiv = "refresh";
            //metatag_master.Content = "10";
            //Page.Header.Controls.Add(metatag_master);
            ////Response.AppendHeader("refresh", "5");
        }

        protected void btn_authorize_Click(object sender, EventArgs e)
        {
            MasterCardAutho();
        }
    }
}