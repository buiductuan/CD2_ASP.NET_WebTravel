using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using BUS;
public partial class MasterPage : System.Web.UI.MasterPage
{
    private MenuBUS menus = new MenuBUS();
    private Tools tools = new Tools();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbViewsPage.Text = Application["Views"].ToString();
        lbVisitor_Online.Text = Application["Online"].ToString();
        Menu_footer.DataSource = menus.GetMenu();
        Menu_footer.DataBind();
        Page.Title = ConfigurationManager.AppSettings["Title_Basic"];
        Page.MetaKeywords = ConfigurationManager.AppSettings["Meta_KeyWord"];
        Page.MetaDescription = ConfigurationManager.AppSettings["Title_Basic"];
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        if (txtSearchItem.Text != "")
        {
            Response.Redirect("~/Search/" + tools.ChangeText(txtSearchItem.Text));
        }
    }
}
