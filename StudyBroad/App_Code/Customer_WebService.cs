using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.Script.Serialization;
using BUS;
using DAL.Entities;
/// <summary>
/// Summary description for Customer_WebService
/// </summary>
[WebService(Namespace = "http://tempuri.org/")]
[WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
// To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
// [System.Web.Script.Services.ScriptService]
public class Customer_WebService : System.Web.Services.WebService
{
    private CustomerBUS customer = new CustomerBUS();
    private Tools tools = new Tools();
    [WebMethod]
    public void CheckCustomer(string UserName)
    {
        bool userNameInUse = false;

        if (customer.CheckUserName(UserName) == 0)
            userNameInUse = false;
        else
            userNameInUse = true;

        Registration registration = new Registration();
        registration.UserName = UserName;
        registration.UserNameInUse = userNameInUse;
        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(registration));
    }
    [WebMethod]
    public void CheckAccountCustomer(string UserName, string Password)
    {
        bool AccountInUse = false;

        if (customer.CheckCustomerAccount(UserName, tools.EncryptText(Password,true)) == 1)
            AccountInUse = true;
        else
            AccountInUse = false;
        Login l = new Login();
        l.UserName = UserName;
        l.Password = tools.EncryptText(Password,true);
        l.AccountInUse = AccountInUse;

        JavaScriptSerializer js = new JavaScriptSerializer();
        Context.Response.Write(js.Serialize(l));
    }
}
