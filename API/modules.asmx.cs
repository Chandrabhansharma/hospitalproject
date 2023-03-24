using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace hospitalproject.API
{
    /// <summary>
    /// Summary description for modules
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class modules : System.Web.Services.WebService
    {

        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;
        [WebMethod]
        public DataTable hospitalsearch(string sn, string hospitalname)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from hospital where sn like'" + sn + "' and hospitalname like'" + hospitalname + "'");
            }
        }
        [WebMethod]
        public void hospitalsave(string hospitalname, string slogan, string mobileno, string mobileno2, string emailid, string website, string medicalcouncil, int medicalregno, string address1, string address2, string city, string state, string country, string pincode, string logo)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into hospital(hospitalname, slogan,mobileno,mobileno2, emailid,website,medicalcouncil,medicalregno ,address1, address2,pincode, city, state, country,logo) values('" + pcase.ToTitleCase(hospitalname) + "','" + slogan + "','" + mobileno + "','" + mobileno2 + "','" + emailid + "','" + website + "','" + medicalcouncil + "','" + medicalregno + "','" + address1 + "','" + address2 + "','" + pincode + "','" + city + "','" + state + "','" + country + "','" + logo + "')");
        }
        [WebMethod]
        public void hospitaldelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from hospital where sn='" + sn + "'");
        }

        //Consultant
        [WebMethod]
        public DataTable consultantsearch(string sn, string doctorid)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from consultant where sn like'" + sn + "' and doctorid like'" + doctorid + "'");
            }
        }
        [WebMethod]
        public void consultantsave(string doctorid, string doctorname, string licenceno, string specialization, string designation, string qualification, string mobilenumber, string mobilenumber2, string email, string address, string city, string state, string shift, string date)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into consultant(doctorid,doctorname,licenceno,specialization,designation,qualification,mobilenumber,mobilenumber2,email,address,city,state,shift,date) values('" + pcase.ToTitleCase(doctorid) + "','" + doctorname + "','" + licenceno + "','" + specialization + "','" + designation + "','" + qualification + "','" + mobilenumber + "','" + mobilenumber2 + "','" + email + "','" + address + "', '" + city + "', '" + state + "', '" + shift + "', '" + date + "')");
        }
        [WebMethod]
        public void consultantdelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from consultant where sn ='" + sn + "'");
        }

        //charges
        [WebMethod]
        public DataTable chargessearch(string sn,string doctorid) 
        {
            return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from charges where sn like'" + sn + "' and doctorid like'" + doctorid + "'");
        }
        [WebMethod]
        public void chargessave(string doctorid, string doctorname, string specialization, string date, string visittype, int fee)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into charges(doctorid,doctorname,specialization,date,visittype,fee) values('" + pcase.ToTitleCase(doctorid) + "','" + doctorname + "','" + specialization + "','" + date + "','" + visittype + "','" + fee  + "')");
        }
        [WebMethod]
        public void chargesdelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from charges where sn ='" + sn + "'");
        }



        //disease
        [WebMethod]
        public DataTable diseasesearch(string sn, string diseasen)
        {
            return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from disease where sn like'" + sn + "' and diseasen like'" + diseasen + "'");
        }
        [WebMethod]
        public void diseasesubmit(string diseasen, string remark)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into disease(diseasen,remark) values('" + pcase.ToTitleCase(diseasen) + "','" + remark + "')");
        }
        [WebMethod]
        public void diseasedelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from disease where sn ='" + sn + "'");
        }

    }
}
