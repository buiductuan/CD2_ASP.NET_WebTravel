using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_CourseCategory : System.Web.UI.Page
{
    private CourseCategoryBUS courseBUS = new CourseCategoryBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        List_Course_Category.DataSource=courseBUS.GetData();
        List_Course_Category.DataBind();
    }
}