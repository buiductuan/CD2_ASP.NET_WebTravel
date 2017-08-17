using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_Course_Delete : System.Web.UI.Page
{
    private CourseBUS courseBUS = new CourseBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            courseBUS.DeleteCourse(int.Parse(Request.QueryString["id"]));
            Response.Redirect("Manage_Course.aspx");
        }
    }
}