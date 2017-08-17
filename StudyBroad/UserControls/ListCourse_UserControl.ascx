<%@ Control Language="C#" AutoEventWireup="true" CodeFile="ListCourse_UserControl.ascx.cs" Inherits="UserControls_ListCourse_UserControl" %>
<asp:Repeater runat="server" ID="List_Course">
    <ItemTemplate>
        <div class="col-md-4 col-sm-4 col-xs-6 col-xxs-12 animate-box fadeInUp animated">
            <div class="img-grid">
                <img src="../images/Courses/<%# Eval("Image") %>" alt="<%# Eval("SeoTitle") %>" class="img-responsive">
                <asp:HyperLink runat="server" NavigateUrl='<%# Eval("SeoTitle","~/Collections/{0}") %>' CssClass="transition">
                    <div>
                        <span class="fh5co-meta">
                            <i class="fa fa-eye"></i>
                            <%# Eval("Viewcount") %>
                        </span>
                        <br />
                        <h2 class="fh5co-title"><%# Eval("NameCourse") %></h2>
                    </div>
                </asp:HyperLink>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>

