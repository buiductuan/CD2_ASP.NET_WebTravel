<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="GettingStarted.aspx.cs" Inherits="GettingStarted" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Main" runat="Server">
    <header id="gtco-header" class="gtco-cover" role="banner" style="height: 700px">
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12 col-md-offset-0 text-left">
                    <div class="row">
                        <h1 class="text-center" style="padding-bottom: 40px !important; padding-top: 30px !important">Getting Started with StudyBroad</h1>
                        <ul class="gtco-social-icons text-center" style="margin-bottom:40px">
                            <li><a href="#"><i style="font-size:28pt;color:#0094ff;" class="icon-twitter"></i></a></li>
                            <li><a href="#"><i style="font-size:28pt;color:#306597" class="icon-facebook"></i></a></li>
                            <li><a href="#"><i style="font-size:28pt;color:#f14747" class="icon-linkedin"></i></a></li>
                        </ul>
                        <div class="col-md-6 col-md-push-3 animate-box" data-animate-effect="BoundInUp">
                            <div class="form-wrap">
                                <div class="tab">
                                    <%--Sign in and Sign Up--%>
                                    <ul class="tab-menu">
                                        <li class="active gtco-first"><a href="#" data-tab="signup">Đăng ký</a></li>
                                        <li class=" gtco-second"><a href="#" data-tab="login">Đăng nhập</a></li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-content-inner active" data-content="signup">
                                            <div>
                                                <asp:Label runat="server" CssClass="pull-right label label-success lead" ID="lbNotitfication"></asp:Label>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <b>
                                                            <asp:Label runat="server" for="username" ID="error_UserName_SignUp">Tên đăng nhập</asp:Label></b>
                                                        <asp:TextBox runat="server" placeholder="Tên đăng nhập" CssClass="form-control" ID="txtUsername_SignUp"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <strong>
                                                            <asp:Label runat="server" for="password" ID="error_Password_SignUp">Mật khẩu</asp:Label></strong>
                                                        <asp:TextBox runat="server" placeholder="Mật khẩu" CssClass="form-control" ID="txtPassword_SignUp" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <strong>
                                                            <asp:Label runat="server" for="password2" ID="error_RepeatPassword_SignUp">Nhập lại mật khẩu</asp:Label></strong>
                                                        <asp:TextBox runat="server" placeholder="Nhập lại mật khẩu" CssClass="form-control" ID="txtRepeatPassword_SignUp" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <asp:Button runat="server" ID="btn_SignUp" OnClick="btn_SignUp_Click" CssClass="btn btn-primary" Text="Đăng ký" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="tab-content-inner" data-content="login">
                                            <div>
                                                <asp:Label runat="server" CssClass="pull-right label label-danger" ID="lbError_SignIn"></asp:Label>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <strong>
                                                            <asp:Label runat="server" ID="error_UserName_SignIn" for="username">Tên đăng nhập</asp:Label></strong>
                                                        <asp:TextBox runat="server" placeholder="Tên đăng nhập" CssClass="form-control" ID="txtUserName_SignIn"></asp:TextBox>
                                                    </div>
                                                </div>
                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <strong>
                                                            <asp:Label runat="server" ID="error_Password_SignIn" for="password">Mật khẩu</asp:Label></strong>
                                                        <asp:TextBox runat="server" placeholder="Mật khẩu" CssClass="form-control" ID="txtPassword_SignIn" TextMode="Password"></asp:TextBox>
                                                    </div>
                                                </div>

                                                <div class="row form-group">
                                                    <div class="col-md-12">
                                                        <asp:Button runat="server" ID="btn_SignIn" OnClick="btn_SignIn_Click" CssClass="btn btn-primary" Text="Đăng nhập" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%--end Sign in and Sign Up--%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
<script>
    $(function () {
        $(window).load(function () {
            $('.gtco-nav').hide();
        });
    });
</script>
</asp:Content>
