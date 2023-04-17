using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.NetworkInformation;
using System.Security.Cryptography.X509Certificates;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace hospitalproject.opd
{
    public partial class prescription : System.Web.UI.Page
    {
        API.opd prescriptiondata = new API.opd();
        API.opd opddata = new API.opd();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = prescriptiondata.prescriptionsearch("%");
                grddata.DataSource = dt;
                grddata.DataBind();
                data();
                dt = opddata.opdregistrationsearch("%","%");
                patientno.DataSource = dt.DefaultView.ToTable(true, "patientno");
                patientno.DataTextField = "patientno";
                patientno.DataValueField = "patientno";
                patientno.DataBind();
                patientno.Items.Insert(0, "---Select---");
            }
        }
        
        private void data()
        {
            followup.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
               
                prescriptiondata.prescriptionsubmit(patientno.SelectedValue, patientname.Text,medicinename.Text,dosage.Text,duration.Text,testing.Text, avoid.Text, followup.Text);
                ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Successfully !!!', 'success').then((value) => {window.location = 'prescription.aspx'})", true);
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
                    dt = prescriptiondata.prescriptionsearch(e.CommandArgument.ToString());
                    patientno.Text = dt.Rows[0]["patientno"].ToString();
                    patientname.Text = dt.Rows[0]["patientname"].ToString();
                    medicinename.Text = dt.Rows[0]["medicinename"].ToString();
                    dosage.Text = dt.Rows[0]["dosage"].ToString();
                    duration.Text = dt.Rows[0]["duration"].ToString();
                    testing.Text = dt.Rows[0]["testing"].ToString();
                    avoid.Text = dt.Rows[0]["avoid"].ToString();
                    followup.Text = dt.Rows[0]["followup"].ToString();
                }
                else
                {
                    prescriptiondata.prescriptiondelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'prescription.aspx'})", true);
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

        protected void patientno_SelectedIndexChanged(object sender, EventArgs e)
        {
            dt = opddata.pdata(patientno.SelectedValue);
            if (dt.Rows.Count > 0)
            {
                patientname.Text = dt.Rows[0]["patientname"].ToString();
            }
            else
            {
                patientname.Text = "NULL";
            }
        }
    }
}