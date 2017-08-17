<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Employee.aspx.cs" Inherits="Areas_Admin_Manage_Employee" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Quản lý  nhân viên</h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Nhân viên</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <div class="row">
                <div class="col-lg-4">
                    <h1 class="fw-200">Nhân viên quản trị</h1>
                    <p>Bạn có thể cấp quyền quản trị website cho người khác.</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modal_AddNewEmployee">Thêm mới</a>
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
                            <asp:Repeater runat="server" ID="List_Employee">
                                <HeaderTemplate>
                                    <table class="table">
                                        <thead>
                                            <th></th>
                                            <th>Tên</th>
                                            <th>Email</th>
                                            <th>Quyền truy cập</th>
                                            <th>Đăng nhập cuối</th>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                        <tr>
                                            <td>
                                                <img src="../../images/Employees/<%# Eval("Avatar") %>" class="img-responsive img-circle" height="40" width="40" />
                                            </td>
                                            <td>
                                                <asp:HyperLink runat="server" NavigateUrl='<%# Eval("EmployeeID","Employee_Detail.aspx?id={0}") %>'>
                                                     <%# Eval("NameEmployee") %>
                                                </asp:HyperLink>
                                            </td>
                                            <td><%#  Eval("Email") %></td>
                                            <td><%# int.Parse(Eval("Role").ToString())==5 ? "Chủ tài khoản":"Nhân viên" %></td>
                                            <td><%# Eval("TimeActive") %></td>
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

    <div class="modal fade" id="modal_AddNewEmployee">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title text-center">Thêm nhân viên</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_NameEmployee">Họ và tên</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtName_Employee" placeholder="Họ và tên"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_DayofbirthEmployee">Ngày sinh</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtDayofbirth_Employee" placeholder="Ngày sinh"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_EmailEmployee">Email</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail_Employee" placeholder="Email"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <asp:RadioButtonList Style="display: inline-block" runat="server" ID="rbl_Gender_Employee">
                                <asp:ListItem Value="Nam">Nam</asp:ListItem>
                                <asp:ListItem Value="Nữ">Nữ</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_PhoneEmployee">Số điện thoại</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtPhone_Employee" placeholder="Số điện thoại"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_AddressEmployee">Địa chỉ</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtAddress_Employee" placeholder="Địa chỉ"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_AvatarEmployee">Ảnh đại diện</asp:Label>
                            <asp:FileUpload runat="server" ID="img_Upload_Avatar_Employee" />
                        </div>
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_DescriptionEmployee">Mô tả</asp:Label>
                            <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtDescription_Employee" placeholder="Mô tả"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_UserNameEmployee">Tên đăng nhập</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtUserName_Employee" placeholder="Tên đăng nhập"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_PasswordEmployee">Mật khẩu</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtPassword_Employee" placeholder="Mật khẩu" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:Label runat="server" ID="error_RepeatPasswordEmployee">Nhập lại mật khẩu</asp:Label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtRepeatPassword_Employee" placeholder="Nhập lại mật khẩu" TextMode="Password"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <asp:Button runat="server" ID="btn_AddEmployee" OnClick="btn_AddEmployee_Click"  CssClass="btn btn-primary" Text="Thêm mới"/>
                </div>
            </div>
        </div>
    </div>

</asp:Content>

