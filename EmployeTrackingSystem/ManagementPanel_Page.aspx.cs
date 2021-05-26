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
    public partial class ManagementPanel_Page : System.Web.UI.Page
    {
        MySqlConnection conn = new MySqlConnection(@"server=127.0.0.1;user id=alieles;database=ets; password=mymind3278.");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {
                conn.Open();
                MySqlDataAdapter da_data = new MySqlDataAdapter("SELECT * FROM logs_employee ORDER BY ID DESC LIMIT 5;", conn);
                DataTable mydatatable_data = new DataTable();
                da_data.Fill(mydatatable_data);
                gvData.DataSource = mydatatable_data;
                gvData.DataBind();
                conn.Close();
            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }
    }
}