﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EmployeTrackingSystem
{
    public partial class ManagementPanel_Page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["username"] != null)
            {

            }
            else
            {
                Response.Redirect("Index.aspx");
            }
        }
    }
}