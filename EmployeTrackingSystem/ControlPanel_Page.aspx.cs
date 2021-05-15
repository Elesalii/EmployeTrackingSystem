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
    public partial class ControlPanel_Page : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.Open();
            MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM employees", conn);
            DataTable mydatatable = new DataTable();
            da.Fill(mydatatable);
            gvEmployees.DataSource = mydatatable;
            gvEmployees.DataBind();
            conn.Close();
            Lastscanned();
            LastScannedName();
        }
        protected void Lastscanned()
        {
            conn.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM logs ORDER BY id DESC LIMIT 1;", conn);
            MySqlDataReader dr = cmd.ExecuteReader();
            dr.Read();
            textboxlastscannedid.Text = dr["scannedid"].ToString();
            dr.Close();
            conn.Close();
        }
        protected void LastScannedName()
        {
            try
            {
                if (textboxlastscannedid.Text != null)
                {
                    conn.Open();
                    MySqlCommand cmd_empname = new MySqlCommand("SELECT empName FROM employees where CardID ='" + textboxlastscannedid.Text + "'", conn);
                    MySqlDataReader dr_empname = cmd_empname.ExecuteReader();
                    dr_empname.Read();
                    textbox_empname.Text = dr_empname["empName"].ToString();
                    dr_empname.Close();
                    conn.Close();
                }
                else
                {
                    Response.Write("<script>alert('No card scan detected')</script>");
                }
            }
            catch
            {
                Response.Write("<script>alert('Card ID did not match')</script>");
            }
        }
    }
}