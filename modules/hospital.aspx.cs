using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalproject.modules
{
    public partial class hospital : System.Web.UI.Page
    {
        API.modules moduledata = new API.modules();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = moduledata.hospitalsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
            }
        }
        string logopath = "";
        protected void save_Click(object sender, EventArgs e)
        {
            try
            {
                if (logo.PostedFile.ContentLength > 1)
                {
                    logo.SaveAs(Server.MapPath("~/Photo/Hospital" + hospitalname.Text + ".jpg"));
                    logopath = "~/Photo/Hospital" + hospitalname.Text + ".jpg";
                }
                moduledata.hospitalsave(hospitalname.Text, slogan.Text, mobileno.Text, mobileno2.Text, emailid.Text, website.Text, medicalcouncil.Text, Convert.ToInt32(medicalregno.Text), address1.Text, address2.Text, pincode.Text, city.Text, state.SelectedValue, country.SelectedValue, logopath.ToString());
                // Response.Write("Save Successfully !!!");
                // Response.Write("<script>alert('Data Save Successfully!!!');</script>");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Successfully !!!', 'success').then((value) => {window.location = 'hospital.aspx'})", true);
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('','" + ex.Message + "', 'error')", true);
            }
        }
        protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "btnedt")
                {
                    dt = moduledata.hospitalsearch(e.CommandArgument.ToString(), "%");
                    hospitalname.Text = dt.Rows[0]["hospitalname"].ToString();
                    slogan.Text = dt.Rows[0]["slogan"].ToString();
                    address1.Text = dt.Rows[0]["address1"].ToString();
                    address2.Text = dt.Rows[0]["address2"].ToString();
                }
                else
                {
                    moduledata.hospitaldelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'hospital.aspx'})", true);
                }
            }
            catch (Exception ex)
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('','" + ex.Message + "', 'error')", true);
            }

        }

        protected void grddata_PreRender(object sender, EventArgs e)
        {
            if (grddata.Rows.Count > 0)
            {
                grddata.UseAccessibleHeader = true;
                grddata.HeaderRow.TableSection = TableRowSection.TableHeader;
                grddata.FooterRow.TableSection = TableRowSection.TableFooter;
            }

        }
    }
}