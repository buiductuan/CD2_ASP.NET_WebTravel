using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS.Views;
public partial class Areas_Admin_Manage_Newsletter : System.Web.UI.Page
{
    private Newsletter_Views_BUS  news = new Newsletter_Views_BUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        List_Newsletter.DataSource = news.GetData();
        List_Newsletter.DataBind();
    }
}