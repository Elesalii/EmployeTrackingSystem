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
    public partial class Add_Delete_Page : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label_session_add_delete_page.Text = "Welcome " + Session["username"].ToString();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }
        protected void Timer_for_card_Tick(object sender, EventArgs e)
        {
            Lastscannedid_card();
        }
        protected void Lastscannedid_card()
        {
            try
            {
                conn.Open();
                MySqlCommand cmd_card_id = new MySqlCommand("SELECT * FROM logs ORDER BY id DESC LIMIT 1;", conn);
                MySqlDataReader dr_card = cmd_card_id.ExecuteReader();
                dr_card.Read();
                textbox_card_id.Text = dr_card["scannedid"].ToString();
                dr_card.Close();
                conn.Close();
            }
            catch
            {
                Response.Write("<script>alert('No card scan detected')</script>");
            }
        }

        protected void btn_delete_emp_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string deletequery_emp = "DELETE FROM employees where cardid='" + textbox_card_id.Text.ToString() + "'";
                MySqlCommand deletecommand_emp = new MySqlCommand(deletequery_emp, conn);
                deletecommand_emp.ExecuteNonQuery();
                label_query_status.ForeColor = Color.Green;
                label_query_status.Text = "EMPLOYEE DELETED SUCCESSFULLY";
                label_query_status.Visible = true;
                conn.Close();
            }
            catch
            {
                label_query_status.ForeColor = Color.Red;
                label_query_status.Text = "EMPLOYEE DELETION PROBLEM";
                label_query_status.Visible = true;
            }
        }
        protected void btn_logout_add_delete_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Index.aspx");
        }

        protected void btn_add_emp_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string addquery_emp = "INSERT INTO employees VALUES('" + textbox_emp_id.Text.ToString() + "', '" + textbox_emp_name.Text.ToString() + "', '" + textbox_emp_surname.Text.ToString() + "', '" + textbox_card_id.Text.ToString() + "')";
                MySqlCommand addcommand_emp = new MySqlCommand(addquery_emp, conn);
                addcommand_emp.ExecuteNonQuery();
                label_query_status.ForeColor = Color.Green;
                label_query_status.Text = "EMPLOYEE INSERTED SUCCESSFULLY";
                label_query_status.Visible = true;
                conn.Close();
            }
            catch
            {
                label_query_status.ForeColor = Color.Red;
                label_query_status.Text = "EMPLOYEE INSERTATION PROBLEM";
                label_query_status.Visible = true;
            }
        }

    }
    
}