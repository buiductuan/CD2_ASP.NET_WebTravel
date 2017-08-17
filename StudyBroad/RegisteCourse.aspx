<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegisteCourse.aspx.cs" Inherits="RegisteCourse" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Main" Runat="Server">
     <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/Public/contact.jpg)">
        <div class="overlay"></div>
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12 col-md-offset-0 text-left">
                    <div class="row row-mt-15em">

                        <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                            <span class="intro-text-small">StudyBroad</span>
                            <h1 style="font-size:30pt">
                               <asp:Label runat="server" ID="lbNameCourseRegiste"></asp:Label>
                            </h1>
                        </div>

                    </div>

                </div>
            </div>
        </div>
    </header>
    <div class="gtco-section border-bottom">
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12">
                    <div class="col-md-6 animate-box">
                        <h3>Đăng ký khóa du học <asp:Label runat="server" ID="lbNameCourse"></asp:Label></h3>
                        <div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label for="name">Họ và tên <font style="color:#e14b4b">*</font></label>
                                   <asp:TextBox runat="server" ID="txtYourName_RegisterCourse" placeholder="Họ và tên" CssClass="form-control"></asp:TextBox>
                                </div>

                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label for="email">Email <font style="color:#e14b4b">*</font></label>
                                   <asp:TextBox runat="server" ID="txtEmail_RegisterCourse" placeholder="Email" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                             <div class="row form-group">
                                <div class="col-md-12">
                                    <label for="email">Số điện thoại <font style="color:#e14b4b">*</font></label>
                                   <asp:TextBox runat="server" ID="txtPhone_RegisterCourse" placeholder="Email" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label for="subject">Tiêu đề</label>
                                   <asp:TextBox runat="server" ID="txtSubject_RegisterCourse" placeholder="Tiêu đề" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row form-group">
                                <div class="col-md-12">
                                    <label for="message">Nội dung <font style="color:#e14b4b">*</font></label>
                                   <asp:TextBox runat="server" TextMode="MultiLine" Rows="10" Columns="10" ID="txtDetail_RegisterCourse" placeholder="Nội dung" CssClass="form-control"></asp:TextBox>
                                </div>
                            </div>
                            <div class="form-group">
                                <asp:Button runat="server" CssClass="btn btn-primary" ID="btn_RegisterCourse" Text="Đăng ký" OnClick="btn_RegisterCourse_Click" />
                            </div>

                        </div>
                    </div>
                    <div class="col-md-5 col-md-push-1 animate-box">

                        <div class="gtco-contact-info">
                            <h3>Thông tin liên hệ</h3>
                            <ul>
                                <li class="address"><asp:Label runat="server" ID="lbAddress"></asp:Label></li>
                                <li class="phone"><a href="#"><asp:Label runat="server" ID="Phone"></asp:Label></a></li>
                                <li class="email"><a href="#"><asp:Label runat="server" ID="Email"></asp:Label></a></li>
                                <li class="url"><a href="https://studyabroad.somee.com"><asp:Label runat="server" ID="domain"></asp:Label></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

