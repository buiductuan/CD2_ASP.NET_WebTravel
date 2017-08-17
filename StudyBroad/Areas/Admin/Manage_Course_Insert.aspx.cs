using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.IO;

public partial class Areas_Admin_Manage_Course_Insert : System.Web.UI.Page
{
    private Tools tools = new Tools();
    private CourseCategoryBUS category_course = new CourseCategoryBUS();
    private CourseBUS courseBUS = new CourseBUS();
    private EmployeeBUS emBUS = new EmployeeBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        category_course.GetDropDownList(DDL_Course_Category);
    }

    protected void btn_Add_Course_Click(object sender, EventArgs e)
    {
        if(txtName_Course.Text!="" &&
            txtCourse_Detail.Text!="" &&
            txtDescription_Course.Text!=""&&
            txtMetaDescription_Course.Text!="" &&
            txtSeoTitle_Course.Text!="" &&
            txtPrice_Course.Text!="" &&
            img_Course.FileName!= "")
        {
            courseBUS.InsertCourse(
                    category_course.CourseCategoryID(DDL_Course_Category.SelectedValue),
                    txtName_Course.Text,
                    txtName_Course.Text, 0,
                    tools.ChangeText(txtSeoTitle_Course.Text),
                    img_Course.FileName,
                    Convert.ToDecimal(txtPrice_Course.Text),
                    txtCourse_Detail.Text,
                    txtDescription_Course.Text,
                    DateTime.Now,
                    emBUS.GetEmployeeID(Session["UserName"].ToString()),
                    DateTime.Now,
                    Session["UserName"].ToString(),
                    "", "", Convert.ToBoolean(rbl_CourseCategory_Status.SelectedValue.ToLower())
                );
            Response.Redirect("Manage_Course.aspx");
        }
    }
    protected void Upload_Image(FileUpload file, Label error)
    {
        HttpPostedFile postedFile = file.PostedFile;
        string fileName = Path.GetFileName(postedFile.FileName);
        string fileExtention = Path.GetExtension(fileName);
        int fileSize = postedFile.ContentLength;

        if (fileExtention.ToLower() == ".jpg" || fileExtention.ToLower() == ".png")
        {
            if (fileSize < 2000000)
            {
                string path = Server.MapPath("~/images/Courses/") + fileName;
                file.SaveAs(path);
            }
            else
            {
                error.Text = "Ảnh phải có kích thước nhỏ hơn 2MB";
            }
        }
        else
        {
            error.Text = "Ảnh đại diện phải có định dạng sau  : .jpg hoặc .png";
        }
    }
}