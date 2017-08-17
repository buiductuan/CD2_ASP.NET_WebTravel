using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_NewsCategory_Delete : System.Web.UI.Page
{
    private NewsletterCategoryBUS news = new NewsletterCategoryBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            news.DeleteNewsCategory(long.Parse(Request.QueryString["id"].ToString()));
            Response.Redirect("Manage_NewsCategory.aspx");
        }
        else
        {
            Response.Redirect("Manage_NewsCategory.aspx");
        }
    }
}