using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
public partial class Contact : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lbAddress.Text = ConfigurationManager.AppSettings["Address"].ToString();
        Phone.Text= ConfigurationManager.AppSettings["Phone"].ToString();
        domain.Text = ConfigurationManager.AppSettings["Domain"].ToString();
        Email.Text = ConfigurationManager.AppSettings["Email_Support"].ToString();
    }
}