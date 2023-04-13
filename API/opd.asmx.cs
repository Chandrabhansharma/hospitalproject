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
        public DataTable opdregistrationsearch(string registrationid)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from opdregistration where registrationid like'" + registrationid + "'");
            }
        }
        [WebMethod]
        public void opdregistrationsubmit(string patientno, string patientname, string age, string gender, string date, string mobilenumber, string mobilenumber2, string email, string address, string doctorname, string specialization, string visittype, string fee, string height, string weight, string bloodpressure, string temperature, string remark)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into opdregistration(patientno,patientname,age,gender,date,mobilenumber,mobilenumber2,email,address,doctorname,specialization,visittype,fee,height,weight,bloodpressure,temperature,remark) values('" + pcase.ToTitleCase(patientno) + "','" + patientname + "','" + age + "','" + gender + "','" + date + "','" + mobilenumber + "','" + mobilenumber2 + "','" + email + "','" + address + "', '" + doctorname + "', '" + specialization + "', '" + visittype + "', '" + fee + "', '" + height + "', '" + weight + "', '" + bloodpressure + "', '" + temperature + "', '" + remark + "')");
        }
        [WebMethod]
        public void opdregistrationdelete(string registrationid)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from opdregistration where registrationid='" + registrationid + "'");
        }

        // prescription

        [WebMethod]
        public DataTable prescriptionsearch(string sn)
        {
            {
                return SqlHelper.ExecuteTextDataTable(CommandType.Text, "select * from prescription where sn like'" + sn + "'");
            }
        }
        [WebMethod]
        public void prescriptionsubmit(string patientno, string patientname,string medicinename,string dosage,string duration,string testing, string avoid, string followup)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into prescription(patientno,patientname,medicinename,doage,duration,testing,avoid,followup) values('" + pcase.ToTitleCase(patientno) + "','" + patientname + "','" + medicinename + "','" + dosage + "','" + duration + "','" + testing + "','" + avoid +  "','" + followup + "')");
        }
        [WebMethod]
        public void prescriptiondelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from prescription where sn='" + sn + "'");
        }

    }
}
