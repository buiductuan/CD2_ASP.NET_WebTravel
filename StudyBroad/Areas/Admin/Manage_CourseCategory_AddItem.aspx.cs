using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using DAL;
public partial class Areas_Admin_Manage_CourseCategory_AddItem : System.Web.UI.Page
{
    private Tools tools = new Tools();
    private CourseCategoryBUS courseBUS = new CourseCategoryBUS();
    private EmployeeBUS emBUS = new EmployeeBUS();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_Add_CourseCategory_Click(object sender, EventArgs e)
    {
        if(txtName_CourseCategory.Text!=""
            && txtMetaTile_CourseCategory.Text!="" &&
            txtSeoTitle_CourseCategory.Text!="" &&
            txtMetaDescription_CourseCategory.Text != "")
        {
            int id = emBUS.GetEmployeeID(Session["UserName"].ToString());
            string Name = emBUS.GetNameEmployeeByName(Session["UserName"].ToString());
            courseBUS.InsertCourseCategory(txtName_CourseCategory.Text,
                                           txtMetaTile_CourseCategory.Text,
                                           0, 0, tools.ChangeText(txtSeoTitle_CourseCategory.Text),
                                           DateTime.Now,
                                           new Employee { EmployeeID = id },
                                           DateTime.Now,Name,null,
                                           txtMetaDescription_CourseCategory.Text,
                                           Convert.ToBoolean(rbl_CourseCategory_Status.SelectedValue));
            Response.Redirect("Manage_CourseCategory.aspx");
        }
    }
}