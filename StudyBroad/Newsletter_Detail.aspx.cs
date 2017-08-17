using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Newsletter_Detail : System.Web.UI.Page
{
    private NewsletterBUS news = new NewsletterBUS();
    private NewsletterCategoryBUS newsCateogry = new NewsletterCategoryBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RouteData.Values["id"] != null)
        {
            if (news.Check_SeoTitle_Newsletter(RouteData.Values["id"].ToString()))
            {
                //Up views
                int id = news.NewsletterID_By_Seotitle(RouteData.Values["id"].ToString());
                news.Up_ViewCount(news.NewsletterID_By_Seotitle(RouteData.Values["id"].ToString()));
                lbName.Text = news.NameBySeo(RouteData.Values["id"].ToString());
                lbNameNewsletter.Text= news.NameBySeo(RouteData.Values["id"].ToString());
                lbDescription.Text = news.Description(id);
                lbNameNewsHeading.Text = news.NameBySeo(RouteData.Values["id"].ToString());
                lbViews.Text = "<i class=\"fa fa-eye fa-fw\"></i>" + news.ViewCount(id)+" Lượt xem";
                lbNewsletter_Category.Text = newsCateogry.Name(news.GetNewsletterCategory(id));
                lbDetail.Text = news.Detail(id);
                img_Detail_Newsletter.ImageUrl = "~/images/Newsletter/" + news.Image(id);
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        else
        {
            Response.Redirect("~/Default.asxp");
        }
    }
}