<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Member.aspx.cs" Inherits="Areas_Admin_Manage_Member" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Quản lý  thành viên</h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Thành viên</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>

        <!-- Main content -->
        <section class="content">
            <div class="panel panel-default">
                <div class="panel-body">
                    <div class="pull-right">
                        <%--<a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modal_AddNewMember">Sửa</a>--%>
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
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtSearch_Member" placeholder="Tìm kiếm"></asp:TextBox>
                            <span class="input-group-btn">
                                <asp:LinkButton runat="server" ID="btnSearch_Member" CsscClass="btn btn-flat"><i class="fa fa-search"></i></asp:LinkButton>
                            </span>
                        </div>
                    </div>
                    <hr />
                    <asp:Repeater runat="server" ID="List_Customer">
                        <HeaderTemplate>
                            <table class="table">
                                <thead>
                            <th>Tên</th>
                            <th>Giới tính</th>
                            <th>Email</th>
                            <th>Địa chỉ</th>
                        </thead>
                               <tbody>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <tr>
                                <td><%# Eval("NameCustomer") ==null ? "Unknow": Eval("NameCustomer") %></td>
                                 <td><%# Eval("Gender") ==null ? "Unknow": Eval("Gender")%></td>
                                 <td><%# Eval("Email") ==null ? "Unknow": Eval("Email") %></td>
                                 <td><%# Eval("Address") ==null ? "Unknow": Eval("Address") %></td>
                                <td>
                                    <asp:HyperLink runat="server" NavigateUrl='<%# Eval("CustomerID","Manage_Member_Delete.aspx?id={0}") %>'>
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
                    <table class="table">
                        
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <div class="modal fade" id="modal_AddNewMember">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">Thêm thành viên</h4>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtName_Member" placeholder="Họ và tên"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtDayofbirth_Member" placeholder="Ngày sinh"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtEmail_Member" placeholder="Email"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <asp:RadioButtonList Style="display: inline-block" runat="server" ID="rbl_Gender_Member">
                                <asp:ListItem Value="Nam">Nam</asp:ListItem>
                                <asp:ListItem Value="Nữ">Nữ</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtPhone_Member" placeholder="Số điện thoại"></asp:TextBox>
                        </div>
                        <div class="col-lg-6">
                            <asp:TextBox runat="server" CssClass="form-control" ID="txtAddress_Member" placeholder="Địa chỉ"></asp:TextBox>
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-lg-6">
                            <asp:FileUpload runat="server" ID="img_Upload_Avatar_Member" />
                        </div>
                        <div class="col-lg-6">
                            <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtDescription_Member" placeholder="Giới thiệu bản thân"></asp:TextBox>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

