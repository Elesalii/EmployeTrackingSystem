using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MySql.Data.MySqlClient;
using System.Web.UI.HtmlControls;

namespace EmployeTrackingSystem
{
    public partial class ControlPanel_Page : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                conn.Open();
                MySqlDataAdapter da = new MySqlDataAdapter("SELECT * FROM employees", conn);
                DataTable mydatatable = new DataTable();
                da.Fill(mydatatable);
                gvEmployees.DataSource = mydatatable;
                gvEmployees.DataBind();
                conn.Close();
                Lastscannedid();
                LastScannedName();
                LastScannedSurname();
                LastScannedEmpid();
                Last_ten_records();
                Response.AppendHeader("refresh", "5");
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }
        //try cathlere tekrar bakılacak -- eğer textchanged eventindeki uyarı yeterse kaldırılabilir--
        protected void Lastscannedid()
        {
            try
            {
                conn.Open();
                MySqlCommand cmd = new MySqlCommand("SELECT * FROM logs ORDER BY id DESC LIMIT 1;", conn);
                MySqlDataReader dr = cmd.ExecuteReader();
                dr.Read();
                textboxlastscannedid.Text = dr["scannedid"].ToString();
                dr.Close();
                conn.Close();
                //Response.AppendHeader("refresh", "5");
            }
            catch
            {
                Response.Write("<script>alert('No card scan detected')</script>");
            }
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
                Response.Write("unmatched ID");
            }
        }
        protected void LastScannedSurname()
        {
            try
            {
                if (textboxlastscannedid.Text != null)
                {
                    conn.Open();
                    MySqlCommand cmd_empSurname = new MySqlCommand("SELECT empSurname FROM employees where CardID ='" + textboxlastscannedid.Text + "'", conn);
                    MySqlDataReader dr_empSurname = cmd_empSurname.ExecuteReader();
                    dr_empSurname.Read();
                    textbox_empsurname.Text = dr_empSurname["empSurname"].ToString();
                    dr_empSurname.Close();
                    conn.Close();
                }

                else
                {
                    Response.Write("<script>alert('No card scan detected')</script>");
                }
            }
            catch
            {
                Response.Write(".");
            }
        }
        protected void LastScannedEmpid()
        {
            try
            {
                if (textboxlastscannedid.Text != null)
                {
                    conn.Open();
                    MySqlCommand cmd_empid = new MySqlCommand("SELECT empID FROM employees where CardID ='" + textboxlastscannedid.Text + "'", conn);
                    MySqlDataReader dr_empid = cmd_empid.ExecuteReader();
                    dr_empid.Read();
                    textbox_empID.Text = dr_empid["empID"].ToString();
                    dr_empid.Close();
                    conn.Close();
                }
                else
                {
                    Response.Write("<script>alert('No card scan detected')</script>");
                }
            }
            catch
            {
                Response.Write(".");
            }
        }

        protected void textbox_empname_TextChanged(object sender, EventArgs e)
        {
            //conn.Open();
            //string addEmpquery = "INSERT INTO logs_employee(emp_id,emp_name,emp_surname,emp_card_id) VALUES('" + textbox_empID.Text.ToString() + "', '" + textbox_empname.Text.ToString() + "', '" + textbox_empsurname.Text.ToString() + "', '" + textboxlastscannedid.Text.ToString() + "')";
            //MySqlCommand add_Empcommand = new MySqlCommand(addEmpquery, conn);
            //add_Empcommand.ExecuteNonQuery();
            //Response.Write("<script>alert('Inserted Successfully')</script>");
            //conn.Close();
            //Response.Write("<script>alert('TextChanged')</script>");
        }

        protected void btn_scan_process_Click(object sender, EventArgs e)
        {
           
        }

        protected void textboxlastscannedid_Load(object sender, EventArgs e)
        {
            //HtmlMeta metatag = new HtmlMeta();
            //metatag.HttpEquiv = "refresh";
            //metatag.Content = "10";
            //Page.Header.Controls.Add(metatag);
        }
        protected void Last_ten_records()
        {
            if (conn.State == ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();
            MySqlDataAdapter da_records = new MySqlDataAdapter("SELECT * FROM logs_employee ORDER BY ID DESC LIMIT 10;", conn);
            DataTable mydatatable_records = new DataTable();
            da_records.Fill(mydatatable_records);
            gvRecords.DataSource = mydatatable_records;
            gvRecords.DataBind();
            conn.Close();
        }

        protected void btn_logout_Click(object sender, EventArgs e)
        {
            Session["username"] = null;
            Response.Redirect("Index.aspx");
        }
    }
}