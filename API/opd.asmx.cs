using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;

namespace hospitalproject.API
{
    /// <summary>
    /// Summary description for opd
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class opd : System.Web.Services.WebService
    {
        TextInfo pcase = new CultureInfo("en-US", false).TextInfo;
        [WebMethod]
        public DataTable opdregistrationsearch(string sn, string patientid)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from opdregistration where sn like'" + sn + "'and patientid like'" + patientid + "'");
            }
        }
        [WebMethod]
        public void opdregistrationsave(string patientid, string patientname, string age, string gender, string date, string mobilenumber, string mobilenumber2, string email, string address, string symptoms, string department, string consultant, string visittype, string fee, string height, string weight, string bloodpressure, string temperature, string remark)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into opdregistration(patientid,patientname,age,gender,date,mobilenumber,mobilenumber2,email,address,symptoms,department,consultant,visittype,fee,height,weight,bloodpressure,temperature,remark) values('" + pcase.ToTitleCase(patientid) + "','" + patientname + "','" + age + "','" + gender + "','" + date + "','" + mobilenumber + "','" + mobilenumber2 + "','" + email + "','" + address + "', '" + symptoms + "', '" + department + "', '" + consultant + "', '" + visittype + "', '" + fee + "', '" + height + "', '" + weight + "', '" + bloodpressure + "', '" + temperature + "', '" + remark + "')");
        }
        [WebMethod]
        public void opdregistrationdelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from opdregistration where sn='" + sn + "'");
        }
    }
}
