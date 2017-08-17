using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;

public partial class Course_Detail : System.Web.UI.Page
{
    private Tools tools = new Tools();
    private CourseBUS courseBUS = new CourseBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (RouteData.Values["id"] != null)
        {
            if (courseBUS.CheckSEOTile_Course(RouteData.Values["id"].ToString()) > 0)
            {
                int id = courseBUS.CourseID(RouteData.Values["id"].ToString());
                lbNameCourse.Text = courseBUS.GetName(id).ToString();
                Page.Title= "StudyBroad | "+courseBUS.GetName(id).ToString();
                lbName_Course.Text = courseBUS.GetName(id).ToString();
                lbName_Course_Header.Text= courseBUS.GetName(id).ToString();
                lbDescription_Course.Text = courseBUS.Description(id);
                img_Course.ImageUrl = "~/images/Courses/" + courseBUS.GetImage(id);
                lbDetail_Course.Text = courseBUS.Detail(id);
                string price = tools.FormatPrice(int.Parse(courseBUS.Price(id)));
                lbPrice_Course.Text = price;
                lbViews.Text = "<i class=\"fa fa-eye fa-fw\"></i>"+ courseBUS.GetViews(id);
                courseBUS.UpdateViewCourse(id);
            }
            else
            {
                Response.Redirect("~/Default.aspx");
            }
        }
        else
        {
            Response.Redirect("~/Default.aspx");
        }
    }

    protected void btn_Resgiter_Course_Click(object sender, EventArgs e)
    {
        if(Session["UserName"]!=null && Session["Role"] != null)
        {
            int id = courseBUS.CourseID(RouteData.Values["id"].ToString());
            Session["NameCourse"] = courseBUS.GetName(id);
            Response.Redirect("~/RegisteCourse");
        }
        else
        {
            Response.Redirect("~/GettingStarted");
        }
    }
}