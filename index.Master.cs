using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace hospitalproject
{
    public partial class index : System.Web.UI.MasterPage
    {
        API.modules api = new API.modules();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (!IsPostBack)
                {
                    dt = api.hospitalsearch("%", "%");
                    logo.Src = dt.Rows[0]["logo"].ToString();
                    hospitalname.Text = dt.Rows[0]["hospitalname"].ToString();
                    username.Text = Session["username"].ToString();
                    if(Session["permission"].ToString()=="Admin")
                    {
                        opd.Visible = true;
                        module.Visible = true;
                    }
                    if (Session["permission"].ToString() == "Dr")
                    {
                        opd.Visible = true;
                        module.Visible = false;
                    }
                    if (Session["permission"].ToString() == "User")
                    {
                        opd.Visible = true;
                        module.Visible = false;
                    }
                }
            }

            catch (Exception ex)
            {
                Response.Redirect("~/Default.aspx", false);
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            try
            {  
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
                Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
                DateTime now = DateTime.Now;
                HttpCookie myCookie = new HttpCookie("connection");
                myCookie.Expires = now.AddDays(-1);
                Response.Cache.SetNoStore();
                Session.Abandon();
                Session.Clear();
                Session.RemoveAll();
                System.Web.Security.FormsAuthentication.SignOut();
                Response.Redirect("~/Default.aspx", false);
            }
            catch (Exception ex)
            {

            }
        }
    }
}