<%@ Control Language="C#" AutoEventWireup="true" CodeFile="CourseSailent_UserControl.ascx.cs" Inherits="UserControls_CourseSailent_UserControl" %>

<asp:Repeater runat="server" ID="Sailent_Course" >
    <HeaderTemplate>
        <div class="owl-carousel owl-carousel-carousel">
    </HeaderTemplate>
    <ItemTemplate>
         <div class="item">
             <asp:HyperLink runat="server" NavigateUrl='<%# Eval("SeoTitle","~/Collections/{0}") %>'>
                 <img src="../images/Courses/<%# Eval("Image") %>"  width="100" height="250" />
             </asp:HyperLink>
        </div>
    </ItemTemplate>
    <FooterTemplate>
        </div>
    </FooterTemplate>
</asp:Repeater>