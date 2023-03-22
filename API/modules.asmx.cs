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
        public void hospitalsave(string hospitalname, string slogan, string mobileno, string mobileno2, string emailid, string website, string medicalcouncil, int medicalregno, string address1, string address2,string pincode, string city, string state, string country, string logo)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "insert into hospital(hospitalname, slogan,mobileno,mobileno2, emailid,website,medicalcouncil,medicalregno ,address1, address2,pincode, city, state, country,logo) values('" + pcase.ToTitleCase(hospitalname) + "','" + slogan + "','" + mobileno + "','" + mobileno2 + "','" + emailid + "','" + website + "','" + medicalcouncil + "','" + medicalregno + "','" + address1 + "','" + address2 + "','" + pincode + "','" + city + "','" + state + "','" + country + "','" + logo + "')");
        }
        [WebMethod]
        public void hospitaldelete(string sn)
        {
            SqlHelper.ExecuteNonQuery(CommandType.Text, "delete from hospital where sn='" + sn + "'");
        }
    }
}
