using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class UserControls_Desenstralization_UserControl : System.Web.UI.UserControl
{
    private CustomerBUS customers = new CustomerBUS();
    private MenuBUS menus = new MenuBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadMenu();
        if (Session["UserName"] != null && Session["Role"] != null)
        {
            if (int.Parse(Session["Role"].ToString()) == 1)
            {
                Desenstralization_MultiViews.ActiveViewIndex = 1;
                lbNameUser.Text = Session["UserName"].ToString();
                img_User.ImageUrl = "../images/Customers/" + customers.GetAvatarByUserName(Session["UserName"].ToString());
            }
        }
        else
        {
            Desenstralization_MultiViews.ActiveViewIndex = 0;
        }
    }

    protected void btn_LogOut_Click(object sender, EventArgs e)
    {

        if (Session["UserName"] != null && Session["Role"] != null)
        {
            Session["UserName"] = null;
            Session["Role"] = null;
            Response.Redirect("~/Waiting.aspx");
        }
    }
    private void LoadMenu()
    {
        List_Menu_Visitor.DataSource = menus.GetMenu();
        List_Menu_Visitor.DataBind();
        List_Menu_Customer.DataSource = menus.GetMenu();
        List_Menu_Customer.DataBind();
    }
}