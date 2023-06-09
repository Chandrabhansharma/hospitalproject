﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

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
                dt = moduledata.consultantsearch("%", "%");
                grddata.DataSource = dt;
                grddata.DataBind();
                data();
            }
        }
        string signaturepath = "";
        private void data()
        {
            date.Text = DateTime.Now.ToString("yyyy-MM-dd");
            dt = moduledata.state();
            state.DataSource = dt;
            state.DataTextField = "state";
            state.DataValueField = "state";
            state.DataBind();
            state.Items.Insert(0, new ListItem("---Select---", "---Select---"));
        }
        protected void save_Click(object sender, EventArgs e)
        {
            try
            {
                if (signature.PostedFile.ContentLength > 1)
                {
                    signature.SaveAs(Server.MapPath("~/photo/Signature" + doctorname.Text + ".jpg"));
                    signaturepath = "~/photo/Signature" + doctorname.Text + ".jpg";
                }
                if (state.SelectedIndex != 0)
                {
                    dt = moduledata.autono("DrID", 5);
                    if (dt.Rows.Count > 0)
                    {
                        string length = dt.Rows[0]["length"].ToString();
                        autono.Value = dt.Rows[0]["isauto"].ToString();
                        if (dt.Rows[0]["isauto"].ToString() == "No")
                        {
                            doctorid.Enabled = true;
                        }
                        else
                        {
                            dt = moduledata.autono("DrID", 5);
                            doctorid.Text = dt.Rows[0][0].ToString();
                            doctorid.Enabled = false;
                        }
                    }
                    moduledata.consultantsave(doctorid.Text, doctorname.Text, licenceno.Text, specialization.Text, designation.Text, qualification.Text, mobilenumber.Text, mobilenumber2.Text, email.Text, address.Text, city.Text, state.SelectedValue, shift.SelectedValue, date.Text, signaturepath.ToString());
                    if (autono.Value == "Yes")
                    {
                        moduledata.autonoplus("DrID");
                    }
                }
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
                    state.SelectedValue = dt.Rows[0]["state"].ToString();
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