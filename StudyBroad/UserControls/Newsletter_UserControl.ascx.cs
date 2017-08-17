using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class UserControls_Newsletter_UserControl : System.Web.UI.UserControl
{
    private NewsletterBUS newsBUS = new NewsletterBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        List_Newsletter.DataSource=newsBUS.GetData().Take(9);
        List_Newsletter.DataBind();
    }
}