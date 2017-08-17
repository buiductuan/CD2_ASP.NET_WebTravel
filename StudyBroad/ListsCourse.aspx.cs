using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class ListsCourse : System.Web.UI.Page
{
    private CourseCategoryBUS courseCategory = new CourseCategoryBUS();
    private CourseBUS courseBus = new CourseBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RouteData.Values["tag"] != null)
        {
            List_Category_Course.DataSource = courseCategory.GetData().Take(6);
            List_Category_Course.DataBind();

            //Course Sailent
            List_Course_Sailent.DataSource = courseBus.CourseSailent().Take(5);
            List_Course_Sailent.DataBind();
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }
}