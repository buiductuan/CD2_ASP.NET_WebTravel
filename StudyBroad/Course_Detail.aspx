<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Course_Detail.aspx.cs" Inherits="Course_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Main" runat="Server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/Slide/slide2.jpg)">
        <div class="overlay"></div>
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12 col-md-offset-0 text-left">
                    <div class="row row-mt-15em">
                        <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                            <span class="intro-text-small">StudyBroad</span>
                            <h2 style="font-size:30pt">
                                <asp:Label runat="server" ID="lbNameCourse"></asp:Label>
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="gtco-section border-bottom">
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-10">
                     <a href="/">Trang chủ &nbsp;</a>/
                    <asp:Label runat="server" ID="lbName_Course_Header"></asp:Label>
                </div>
                <div class="col-md-2">
                    <p><asp:Label runat="server" CssClass="pull-right" ID="lbViews"></asp:Label></p>
                </div>
            </div>
            <hr />
            <div class="row">
                <div class="col-md-8 text-left gtco-heading">
                    <h2>
                        <asp:Label runat="server" ID="lbName_Course"></asp:Label>
                    </h2>
                    <p>
                        <asp:Label runat="server" ID="lbDescription_Course"></asp:Label>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-5">
                    <div class="feature-left animate-box" data-animate-effect="fadeInLeft">
                        <span class="icon">
                            <i class="icon-check"></i>
                        </span>
                        <div class="feature-copy">
                            <h3>Thông tin</h3>
                            <p>
                                <asp:Label runat="server" ID="lbDetail_Course"></asp:Label>
                            </p>
                        </div>
                    </div>

                    <div class="feature-left animate-box" data-animate-effect="fadeInLeft">
                        <span class="icon">
                            <i class="fa fa-money"></i>
                        </span>
                        <div class="feature-copy">
                            <h3>Học phí</h3>
                            <p>
                                <asp:Label style="color:#d42c2c;font-size:22pt;font-weight:900" runat="server" ID="lbPrice_Course"></asp:Label>
                            </p>
                        </div>
                    </div>

                    <div class="feature-left animate-box" data-animate-effect="fadeInLeft">
                        <span class="icon">
                            <i class="fa fa-sign-in"></i>
                        </span>
                        <div class="feature-copy">
                            <p>
                                <asp:Button runat="server" ID="btn_Resgiter_Course" Text="Đăng ký" CssClass="btn btn-success" OnClick="btn_Resgiter_Course_Click" />
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-7 macbook-wrap animate-box" data-animate-effect="fadeInRight">
                   <asp:Image runat="server" ID="img_Course" CssClass="img-responsive center-block" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

