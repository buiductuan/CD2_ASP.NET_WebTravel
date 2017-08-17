using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_Course_Update : System.Web.UI.Page
{
    private Tools tools = new Tools();
    private CourseBUS courseBUS = new CourseBUS();
    private CourseCategoryBUS category = new CourseCategoryBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            if (tools.IsNumber(Request.QueryString["id"]))
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                if (courseBUS.Check_CourseID(id) == 1)
                {
                    txtName_Course.Text = courseBUS.GetName(id);
                    txtCourse_Detail.Text = courseBUS.Detail(id);
                    txtDescription_Course.Text = courseBUS.Description(id);
                    txtSeoTitle_Course.Text = courseBUS.SeoTile(id);
                    txtMetaDescription_Course.Text = courseBUS.MetaDescription(id);
                    txtPrice_Course.Text = courseBUS.Price(id);

                    if (courseBUS.Status(id).ToLower() == "true".ToLower())
                    {
                        rbl_CourseCategory_Status.SelectedIndex = 0;
                    }
                    else
                    {
                        rbl_CourseCategory_Status.SelectedIndex = 1;
                    }
                    category.GetDropDownList(DDL_Course_Category);
                }
                else
                {
                    Response.Redirect("Manage_Course.aspx");
                }
            }
            else
            {
                Response.Redirect("Manage_Course.aspx");
            }
        }
        else
        {
            Response.Redirect("Manage_Course.aspx");
        }
    }

    protected void btn_Update_Course_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            if (tools.IsNumber(Request.QueryString["id"]))
            {
                int id = int.Parse(Request.QueryString["id"].ToString());
                if (courseBUS.Check_CourseID(id) == 1)
                {
                    if (txtName_Course.Text != "")
                    {
                        courseBUS.UpdateCourseName(id, txtName_Course.Text);
                        Response.Redirect("Manage_Course.aspx");
                    }
                }
                else
                {
                    Response.Redirect("Manage_Course.aspx");
                }
            }
            else
            {
                Response.Redirect("Manage_Course.aspx");
            }
        }
        else
        {
            Response.Redirect("Manage_Course.aspx");
        }
    }
}