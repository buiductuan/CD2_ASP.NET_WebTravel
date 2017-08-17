using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using BUS;
public partial class Areas_Admin_Manage_Newsletter_Insert : System.Web.UI.Page
{
    private NewsletterBUS news = new NewsletterBUS();
    private NewsletterCategoryBUS newsCategory = new NewsletterCategoryBUS();
    private EmployeeBUS emBUS = new EmployeeBUS();
    private Tools tools = new Tools();
    protected void Page_Load(object sender, EventArgs e)
    {
        //Bind name category in dropdownlist
        newsCategory.GetName_NewsletterinDropDownList(DDL_News_Category);
    }

    protected void btn_Add_News_Click(object sender, EventArgs e)
    {
        if(txtName_News.Text!="" &&
            txtNews_Detail.Text!="" &&
            txtDescription_News.Text!="" &&
            txtSeoTitle_News.Text!="" && img_News.FileName!="")
        {
            // Item
            news.InsertNewsletter(
                newsCategory.NewsCategoryID(DDL_News_Category.SelectedValue),
                txtName_News.Text,
                txtSeoTitle_News.Text,
                0,
                tools.ChangeText(txtSeoTitle_News.Text),
                img_News.FileName,
                txtNews_Detail.Text,
                txtDescription_News.Text,
                DateTime.Now,
                emBUS.GetEmployeeID(Session["UserName"].ToString()),
                DateTime.Now,
                Session["UserName"].ToString(),
                txtName_News.Text,
                txtMetaDescription_News.Text,
                Convert.ToBoolean(rbl_NewsCategory_Status.SelectedValue.ToLower()));
            //Up image
            Upload_Image(img_News, error_img_News);
            Response.Redirect("Manage_Newsletter.aspx");
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
                string path = Server.MapPath("~/images/Newsletter/") + fileName;
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