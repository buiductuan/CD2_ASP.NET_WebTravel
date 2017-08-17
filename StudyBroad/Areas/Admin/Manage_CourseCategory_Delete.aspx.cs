using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_CourseCategory_Delete : System.Web.UI.Page
{
    private CourseCategoryBUS courseBUS = new CourseCategoryBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            courseBUS.DeleteCourseCategory(id);
            Response.Redirect("Manage_CourseCategory.aspx");
        }
        else
        {
            Response.Redirect("Manage_CourseCategory.aspx");
        }
    }
}