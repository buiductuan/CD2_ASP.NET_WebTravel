using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
using System.IO;

public partial class Areas_Admin_Manage_Employee : System.Web.UI.Page
{
    private EmployeeBUS emBUS = new EmployeeBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        LoadData();  
    }

    protected void btn_AddEmployee_Click(object sender, EventArgs e)
    {
        if(txtName_Employee.Text!="" &&
            txtDayofbirth_Employee.Text!="" &&
            txtEmail_Employee.Text!="" &&
            txtPhone_Employee.Text!="" &&
            txtAddress_Employee.Text!="" &&
            img_Upload_Avatar_Employee.FileName!="" &&
            txtDescription_Employee.Text!="" &&
            txtUserName_Employee.Text!="" &&
            txtPassword_Employee.Text != "")
        {
            emBUS.InsertEmployee(txtName_Employee.Text,
            Convert.ToDateTime(txtDayofbirth_Employee.Text),
            rbl_Gender_Employee.SelectedValue,
            txtEmail_Employee.Text,
            txtPhone_Employee.Text,
            txtAddress_Employee.Text,
            img_Upload_Avatar_Employee.FileName,
            txtDescription_Employee.Text,
            txtUserName_Employee.Text,
            txtPassword_Employee.Text,DateTime.Now);
            Upload_Image(img_Upload_Avatar_Employee, error_AvatarEmployee);
            LoadData();
        }
        else
        {
            Response.Write("<script> alert('Error') </script>");
        }
    }

    protected void LoadData()
    {
        List_Employee.DataSource = emBUS.GetEmployee().Take(10);
        List_Employee.DataBind();
    }
    protected void Upload_Image(FileUpload file, Label error)
    {
        HttpPostedFile postedFile = file.PostedFile;
        string fileName = Path.GetFileName(postedFile.FileName);
        string fileExtention = Path.GetExtension(fileName);
        int fileSize = postedFile.ContentLength;

        if(fileExtention.ToLower() == ".jpg" || fileExtention.ToLower() == ".png")
        {
            if(fileSize < 2000000)
            {
                string path = Server.MapPath("~/images/Employees/") + fileName;
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