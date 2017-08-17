using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Employee_Detail : System.Web.UI.Page
{
    private EmployeeBUS emBUS = new EmployeeBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            lbName_Employee_header.Text = emBUS.GetNameEmployeeId(id);
            txtName_Employee.Text = emBUS.GetNameEmployeeId(id);
            txtDayofbirth_Employee.Text = Convert.ToDateTime(emBUS.GetDayofbirthEmployee(id)).ToShortDateString().ToString();
            if (emBUS.GetGender(id) == "Nam")
            {
                rbl_Gender_Employee.SelectedIndex = 0;
            }
            else
            {
                rbl_Gender_Employee.SelectedIndex = 1;
            }
            txtEmail_Employee.Text = emBUS.GetEmail(id);
            txtPhone_Employee.Text = emBUS.GetPhone(id);
            txtAddress_Employee.Text = emBUS.GetAddress(id);
            //img_Upload_Avatar_Employee = emBUS.GetAvatar(id);
            txtDescription_Employee.Text = emBUS.GetDescription(id);
            txtUserName_Employee.Text = emBUS.GetUserName(id);
            txtPassword_Employee.Text = emBUS.GetPassword(id);
            txtRepeatPassword_Employee.Text = txtPassword_Employee.Text;
        }
        else
        {
            Response.Redirect("Manage_Employee.aspx");
        }
    }

    protected void btn_SaveEmployee_Click(object sender, EventArgs e)
    {
        if (Request.QueryString["id"] != null)
        {
            int id = int.Parse(Request.QueryString["id"].ToString());
            emBUS.UpdateEmployee(id, txtName_Employee.Text,
                Convert.ToDateTime(txtDayofbirth_Employee.Text), 
                rbl_Gender_Employee.SelectedValue,
                txtEmail_Employee.Text, 
                txtPhone_Employee.Text, 
                txtAddress_Employee.Text,
                img_Upload_Avatar_Employee.FileName,
                txtDescription_Employee.Text, 1, true,
                txtUserName_Employee.Text, txtPassword_Employee.Text,DateTime.Now);
            Response.Redirect("Manage_Employee.aspx");
        }
        else
        {
            Response.Redirect("Manage_Employee.aspx");
        }
    }
}