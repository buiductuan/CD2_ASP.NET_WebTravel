using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Search : System.Web.UI.Page
{
    private SearchBUS search = new SearchBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RouteData.Values["tag"] != null)
        {
            if(search.SearchItem(RouteData.Values["tag"].ToString()).ToList().Count > 0)
            {
                List_Result_Search.DataSource = search.SearchItem(RouteData.Values["tag"].ToString());
                List_Result_Search.DataBind();
            }
            else
            {
                lb_notification.Text = "<label class=\"label label-danger\">"+"Không có kết quả"+"</label>";
            }
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}