using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalproject.opd
{
    public partial class opddashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["permission"].ToString() == "Dr")
            {
                opdreg.Visible = false;
                pres.Visible = true;
            }
            if (Session["permission"].ToString() == "User")
            {
                opdreg.Visible =true;
                pres.Visible = false;
            }
        }
    }
}