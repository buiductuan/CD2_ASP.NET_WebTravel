using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_NewsCategory_Insert : System.Web.UI.Page
{
    private NewsletterCategoryBUS news = new NewsletterCategoryBUS();
    private Tools tools = new Tools();
    private EmployeeBUS emBUS = new EmployeeBUS();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Add_NewsCategory_Click(object sender, EventArgs e)
    {
        if (txtName_NewsCategory.Text != ""
           && txtMetaTile_NewsCategory.Text != "" &&
           txtSeoTitle_NewsCategory.Text != "" &&
           txtMetaDescription_NewsCategory.Text != "")
        {
            int id = emBUS.GetEmployeeID(Session["UserName"].ToString());
            string NameEmployee = emBUS.GetNameEmployeeByName(Session["UserName"].ToString());
            news.InsertNewsletterCategory(txtName_NewsCategory.Text,
                txtMetaTile_NewsCategory.Text,
                0, 0,
                tools.ChangeText(txtSeoTitle_NewsCategory.Text),
                DateTime.Now,
                new DAL.Employee { EmployeeID = id },
                DateTime.Now, NameEmployee, txtMetaDescription_NewsCategory.Text,
                txtMetaDescription_NewsCategory.Text, Convert.ToBoolean(rbl_NewsCategory_Status.SelectedValue));
            Response.Redirect("Manage_NewsCategory.aspx");
        }
    }
}