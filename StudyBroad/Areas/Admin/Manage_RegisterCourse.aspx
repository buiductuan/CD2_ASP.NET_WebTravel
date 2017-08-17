<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_RegisterCourse.aspx.cs" Inherits="Areas_Admin_Manage_RegisterCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Quản lý đăng ký khóa học</h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Đăng ký khóa học</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-right">
                        <a href="Manage_Course_Insert.aspx" class="btn btn-primary">Thêm mới</a>
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
                                <div class="col-lg-10">
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtSearch_Course" placeholder="Tìm kiếm"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-2">
                                <asp:Button runat="server" ID="btn_Search_Course" CssClass="btn btn-primary" Text="Tìm kiếm" />
                            </div>
                        </div>
                    </div>
                    <hr />
                    <asp:Repeater runat="server" ID="List_Course">
                        <HeaderTemplate>
                            <table class="table">
                                <thead>
                                    <th></th>
                                    <th>Khoá học</th>
                                    <th>Mô tả</th>
                                    <th>Giá</th>
                                    <th></th>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <img width="60" src="../../images/Courses/<%# Eval("Image") %>" />
                                </td>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("CourseID","Manage_Course_Update.aspx?id={0}") %>'>
                                         <%# Eval("NameCourse") %>
                                    </asp:HyperLink>
                                </td>
                                <td>
                                    <%# Eval("Description") %>
                                </td>
                                <td>
                                    <%# Eval("Price") %>
                                </td>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("CourseID","Manage_Course_Delete.aspx?id={0}") %>'>
                                        <i class="fa fa-trash"></i>
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

