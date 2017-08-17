using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_Member : System.Web.UI.Page
{
    private CustomerBUS cus = new CustomerBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        List_Customer.DataSource = cus.GetData();
        List_Customer.DataBind();
    }
}