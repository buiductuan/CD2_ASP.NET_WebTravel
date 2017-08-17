<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_CourseCategory.aspx.cs" Inherits="Areas_Admin_Manage_CourseCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Quản lý  danh mục khóa học</h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Danh mục khóa học</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-left">
                        <a href="Manage_CourseCategory_AddItem.aspx" class="btn btn-primary">Thêm mới</a>
                    </div>
                    <br />
                    <hr />
                    <div class="row">
                        <div class="col-lg-3 col-md-3 col-sm-3">
                            <asp:DropDownList CssClass="form-control" runat="server" ID="DDL_Search">
                                <asp:ListItem>Chọn điều kiện lọc</asp:ListItem>
                                <asp:ListItem>Mới thêm</asp:ListItem>
                                <asp:ListItem></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-lg-9 col-md-9 col-sm-9">
                            <div class="row">
                                <div class="col-lg-10 col-md-10 col-sm-10">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtSearch_Course_Category" placeholder="Tìm kiếm"></asp:TextBox>
                                </div>
                                <div class="col-lg-2">
                                   <asp:Button runat="server" CssClass="btn btn-primary" ID="btnSearch_Course_Category" Text="Tìm kiếm" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <hr />
                    <asp:Repeater runat="server" ID="List_Course_Category">
                        <HeaderTemplate>
                            <table class="table">
                                <thead>
                                    <th>Danh mục</th>
                                    <th>Người tạo</th>
                                    <th>Ngày tạo</th>
                                    <th></th>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("CourseCategoryID","Manage_CourseCategory_Update.aspx?id={0}") %>'>
                                           <%# Eval("NameCourseCategory") %>
                                    </asp:HyperLink>
                                </td>
                                <td>
                                    <%# Eval("ModifiedBy") %>
                                </td>
                                <td>
                                    <%# Convert.ToDateTime(Eval("CreateDate").ToString()).ToShortDateString() %>
                                </td>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("CourseCategoryID","Manage_CourseCategory_Delete.aspx?id={0}") %>'>
                                        <i class="fa fa-trash text-center"></i>
                                    </asp:HyperLink>
                                </td>
                            </tr>
                        </ItemTemplate>
                        <FooterTemplate>
                            </tbody>
                        </table>                        
                        </FooterTemplate>
                    </asp:Repeater>
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
</asp:Content>

