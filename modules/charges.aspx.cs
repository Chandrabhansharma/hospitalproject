using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

namespace hospitalproject.modules
{
    public partial class charges : System.Web.UI.Page
    {
        API.modules chargesdata=new API.modules();
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dt = chargesdata.chargessearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();

                dt = consultant.consultantsearch("%", "%");
                doctorid.DataSource = dt.DefaultView.ToTable(true, "doctorid");
                doctorid.DataTextField = "doctorid";
                doctorid.DataValueField = "doctorid";
                doctorid.DataBind();
                doctorid.Items.Insert(0, "---Select---");

                dt = consultant.consultantsearch("%", "%");
                doctorname.DataSource = dt.DefaultView.ToTable(true, "doctorname");
                doctorname.DataTextField = "doctorname";
                doctorname.DataValueField = "doctorname";
                doctorname.DataBind();
                doctorname.Items.Insert(0, "---Select---");

                dt = consultant.consultantsearch("%", "%");
                specialization.DataSource = dt.DefaultView.ToTable(true, "specialization");
                specialization.DataTextField = "specialization";
                specialization.DataValueField = "specialization";
                specialization.DataBind();
                specialization.Items.Insert(0, "---Select---");
            }
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            chargesdata.chargessave(doctorid.Text,doctorname.Text, specialization.Text,date.Text,visittype.Text,fee.Text);
            ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Save Sucessfully!!!', 'success').then((value) => { window.location = 'charges.aspx'})", true);

        }
        protected void grddata_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            try
            {
                if (e.CommandName == "btnedt")
                {
                    dt = chargesdata.chargessearch(e.CommandArgument.ToString(), "%");
                    doctorid.SelectedValue = dt.Rows[0]["doctorid"].ToString();
                    doctorname.SelectedValue = dt.Rows[0]["doctorname"].ToString();
                    specialization.Text = dt.Rows[0]["specialization"].ToString();
                    
                    visittype.Text = dt.Rows[0]["visittype"].ToString();
                    fee.Text = dt.Rows[0]["fee"].ToString();
                    
                }
                else
                {
                    chargesdata.chargesdelete(e.CommandArgument.ToString());
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'newlisting.aspx'})", true);
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