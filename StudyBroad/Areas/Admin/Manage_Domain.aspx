<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Domain.aspx.cs" Inherits="Areas_Admin_Manage_Domain" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Quản lý  tên miền</h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Tên miền</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Quản lý tên miền</h3>
                    <p>Bạn có thể thêm các tên miền con cho website của bạn.</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modal_AddNewDomain">Thêm mới</a>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <%--<div class="pull-right">
                                <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modal_AddNewMember">Sửa</a>
                            </div>
                            <br />
                            <hr />--%>
                            <hr />
                            <asp:Repeater runat="server" ID="List_Domain">
                                <HeaderTemplate>
                                    <table class="table">
                                        <thead>
                                            <th>Tên</th>
                                            <th>Trạng thái</th>
                                            <th>Tên miền chính</th>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <%# Eval("Name") %>
                                        </td>
                                        <td><%#  Convert.ToBoolean(Eval("Status").ToString().ToLower().Trim())==true?"<i class=\"fa fa-check fa-fw\"></i> OK":"<i class=\"fa fa-times fa-fw\"></i> NO" %></td>
                                        <td><%#  Convert.ToBoolean(Eval("JustDomain").ToString().ToLower().Trim())==true?"<i class=\"fa fa-check fa-fw\"></i> OK":"<i class=\"fa fa-times fa-fw\"></i> NO" %></td>
                                        <td>
                                            <asp:HyperLink runat="server" NavigateUrl='<%# Eval("DomainID","Manage_Domain_Delete.aspx?id={0}") %>'>
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
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <div class="modal fade" id="modal_AddNewDomain">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title text-center">Thêm tên miền</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-12">
                            <asp:Label runat="server" ID="error_NameDomain">Tên miền</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtName_Domain" placeholder="example.com"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <asp:Button runat="server" ID="btn_AddDomain" OnClick="btn_AddDomain_Click" CssClass="btn btn-primary" Text="Thêm mới" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

