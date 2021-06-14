using System;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Text;
using MySql.Data.MySqlClient;

namespace EmployeTrackingSystem
{
    public partial class ManagementPanel_Page : System.Web.UI.Page
    {

        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                //conn.Open();
                //MySqlDataAdapter da_data = new MySqlDataAdapter("SELECT * FROM employees", conn);
                //DataTable mydatatable_data = new DataTable();
                //da_data.Fill(mydatatable_data);
                //gvData.DataSource = mydatatable_data;
                //gvData.DataBind();
                //conn.Close();
                
            }
            
            else
            {
                Response.Redirect("Index.aspx");
            }
            
        }
        public void demo()
        {
            using (conn)
            {
                MySqlCommand command_d = new MySqlCommand(
                  "SELECT * FROM employees;",
                  conn);
                conn.Open();

                MySqlDataReader reader = command_d.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Response.Write("<tr><td>" + reader["empID"].ToString() + "</td><td>" + reader["empName"].ToString() + "</td><td>" + reader["empSurname"].ToString() + "</td><td>" + reader["CardID"].ToString() + "</td></tr>");
                        //Response.Write("<td>" + reader["CardID"].ToString() + "</td>");
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }
        public void demo2()
        {
            using (conn)
            {
                MySqlCommand command_d = new MySqlCommand(
                  "SELECT * FROM logs_employee",
                  conn);
                conn.Open();

                MySqlDataReader reader = command_d.ExecuteReader();

                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Response.Write("<tr><td>" + reader["emp_id"].ToString() + "</td><td>" + reader["emp_name"].ToString() + "</td><td>" + reader["emp_surname"].ToString() + "</td><td>" + reader["emp_card_id"].ToString() + "</td><td>" + reader["snap_time"].ToString() + "</td></tr>");
                        //Response.Write("<td>" + reader["snap_time"].ToString() + "</td>");
                    }
                }
                else
                {
                    Console.WriteLine("No rows found.");
                }
                reader.Close();
            }
        }

    }
}