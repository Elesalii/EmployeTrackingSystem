﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;

namespace EmployeTrackingSystem
{
   
    
    public partial class HomePage : System.Web.UI.Page
    {

        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

       

        protected void btn_login_Click(object sender, EventArgs e)
        {
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("Select * from patron where username=@P1 and password=@P2", conn);
            cmd.Parameters.AddWithValue("@P1", usernametext.Text);
            cmd.Parameters.AddWithValue("@P2", passwordtext.Text);
            MySqlDataReader dr = cmd.ExecuteReader();
            if(dr.Read())
            {
                Session["username"] = usernametext.Text;
                Response.Redirect("ControlPanel_Page.aspx");
            }
            else
            {
                errorLabel.Visible = true;
            }
        }

        protected void btn_register_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegisterPage.aspx");
        }

        protected void btn_to_recovery_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword_Page.aspx");
        }
    }
}