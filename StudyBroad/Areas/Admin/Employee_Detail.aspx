<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Employee_Detail.aspx.cs" Inherits="Areas_Admin_Employee_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                <asp:Label runat="server" ID="lbName_Employee_header"></asp:Label>
            </h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Nhân viên</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <!--Thông tin tài khoản-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Thông tin tài khoản
                    </h3>
                    <p>Tất cả các thông tin liên quan đến tài khoản</p>
                    <a href="#" class="btn btn-primary" data-toggle="modal" data-target="#modal_UpdateEmployee">Lưu</a>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
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
                    </div>
                </div>
            </div>


            <!--Quyền quản trị-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Quyền quản trị
                    </h3>
                    <p>Chọn các phần mà tài khoản này có thể truy cập được</p>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <asp:CheckBox runat="server" ID="Desenstralization_Check" Text=" Giới hạn quyền truy cập" />
                        </div>
                    </div>
                </div>
            </div>
            <!--Lịch sử đăng nhập-->
             <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Lịch sử đăng nhập
                    </h3>
                    <p>Truy cập từ ISP, 
                        địa điểm hoặc địa chỉ IP lạ có thể cho thấy tài khoản có thể bị xâm nhập và cần được xem xét thêm.</p>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <table class="table">
                                <thead>
                                    <th>Ngày đăng nhập</th>
                                    <th>IP</th>
                                    <th>Agent</th>
                                </thead>
                                <tbody></tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <div class="modal fade" id="modal_UpdateEmployee">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title fw-200">Thông báo</h4>
			</div>
			<div class="modal-body">
				<h4 class="fw-200">Bạn có muốn lưu các thông tin vừa được thay đổi không ?</h4>
			</div>
			<div class="modal-footer">
                 <asp:Button runat="server" ID="btn_SaveEmployee" CssClass="btn btn-primary" OnClick="btn_SaveEmployee_Click" Text="Lưu" />
			</div>
		</div>
	</div>
</div>
</asp:Content>

