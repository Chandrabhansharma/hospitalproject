using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace hospitalproject
{
    public partial class _default : System.Web.UI.Page
    {
        API.modules api = new API.modules();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DateTime now = DateTime.Now;
                HttpCookie myCookie = new HttpCookie("connection");
                myCookie.Value = "";
                myCookie.Path = "/";
                myCookie.Expires = now.AddDays(-11);
                Response.Cookies.Add(myCookie);
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
                Response.Cache.SetNoStore();
            }
        }

        protected void login_Click(object sender, EventArgs e)
        {
            dt = api.login(username.Text.Trim(), password.Text.Trim());
            if (dt.Rows.Count > 0)
            {
                Session["username"] = dt.Rows[0]["username"].ToString();
                Session["permission"] = dt.Rows[0]["permission"].ToString();
                Response.Redirect("dashboard.aspx");

            }
            else
            {
                erro.Text = "User Name or Password is Incorrect";
            }
        }
    }
}