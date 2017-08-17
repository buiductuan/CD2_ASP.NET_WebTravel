<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Desenstralization_UserControl.ascx.cs" Inherits="UserControls_Desenstralization_UserControl" %>
<asp:MultiView runat="server" ID="Desenstralization_MultiViews">
    <asp:View runat="server" ID="Views_Visitor">
        <nav class="gtco-nav" role="navigation">
            <div class="gtco-container">
                <div class="row">
                    <div class="col-sm-2 col-xs-12">
                        <div id="gtco-logo"><a href="/">StudyBroad</a></div>
                    </div>
                    <div class="col-xs-10 text-right menu-1">
                        <asp:Repeater runat="server" ID="List_Menu_Visitor">
                            <HeaderTemplate>
                                <ul>
                            </HeaderTemplate>
                            <ItemTemplate>
                                <li>
                                    <a href="../<%# Eval("Link") %>"><%# Eval("Text") %></a>
                                </li>
                            </ItemTemplate>
                            <FooterTemplate>
                                <li class="btn-cta"><a href="../GettingStarted"><span>Get started</span></a></li>
                                </ul>
                            </FooterTemplate>
                        </asp:Repeater>
                    </div>
                </div>
            </div>
        </nav>
    </asp:View>


    <asp:View runat="server" ID="Views_Customer">
        <nav class="gtco-nav" role="navigation">
            <div class="gtco-container">
                <div class="row">
                    <div class="col-sm-2 col-xs-12">
                        <div id="gtco-logo"><a href="/">StudyBroad</a></div>
                    </div>
                    <div class="col-xs-10 text-right menu-1">
                        <ul>
                            <asp:Repeater runat="server" ID="List_Menu_Customer">
                                <ItemTemplate>
                                    <li>
                                        <a href="../<%# Eval("Link") %>"><%# Eval("Text") %></a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                            <li class="has-dropdown">
                                <a href="#">
                                    <asp:Label runat="server" ID="lbNameUser"></asp:Label>
                                    <asp:Image runat="server" ID="img_User" CssClass="img-responsive img-circle center-block pull-right" Width="45" />
                                    <i class="fa fa-angle-down"></i>
                                </a>
                                <ul class="dropdown">
                                    <li><a href="#">Profile</a></li>
                                    <li><a href="#">Message</a></li>
                                    <li><a href="#">Branding</a></li>
                                    <li class="divider"></li>
                                    <li>
                                        <asp:LinkButton runat="server" ID="btn_LogOut" OnClick="btn_LogOut_Click">Sign out</asp:LinkButton>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </nav>
    </asp:View>
</asp:MultiView>
