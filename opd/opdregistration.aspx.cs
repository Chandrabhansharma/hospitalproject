﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace hospitalproject.opd
{
    public partial class opdregistration : System.Web.UI.Page
    {
        API.opd opddata = new API.opd();
        API.modules consultantdata = new API.modules();
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                date.Text = DateTime.Now.ToString("yyyy-MM-dd");
                dt = opddata.opdregistrationsearch("%");
                grddata.DataSource = dt;
                grddata.DataBind();


                dt = consultantdata.consultantsearch("%", "%");
                doctorname.DataSource = dt.DefaultView.ToTable(true, "doctorname");
                doctorname.DataTextField = "doctorname";
                doctorname.DataValueField = "doctorname";
                doctorname.DataBind();
                doctorname.Items.Insert(0, "---Select---");

                dt = consultantdata.consultantsearch("%", "%");
                specialization.DataSource = dt.DefaultView.ToTable(true, "specialization");
                specialization.DataTextField = "specialization";
                specialization.DataValueField = "specialization";
                specialization.DataBind();
                specialization.Items.Insert(0, "---Select---");

                dt = consultantdata.chargessearch("%", "%");
                visitetype.DataSource = dt.DefaultView.ToTable(true, "visittype");
                visitetype.DataTextField = "visittype";
                visitetype.DataValueField = "visittype";
                visitetype.DataBind();
                visitetype.Items.Insert(0, "---Select---");
            }
        }
        private void data()
        {
            date.Text = DateTime.Now.ToString("yyyy-MM-dd");
        }
        protected void submit_Click(object sender, EventArgs e)
        {
            try
            {
                opddata.opdregistrationsubmit(patientno.Text, patientname.Text, age.Text, gender.SelectedValue, date.Text, mobilenumber.Text, mobilenumber2.Text, email.Text, address.Text, doctorname.SelectedValue, specialization.SelectedValue, visitetype.SelectedValue, fee.Text, height.Text, weight.Text, bloodpressure.Text, temperature.Text, remark.Text);
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
                    patientno.Text = dt.Rows[0]["patientno"].ToString();
                    patientname.Text = dt.Rows[0]["patientname"].ToString();
                    age.Text = dt.Rows[0]["age"].ToString();
                    gender.Text = dt.Rows[0]["gender"].ToString();
                    date.Text = dt.Rows[0]["date"].ToString();
                    mobilenumber.Text = dt.Rows[0]["mobilenumber"].ToString();
                    mobilenumber2.Text = dt.Rows[0]["mobilenumber2"].ToString();
                    email.Text = dt.Rows[0]["email"].ToString();
                    address.Text = dt.Rows[0]["address"].ToString();
                   doctorname.Text = dt.Rows[0]["doctorname"].ToString();
                    specialization.Text = dt.Rows[0]["specilazation"].ToString();
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
                    ScriptManager.RegisterStartupScript(this, this.GetType(), "alert", "swal('', 'Data Delete Successfully !!!', 'success').then((value) => {window.location = 'opdregistration.aspx'})", true);
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


