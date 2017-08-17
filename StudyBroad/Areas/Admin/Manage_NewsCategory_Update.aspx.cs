using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_NewsCategory_Update : System.Web.UI.Page
{
    private Tools tools = new Tools();
    private NewsletterCategoryBUS news = new NewsletterCategoryBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"].ToString() != "")
        {
            if (tools.IsNumber(Request.QueryString["id"].ToString()))
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                if (news.Check_Newsletter_CategoryID(id) == 1)
                {
                    txtName_NewsCategory.Text = news.Name(id);
                    txtMetaDescription_NewsCategory.Text = news.MetaDescription(id);
                    txtSeoTitle_NewsCategory.Text = news.SeoTitle(id);
                    txtMetaTile_NewsCategory.Text = news.MetaTile(id);
                }
                else
                {
                    Response.Redirect("Manage_NewsCategory.aspx");
                }
            }
            else
            {
                Response.Redirect("Manage_NewsCategory.aspx");
            }
        }
        else
        {
            Response.Redirect("Manage_NewsCategory.aspx");
        }
    }
}