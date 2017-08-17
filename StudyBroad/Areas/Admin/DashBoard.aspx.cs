using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_DashBoard : System.Web.UI.Page
{
    private GlobalBUS gl = new GlobalBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        lb_Count_Course.Text = gl.Count_All_Course();
        lb_Count_Course_Category.Text = gl.Count_All_CourseCategory();
        lb_Count_Member.Text = gl.Count_All_Member();
        lb_Count_Newsletter.Text = gl.Count_All_Newsletter();
    }
}