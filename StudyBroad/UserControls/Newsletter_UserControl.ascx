<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Newsletter_UserControl.ascx.cs" Inherits="UserControls_Newsletter_UserControl" %>

<asp:Repeater runat="server" ID="List_Newsletter">
    <ItemTemplate>
        <div id="Newsletter_Item" class="col-md-4 center-block">
            <div class="row">
                <div class="col-lg-5">
                     <asp:HyperLink runat="server" NavigateUrl='<%# Eval("SeoTitle","~/News/{0}") %>'>
                            <img width="200" height="300" src="../images/Newsletter/<%# Eval("Image") %>" alt="img-<%# Eval("NameNewsletter") %>" class="img-responsive text-center animate-box center-block" />
                     </asp:HyperLink>
                </div>
                <div class="col-lg-7">
                    <div class="animate-box  center-block" data-animate-effect="fadeIn">
                        <p style="font-size: 9.5pt">
                            <asp:HyperLink runat="server" NavigateUrl='<%# Eval("SeoTitle","~/News/{0}") %>'>
                                 <%# Eval("NameNewsletter") %>
                            </asp:HyperLink>
                            <br />
                            <i class="fa fa-calendar fa-fw"></i>&nbsp;<%# Convert.ToDateTime(Eval("CreateDate").ToString()).ToShortDateString()%>
                            <br />
                            <i class="fa fa-eye fa-fw"></i>&nbsp;<%# Eval("ViewCount") %>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </ItemTemplate>
</asp:Repeater>
