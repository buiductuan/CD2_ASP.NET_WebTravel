using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BUS;
public partial class Areas_Admin_Manage_Domain : System.Web.UI.Page
{
    private DomainBUS domain = new DomainBUS();
    protected void Page_Load(object sender, EventArgs e)
    {
        List_Domain.DataSource = domain.GetData();
        List_Domain.DataBind();
    }

    protected void btn_AddDomain_Click(object sender, EventArgs e)
    {
        if (txtName_Domain.Text != "")
        {
            domain.InsertDomain(txtName_Domain.Text);
            Response.Redirect("Manage_Domain.aspx");
        }
        
    }
}