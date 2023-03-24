using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalproject.modules
{
    public partial class consultant : System.Web.UI.Page
    {
        API.modules moduledata = new API.modules();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                date.Text = DateTime.Now.ToString("yyyy-MM-dd");
                dt = moduledata.consultantsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
            }
        }
        private void data()
        {
            date.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }

        protected void save_Click(object sender, EventArgs e)
        {

            try
            {
                moduledata.consultantsave(doctorid.Text, doctorname.Text, licenceno.Text, specialization.Text, designation.Text, qualification.Text, mobilenumber.Text, mobilenumber2.Text,email.Text,address.Text,city.Text,state.Text, shift.SelectedValue,date.Text);
              ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Successfully !!!', 'success').then((value) => {window.location = 'consultant.aspx'})", true);
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
                    dt = moduledata.consultantsearch(e.CommandArgument.ToString(), "%");
                    doctorid.Text = dt.Rows[0]["doctorid"].ToString();
                    doctorname.Text = dt.Rows[0]["doctorname"].ToString();
                    licenceno.Text = dt.Rows[0]["age"].ToString();
                    specialization.Text = dt.Rows[0]["specilazation"].ToString();
                    designation.Text = dt.Rows[0]["designation"].ToString();
                    qualification.Text = dt.Rows[0]["qualification"].ToString();
                    mobilenumber.Text = dt.Rows[0]["mobilenumber"].ToString();
                    mobilenumber2.Text = dt.Rows[0]["mobilenumber2"].ToString();
                    email.Text = dt.Rows[0]["email"].ToString();
                    address.Text = dt.Rows[0]["address"].ToString();
                    city.Text = dt.Rows[0]["city"].ToString();
                    state.Text = dt.Rows[0]["state"].ToString();
                    shift.Text = dt.Rows[0]["visittype"].ToString();
                    date.Text = dt.Rows[0]["date"].ToString();
                }
                else
                {
                    moduledata.consultantdelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'consultant.aspx'})", true);
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