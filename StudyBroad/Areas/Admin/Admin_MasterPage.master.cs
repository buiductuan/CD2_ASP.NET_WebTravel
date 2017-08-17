using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Admin_MasterPage : System.Web.UI.MasterPage
{
    private EmployeeBUS emBUS = new EmployeeBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if(Session["UserName"]!=null && Session["Role"] != null && Session["TimeActive"]!=null)
        {
            if(int.Parse(Session["Role"].ToString()) > 0)
            {
                string username= Session["UserName"].ToString();
                string avatar = "~/images/Employees/" + emBUS.GetAvatar_UserName(username);
                int id = emBUS.GetEmployeeID(username);
                lbUserName.Text = username;
                lbUserName_Header.Text = username;
                lbUserName_SideBar.Text = username;
                imgAvatar.ImageUrl =  avatar;
                imgAvartar1.ImageUrl = avatar;
                imgAvatar_SideBar.ImageUrl = avatar;
                emBUS.UpdateTimeActive(id, Convert.ToDateTime(Session["TimeActive"].ToString()));
            }
            else
            {
                Response.Redirect("~/Waiting.aspx");
            }
        }
        else
        {
            Response.Redirect("~/Waiting.aspx");
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
}
