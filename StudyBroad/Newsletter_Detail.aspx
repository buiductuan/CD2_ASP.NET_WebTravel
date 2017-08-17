<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Newsletter_Detail.aspx.cs" Inherits="Newsletter_Detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Main" Runat="Server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/Slide/slide4.jpg)">
        <div class="overlay"></div>
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12 col-md-offset-0 text-left">
                    <div class="row row-mt-15em">
                        <div class="col-md-8 mt-text animate-box" data-animate-effect="fadeInUp">
                            <span class="intro-text-small">
                                <asp:Label runat="server" ID="lbNewsletter_Category"></asp:Label>
                            </span>
                            <h2 style="font-size:30pt">
                                    <asp:Label runat="server" ID="lbName"></asp:Label>
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
                    <p>
                        <a href="/">Trang chủ</a> / 
                        <asp:Label runat="server" ID="lbNameNewsHeading"></asp:Label>
                    </p> 
                </div>
                <div class="col-md-2">
                    <p>
                        <asp:Label runat="server" ID="lbViews" CssClass="pull-right"></asp:Label>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-md-8 text-left gtco-heading">
                    <h2>
                        <asp:Label runat="server" ID="lbNameNewsletter"></asp:Label>
                    </h2>
                    <p>
                        <asp:Label runat="server" ID="lbDescription"></asp:Label>
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
                            <p>
                                 <asp:Label runat="server" ID="lbDetail"></asp:Label>
                            </p>
                        </div>
                    </div>
                </div>
                <div class="col-md-7 macbook-wrap animate-box" data-animate-effect="fadeInRight">
                    <asp:Image runat="server" ID="img_Detail_Newsletter" CssClass="img-responsive center-block" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

