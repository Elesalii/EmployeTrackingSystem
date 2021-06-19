using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Drawing;

namespace EmployeTrackingSystem
{
    public partial class UpdatePage : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label_session_update_page.Text = "Welcome " + Session["username"].ToString();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btn_update_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string updatequery_emp = "UPDATE employees SET empID = '"+textbox_emp_id_update.Text.ToString()+"', empName = '"+textbox_emp_name_update.Text.ToString()+"', empSurname = '"+textbox_emp_surname_update.Text.ToString()+"' where CardID ='"+textbox_card_id_update.Text.ToString()+"'";
                MySqlCommand updatecommand_emp = new MySqlCommand(updatequery_emp, conn);
                updatecommand_emp.ExecuteNonQuery();
                label_query_status.ForeColor = Color.Green;
                label_query_status.Text = "EMPLOYEE UPDATED SUCCESSFULLY";
                label_query_status.Visible = true;
                conn.Close();
            }
            catch
            {
                label_query_status.ForeColor = Color.Red;
                label_query_status.Text = "EMPLOYEE UPDATE PROBLEM";
                label_query_status.Visible = true;
            }
        }

        protected void btn_logout_update_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Index.aspx");
        }

        protected void Timer_for_card_Tick(object sender, EventArgs e)
        {
            Lastscannedid_card_update();
        }
        protected void Lastscannedid_card_update()
        {
            try
            {
                conn.Open();
                MySqlCommand cmd_card_id = new MySqlCommand("SELECT * FROM logs ORDER BY id DESC LIMIT 1;", conn);
                MySqlDataReader dr_card = cmd_card_id.ExecuteReader();
                dr_card.Read();
                textbox_card_id_update.Text = dr_card["scannedid"].ToString();
                dr_card.Close();
                conn.Close();
            }
            catch
            {
                Response.Write("<script>alert('No card scan detected')</script>");
            }
        }
    }
}