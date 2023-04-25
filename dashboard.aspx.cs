using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalproject
{
    public partial class DashBoard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["permission"].ToString() == "Admin")
            {
                opd2.Visible = true;
                module2.Visible = true;
            }
            if (Session["permission"].ToString() == "Dr")
            {
                opd2.Visible = true;
                module2.Visible = false;
            }
            if (Session["permission"].ToString() == "User")
            {
                opd2.Visible = true;
                module2.Visible = false;
            }
        }
    }
}