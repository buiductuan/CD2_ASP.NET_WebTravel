using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class RegisteCourse : System.Web.UI.Page
{
    private CourseBUS course = new CourseBUS();
    private EmployeeBUS emBUS = new EmployeeBUS();
    private RegisterCourseBUS regisBUS = new RegisterCourseBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        lbAddress.Text = ConfigurationManager.AppSettings["Address"].ToString();
        Phone.Text = ConfigurationManager.AppSettings["Phone"].ToString();
        domain.Text = ConfigurationManager.AppSettings["Domain"].ToString();
        Email.Text = ConfigurationManager.AppSettings["Email_Support"].ToString();
        if (Session["UserName"]!=null && Session["Role"] != null && Session["NameCourse"]!=null)
        {
            lbNameCourseRegiste.Text = Session["NameCourse"].ToString();
            lbNameCourse.Text= Session["NameCourse"].ToString();
        }
        else
        {
            Response.Redirect("~/GettingStarted");
        }
    }

    protected void btn_RegisterCourse_Click(object sender, EventArgs e)
    {
        if (txtYourName_RegisterCourse.Text != ""
            && txtSubject_RegisterCourse.Text != ""
            && txtEmail_RegisterCourse.Text != ""
            && txtDetail_RegisterCourse.Text != ""
            && txtPhone_RegisterCourse.Text != "")
        {
            regisBUS.InsertData(course.GetIDByName(Session["NameCourse"].ToString()),txtYourName_RegisterCourse.Text, txtEmail_RegisterCourse.Text, txtPhone_RegisterCourse.Text, float.Parse(course.Price(course.GetIDByName(Session["NameCourse"].ToString()))));
        }
    }
}