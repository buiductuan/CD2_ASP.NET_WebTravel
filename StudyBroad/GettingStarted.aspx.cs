using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class GettingStarted : System.Web.UI.Page
{
    private CustomerBUS customerBUS = new CustomerBUS();
    private EmployeeBUS employeesBUS = new EmployeeBUS();
    private Tools tools = new Tools();
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btn_SignUp_Click(object sender, EventArgs e)
    {
       if(txtUsername_SignUp.Text!="" && txtPassword_SignUp.Text!="" && txtRepeatPassword_SignUp.Text != "")
        {
            if (txtPassword_SignUp.Text == txtRepeatPassword_SignUp.Text)
            {
                if (customerBUS.CheckUserName(txtUsername_SignUp.Text) == 0)
                {
                    customerBUS.SignUp(txtUsername_SignUp.Text, tools.EncryptText(txtPassword_SignUp.Text.ToLower().Trim(),true).ToString());
                    lbNotitfication.Text = "<i class=\"fa fa-check-circle-o\"></i>"+ "Đăng ký tài khoản thành công";
                }
                else
                {
                    lbNotitfication.Text = "<i class=\"fa fa-check-circle-o\"></i>" + "Tên tài khoản đã tồn tại";
                }
            }
        }
    }

    protected void btn_SignIn_Click(object sender, EventArgs e)
    {
        if(txtUserName_SignIn.Text!="" && txtPassword_SignIn.Text != "")
        {
            if(Session["UserName"]==null && Session["Role"] == null)
            {
                int c = employeesBUS.CheckEmployee(txtUserName_SignIn.Text, txtPassword_SignIn.Text);
                if (c > 0)
                {
                    Session["UserName"] = employeesBUS.GetNameEmployee(txtUserName_SignIn.Text);
                    Session["Role"] = employeesBUS.GetRoleEmployee(txtUserName_SignIn.Text);
                    Session["TimeActive"] = DateTime.Now.ToString();
                    Response.Redirect("~/Areas/Admin/DashBoard.aspx");
                }
                else
                {
                    if (customerBUS.CheckCustomerAccount(txtUserName_SignIn.Text, tools.EncryptText(txtPassword_SignIn.Text.ToLower().Trim(), true).ToString()) == 1)
                    {
                        Session["UserName"] = customerBUS.GetNameCustomer(txtUserName_SignIn.Text);
                        Session["Role"] = customerBUS.GetRoleCustomer(txtUserName_SignIn.Text);
                        Response.Redirect("Waiting.aspx");
                    }
                    else
                    {
                        lbError_SignIn.Text = "Tài khoản hoặc mật khẩu không chính xác";
                    }
                }
            }
        }
    }
}