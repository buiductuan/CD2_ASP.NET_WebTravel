using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_Course : System.Web.UI.Page
{
    private CourseBUS courseBUS = new CourseBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();
    }
    private void LoadData()
    {
        List_Course.DataSource = courseBUS.GetData();
        List_Course.DataBind();
    }

    protected void DDL_Search_SelectedIndexChanged(object sender, EventArgs e)
    {
       
    }

    protected void btn_Search_Course_Click(object sender, EventArgs e)
    {
        if (DDL_Search.SelectedIndex == 1)
        {
            List_Course.DataSource = courseBUS.GetAllData();
            List_Course.DataBind();
            Response.Redirect("Manage_Course.aspx");
        }
    }
}