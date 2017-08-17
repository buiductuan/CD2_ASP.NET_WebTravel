using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class UserControls_CourseSailent_UserControl : System.Web.UI.UserControl
{
    private CourseBUS courseBUS = new CourseBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        Sailent_Course.DataSource = courseBUS.GetDataViews();
        Sailent_Course.DataBind();
    }
}