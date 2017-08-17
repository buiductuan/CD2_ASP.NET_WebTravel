using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_CourseCategory_Update : System.Web.UI.Page
{
    private Tools tools = new Tools();
    private CourseCategoryBUS courseBUS = new CourseCategoryBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            if (tools.IsNumber(Request.QueryString["id"]))
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                if (courseBUS.Check_Course_CategoryID(id) == 1)
                {
                    txtName_CourseCategory.Text = courseBUS.Name(id);
                    txtMetaTile_CourseCategory.Text = courseBUS.MetaTile(id);
                    txtSeoTitle_CourseCategory.Text = courseBUS.SeoTitle(id);
                    txtMetaDescription_CourseCategory.Text = courseBUS.MetaDescription(id);
                    if (courseBUS.Status(id).ToUpper() == "True".ToUpper())
                    {
                        rbl_CourseCategory_Status.SelectedIndex = 0;
                    }
                    else
                    {
                        rbl_CourseCategory_Status.SelectedIndex = 1;
                    }
                }
                else
                {
                    Response.Redirect("Manage_CourseCategory.aspx");
                }
            }
            else
            {
                Response.Redirect("Manage_CourseCategory.aspx");
            }
        }
        else
        {
            Response.Redirect("Manage_CourseCategory.aspx");
        }
    }

    protected void btn_Update_CourseCategory_Click(object sender, EventArgs e)
    {

    }
}