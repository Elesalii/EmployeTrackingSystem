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
    public partial class Add_Delete_Patron_Page : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                Label_session.Text = "Welcome " + Session["username"].ToString();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }

        protected void btn_logout_add_delete_patron_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Index.aspx");
        }

        protected void btn_add_patron_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string addquery_patron = "INSERT INTO patron VALUES('" + textbox_patron_id.Text.ToString() + "', '" + textbox_username.Text.ToString() + "', '" + textbox_password.Text.ToString() + "', '" + textbox_email.Text.ToString() + "')";
                MySqlCommand addcommand_patron = new MySqlCommand(addquery_patron, conn);
                addcommand_patron.ExecuteNonQuery();
                label_query_status.ForeColor = Color.Green;
                label_query_status.Text = "PATRON INSERTED SUCCESSFULLY";
                label_query_status.Visible = true;
                conn.Close();
            }
            catch
            {
                label_query_status.ForeColor = Color.Red;
                label_query_status.Text = "PATRON INSERTATION PROBLEM";
                label_query_status.Visible = true;
            }
        }

        protected void btn_delete_patron_Click(object sender, EventArgs e)
        {
            try
            {
                conn.Open();
                string deletequery_patron = "DELETE FROM patron where password='" + textbox_password.Text.ToString() + "'";
                MySqlCommand deletecommand_patron = new MySqlCommand(deletequery_patron, conn);
                deletecommand_patron.ExecuteNonQuery();
                label_query_status.ForeColor = Color.Green;
                label_query_status.Text = "PATRON DELETED SUCCESSFULLY";
                label_query_status.Visible = true;
                conn.Close();
            }
            catch
            {
                label_query_status.ForeColor = Color.Red;
                label_query_status.Text = "PATRON DELETION PROBLEM";
                label_query_status.Visible = true;
            }
        }
    }
}