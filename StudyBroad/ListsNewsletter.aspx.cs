using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ListsNewsletter : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RouteData.Values["tag"] != null)
        {

        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}