using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class UserControls_ListCourse_UserControl : System.Web.UI.UserControl
{
    private CourseBUS courseBUS = new CourseBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        List_Course.DataSource = courseBUS.GetData().Take(9);
        List_Course.DataBind();
    }
}