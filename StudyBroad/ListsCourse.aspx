<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ListsCourse.aspx.cs" Inherits="ListsCourse" %>

<%@ Register Src="~/UserControls/ListCourse_UserControl.ascx" TagPrefix="ListCourse" TagName="ListCourse_UserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Main" runat="Server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/Slide/slide3.jpg); background-position-x: bottom; background-position-y: bottom">
        <div class="overlay"></div>
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12 col-md-offset-0 text-left">
                    <div class="row row-mt-15em">
                        <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                            <span class="intro-text-small">StudyBroad</span>
                            <h2 style="font-size: 30pt">Danh sách các trường đang tuyển sinh
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="gtco-section border-bottom">
        <div class="gtco-container">
            <div class="row">
                <div class="col-lg-9 col-md-9">
                    <a href="../Default.aspx">Trang chủ / </a>
                    &nbsp;Tất cả các trường tuyển sinh
                </div>
                <div class="col-lg-3 col-md-3">
                    <asp:DropDownList CssClass="pull-right form-control" runat="server" ID="filter_Course">
                        <asp:ListItem Value="All">Tất cả</asp:ListItem>
                        <asp:ListItem Value="News">Mới nhất</asp:ListItem>
                        <asp:ListItem Value="NewsToOld">Từ mới đến cũ</asp:ListItem>
                        <asp:ListItem Value="OldToNews">Từ cũ đến mới</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6">
                    <div class="panel panel-default panel_Category">
                        <div class="panel-heading">
                            <h4>Danh mục</h4>
                        </div>
                        <div class="panel-body">
                            <asp:Repeater runat="server" ID="List_Category_Course">
                                <HeaderTemplate>
                                    <ul>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <li>>
                                        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("SeoTitle","~/ListsCourse/{0}") %>'>
                                             <%# Eval("NameCourseCategory") %>
                                        </asp:HyperLink>
                                    </li>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </ul>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                    </div>

                    <div class="panel panel-default">
                        <div class="panel-heading"  style="background-color:#ffffff">
                            Các trường nổi bật
                        </div>
                        <div class="panel-body">
                            <asp:Repeater runat="server" ID="List_Course_Sailent">
                                <ItemTemplate>
                                    <div class="row">
                                        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("SeoTitle","Collections/{0}") %>'>
                                             <div class="col-md-5">
                                            <img src="../images/Courses/<%# Eval("Image") %>" alt="<%# Eval("SeoTitle") %>" class="img-responsive center-block" />
                                        </div>
                                        <div class="col-md-7">
                                           <p style="font-size:10pt">
                                                <%# Eval("NameCourse") %>
                                           </p>
                                        </div>
                                        </asp:HyperLink>
                                    </div>
                                    <hr style="margin-bottom:10px" />
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                </div>
                <div class="col-lg-9 col-md-9 col-sm-12">
                    <ListCourse:ListCourse_UserControl runat="server" ID="ListCourse_UserControl" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

