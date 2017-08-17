using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_NewsCategory : System.Web.UI.Page
{
    private NewsletterCategoryBUS news = new NewsletterCategoryBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }
    private void LoadData()
    {
        List_News_Category.DataSource = news.GetData();
        List_News_Category.DataBind();
    }
}