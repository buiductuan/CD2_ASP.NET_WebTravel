<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Newsletter.aspx.cs" Inherits="Areas_Admin_Manage_Newsletter" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Quản lý blog</h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Blog</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-right">
                        <a href="Manage_Newsletter_Insert.aspx" class="btn btn-primary">Thêm mới</a>
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
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtSearch_Newsletter" placeholder="Tìm kiếm"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:LinkButton runat="server" ID="btnSearch_Newsletter" CsscClass="btn btn-flat"><i class="fa fa-search"></i></asp:LinkButton>
                            </span>
                        </div>
                    </div>
                    <hr />
                    <asp:Repeater runat="server" ID="List_Newsletter">
                        <HeaderTemplate>
                            <table class="table">
                                <thead>
                                    <th></th>
                                    <th>Tin tức</th>
                                    <th>Mô tả</th>
                                    <th>Loại</th>
                                    <th>Tác giả</th>
                                    <th></th>
                                </thead>
                                <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td>
                                    <img width="60" src="../../images/Newsletter/<%# Eval("Image") %>" />
                                </td>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("NewsletterID","Manage_Newsletter_Update.aspx?id={0}") %>'>
                                         <%# Eval("NameNewsletter") %>
                                    </asp:HyperLink>
                                </td>
                                <td>
                                    <%# Eval("Description") %>
                                </td>
                                <td>
                                    <%# Eval("NameNewsCategory") %>
                                </td>
                                <td>
                                    <%# Eval("NameEmployee") %>
                                </td>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("NewsletterID","Manage_Newsletter_Delete.aspx?id={0}") %>'>
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

