using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace EmployeTrackingSystem
{
    public partial class RegisterPage : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
        public void patronRegister()
        {
            if(LabelMasterAutho.Text == "212")
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
                Response.Write("<script>alert('MasterCard Authorazition FAILED!')</script>");
            }


        }
        public void MasterCardAutho()
        {
            conn.Open();
            MySqlCommand verifycommand = new MySqlCommand("SELECT * FROM logs ORDER BY id DESC LIMIT 1", conn);
            MySqlDataReader drVerifier = verifycommand.ExecuteReader();
            drVerifier.Read();
            LabelMasterAutho.Text = drVerifier["scannedid"].ToString();
            drVerifier.Close();
            conn.Close();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            MasterCardAutho();
        }

        protected void btn_register2_Click(object sender, EventArgs e)
        {
            patronRegister(); 
        }
    }
}