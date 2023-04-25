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
            if(!IsPostBack)
            {
                dt = api.hospitalsearch("%", "%");
                logo.Src = dt.Rows[0]["logo"].ToString();
                hospitalname.Text = dt.Rows[0]["hospitalname"].ToString();
                username.Text = Session["username"].ToString();
            }
            //try
            //{
            //    user.userlogupdate(userid.Value, logindate.Value, logintime.Value, DateTime.Now.ToString("hh:mm:ss"), "Logout by User");
            //    Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //    Response.Cache.SetExpires(DateTime.Now.AddDays(-1));
            //    DateTime now = DateTime.Now;
            //    HttpCookie myCookie = new HttpCookie("connection");
            //    myCookie.Expires = now.AddDays(-1);
            //    Response.Cache.SetNoStore();
            //    Session.Abandon();
            //    Session.Clear();
            //    Session.RemoveAll();
            //    System.Web.Security.FormsAuthentication.SignOut();
            //    Response.Redirect("~/Default", false);
            //}
            //catch (Exception ex)
            //{

            //}
        }
    }
}