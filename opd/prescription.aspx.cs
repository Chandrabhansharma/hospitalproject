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
        API.opd opddata = new API.opd();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                date.Text = DateTime.Now.ToString("yyyy-MM-dd");
                followup.Text = DateTime.Now.ToString("yyyy-MM-dd");
                dt = opddata.prescriptionsearch("%");
                grddata.DataSource = dt;
                grddata.DataBind();

            }
        }
        string signaturepath = "";
        private void data()
        {
            date.Text = DateTime.Now.ToString("yyyy-MM-dd");
            followup.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                if (signature.PostedFile.ContentLength > 1)
                {
                    signature.SaveAs(Server.MapPath("~/photo/Signature" + name.Text + ".jpg"));
                    signaturepath = "~/photo/Signature" + name.Text + ".jpg";
                }
                opddata.prescriptionsubmit(doctorid.Text,doctorname.Text,qualification.Text,specialization.Text,phonenumber.Text,patientno.Text, patientname.Text, age.Text, gender.SelectedValue, mobilenumber.Text, address.Text,date.Text, height.Text, weight.Text,bloodpressure.Text,temperature.Text,Symptoms.Text,medicinecompanyname.Text,medicinename.Text,dosage.Text,duration.Text,testing.Text, avoid.Text, followup.Text, signaturepath.ToString(), name.Text);
                // Response.Write("Save Successfully !!!");
                // Response.Write("<script>alert('Data Save Successfully!!!');</script>");
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
                    dt = opddata.prescriptionsearch(e.CommandArgument.ToString());
                    doctorid.Text = dt.Rows[0]["doctorid"].ToString();
                    doctorname.Text = dt.Rows[0]["doctorname"].ToString();
                    qualification.Text = dt.Rows[0]["qualification"].ToString();
                    specialization.Text = dt.Rows[0]["specilazation"].ToString();
                    phonenumber.Text = dt.Rows[0]["phonenumber"].ToString();
                    patientno.Text = dt.Rows[0]["patientno"].ToString();
                    patientname.Text = dt.Rows[0]["patientname"].ToString();
                    age.Text = dt.Rows[0]["age"].ToString();
                    gender.Text = dt.Rows[0]["gender"].ToString();
                    mobilenumber.Text = dt.Rows[0]["mobilenumber"].ToString();
                    date.Text = dt.Rows[0]["date"].ToString();
                    address.Text = dt.Rows[0]["address"].ToString();
                    height.Text = dt.Rows[0]["height"].ToString();
                    weight.Text = dt.Rows[0]["weight"].ToString();
                    bloodpressure.Text = dt.Rows[0]["bloodpressure"].ToString();
                    temperature.Text = dt.Rows[0]["temperature"].ToString();

                    Symptoms.Text = dt.Rows[0]["symptoms"].ToString();
                    medicinecompanyname.Text = dt.Rows[0]["medicinecompanyname"].ToString();
                    medicinename.Text = dt.Rows[0]["medicinename"].ToString();
                    dosage.Text = dt.Rows[0]["dosage"].ToString();
                    duration.Text = dt.Rows[0]["duration"].ToString();
                    testing.Text = dt.Rows[0]["testing"].ToString();
                    avoid.Text = dt.Rows[0]["avoid"].ToString();
                    followup.Text = dt.Rows[0]["followup"].ToString();
                   

                }
                else
                {
                    opddata.prescriptiondelete(e.CommandArgument.ToString());
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

    }
}