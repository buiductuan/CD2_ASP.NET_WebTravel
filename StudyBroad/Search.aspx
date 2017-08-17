<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content_Main" Runat="Server">
    <header id="gtco-header" class="gtco-cover gtco-cover-sm" role="banner" style="background-image: url(../images/Slide/slide2.jpg); background-position-x: bottom; background-position-y: bottom">
        <div class="overlay"></div>
        <div class="gtco-container">
            <div class="row">
                <div class="col-md-12 col-md-offset-0 text-left">
                    <div class="row row-mt-15em">
                        <div class="col-md-7 mt-text animate-box" data-animate-effect="fadeInUp">
                            <span class="intro-text-small">StudyBroad</span>
                            <h2 style="font-size: 30pt">Tìm kiếm
                            </h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <div class="gtco-section border-bottom">
        <div class="gtco-container">
            <p>
                <a href="/"> Trang chủ </a> / Kết quả tìm kiếm <br /><br />
                <asp:Label runat="server" ID="lb_notification"></asp:Label>
            </p>
            <hr />
            <asp:Repeater runat="server" ID="List_Result_Search">
                <ItemTemplate>
                    <div class="row">
                        <asp:HyperLink runat="server" NavigateUrl='<%# Eval("SeoTitle","~/Collections/{0}") %>'>
                            <div class="col-md-1">
                            <img width="70" src="../images/Courses/<%# Eval("Image") %>" class="img-responsive" />
                        </div>
                        <div class="col-md-11">
                            <%# Eval("NameCourse") %>
                        </div>
                        </asp:HyperLink>
                    </div>
                    <br />
                </ItemTemplate>
            </asp:Repeater>

        </div>
    </div>
</asp:Content>

