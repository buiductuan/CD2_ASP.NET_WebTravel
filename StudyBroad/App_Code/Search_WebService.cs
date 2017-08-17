using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using DAL;
/// <summary>
/// Summary description for Search_WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Search_WebService : System.Web.Services.WebService
{
    private StudyBroadDataContext db = new StudyBroadDataContext();
    [WebMethod]
    public List<SearchItemAllResult> SearchAjax(string article)
    {
        var ls = new List<SearchItemAllResult>();
        ls = db.SearchItemAll(article).ToList();
        return ls;
    }
}
