using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalproject.opd
{
    public partial class opdregistration : System.Web.UI.Page
    {
        API.opd opddata = new API.opd();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = opddata.opdregistrationsearch("%");
                grddata.DataSource = dt;
                grddata.DataBind();
            }
        }

        protected void save_Click(object sender, EventArgs e)
        {
            try
            {
                opddata.opdregistrationsave(patientid.Text, patientname.Text, age.Text, gender.SelectedValue, date.Text, mobilenumber.Text, mobilenumber2.Text, email.Text, address.Text, department.SelectedValue, consultant.SelectedValue, visitetype.SelectedValue, fee.SelectedValue, height.Text, weight.Text, bloodpressure.Text, temperature.Text, remark.Text);
                // Response.Write("Save Successfully !!!");
                // Response.Write("<script>alert('Data Save Successfully!!!');</script>");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Successfully !!!', 'success').then((value) => {window.location = 'opdregistration.aspx'})", true);
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
                    dt = opddata.opdregistrationsearch(e.CommandArgument.ToString());
                    patientid.Text = dt.Rows[0]["patientid"].ToString();
                    patientname.Text = dt.Rows[0]["patientname"].ToString();
                    age.Text = dt.Rows[0]["age"].ToString();
                    gender.Text = dt.Rows[0]["gender"].ToString();
                    date.Text = dt.Rows[0]["date"].ToString();
                    mobilenumber.Text = dt.Rows[0]["mobilenumber"].ToString();
                    mobilenumber2.Text = dt.Rows[0]["mobilenumber2"].ToString();
                    email.Text = dt.Rows[0]["email"].ToString();
                    address.Text = dt.Rows[0]["address"].ToString();
                    department.Text = dt.Rows[0]["department"].ToString();
                    consultant.Text = dt.Rows[0]["consultant"].ToString();
                    visitetype.Text = dt.Rows[0]["visittype"].ToString();
                    fee.Text = dt.Rows[0]["fee"].ToString();
                    height.Text = dt.Rows[0]["height"].ToString();
                    weight.Text = dt.Rows[0]["weight"].ToString();
                    bloodpressure.Text = dt.Rows[0]["bloodpressure"].ToString();
                    temperature.Text = dt.Rows[0]["temperature"].ToString();
                    remark.Text = dt.Rows[0]["remark"].ToString();
                }
                else
                {
                    opddata.opdregistrationdelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'Registration.aspx'})", true);
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