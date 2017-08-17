<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>
<%@ Register Src="~/UserControls/ListCourse_UserControl.ascx" TagPrefix="ListCourse" TagName="ListCourse_UserControl" %>
<%@ Register Src="~/UserControls/Newsletter_UserControl.ascx" TagPrefix="Newsletter" TagName="Newsletter_UserControl" %>
<%@ Register Src="~/UserControls/CourseSailent_UserControl.ascx" TagPrefix="CourseSailent" TagName="CourseSailent_UserControl" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Main" runat="Server">
    <header id="gtco-header" class="gtco-cover" role="banner" style="background-image: url(images/Slide/slide2.jpg)">
        <div class="overlay"></div>
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12 col-md-offset-0 text-left">
                    <div class="row row-mt-15em">
                        <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                            <span class="intro-text-small">Welcome to StudyBroad </span>
                            <h1>StudyBroad Education university</h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="gtco-section border-bottom">
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
                    <h2>Các trường đang tuyển sinh</h2>
                    <p>Chúng tôi cập nhật tất cả những trường mới nhất đang tuyển sinh </p>
                </div>
            </div>
            <div class="row">
                <ListCourse:ListCourse_UserControl runat="server" ID="ListCourse_UserControl" />
            </div>
            <br />
            <p class="animate-box text-center">
                <a href="ListsCourse/all" class="btn btn-primary">Xem thêm</a>
            </p>
        </div>
    </div>
    <div id="gtco-features" class="border-bottom">
        <div class="gtco-container-newletter">
            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                    <h2>Tin tức</h2>
                    <p>Nơi cập nhật những tin tức mới nhất</p>
                </div>
            </div>
            <div class="row">
                <Newsletter:Newsletter_UserControl runat="server" ID="Newsletter_UserControl" />
            </div>
            <br />
             <p class="animate-box text-center">
                <a href="ListsNewsletter/all" class="btn btn-primary">Xem thêm</a>
            </p>
        </div>
    </div>
    <div id="gtco-counter" class="gtco-section">
        <div class="gtco-container">

            <div class="row">
                <div class="col-md-8 col-md-offset-2 text-center gtco-heading animate-box">
                    <h2>Về chúng tôi</h2>
                    <p>Công ty cổ phần đầu tư StudyBroad thành lập vào tháng 1 năm 2007. là cái tên đã từng bước khẳng định trong lĩnh vực hoạt động chủ yếu về tư vấn du học.</p>
                </div>
            </div>

            <div class="row">

                <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="feature-center">
                        <span class="icon">
                            <i class="ti-settings"></i>
                        </span>
                        <span class="counter js-counter" data-from="0" data-to="22070" data-speed="5000" data-refresh-interval="50">1</span>
                        <span class="counter-label">Các khóa du học</span>

                    </div>
                </div>
                <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="feature-center">
                        <span class="icon">
                            <i class="ti-face-smile"></i>
                        </span>
                        <span class="counter js-counter" data-from="0" data-to="97" data-speed="5000" data-refresh-interval="50">1</span>
                        <span class="counter-label">Khách hàng</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="feature-center">
                        <span class="icon">
                            <i class="ti-briefcase"></i>
                        </span>
                        <span class="counter js-counter" data-from="0" data-to="402" data-speed="5000" data-refresh-interval="50">1</span>
                        <span class="counter-label">Thực hiện</span>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 animate-box" data-animate-effect="fadeInLeft">
                    <div class="feature-center">
                        <span class="icon">
                            <i class="ti-time"></i>
                        </span>
                        <span class="counter js-counter" data-from="0" data-to="212023" data-speed="5000" data-refresh-interval="50">1</span>
                        <span class="counter-label"></span>

                    </div>
                </div>

            </div>
        </div>
    </div>
    
    <div id="gtco-subscribe">
        <div class="gtco-container">
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2 text-center gtco-heading">
                    <h2>Đăng ký</h2>
                    <p>Đăng ký địa chỉ email để nhận được những tin tức mới nhất từ StudyBroad.</p>
                </div>
            </div>
            <div class="row animate-box">
                <div class="col-md-8 col-md-offset-2">
                    <div class="form-inline">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <label for="email" class="sr-only">Email</label>
                                <input type="email" class="form-control" id="email" placeholder="Your Email">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <button type="submit" class="btn btn-default btn-block">Đăng ký</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

