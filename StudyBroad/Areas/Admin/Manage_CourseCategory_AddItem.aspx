﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_CourseCategory_AddItem.aspx.cs" Inherits="Areas_Admin_Manage_CourseCategory_AddItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>
                Thêm mới danh mục khóa học
            </h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Thêm mới danh mục khóa học</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <!--Thông tin danh mục-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Thông tin danh mục khóa học
                    </h3>
                    <p>Tất cả các thông tin liên quan đến danh mục khóa học</p>
                    <asp:Button runat="server" ID="btn_Add_CourseCategory" OnClick="btn_Add_CourseCategory_Click" CssClass="btn btn-primary" Text="Lưu"/>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_NameCourseCategory">Tên danh mục</asp:Label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtName_CourseCategory" placeholder="Tên danh mục"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_MetaTile_Category">Mô tả</asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtMetaTile_CourseCategory" placeholder="Mô tả"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <%--<div class="row">
                                <div class="col-lg-6">
                                    <asp:Label runat="server" ID="error_img_Course_Category">Ảnh đại diện</asp:Label>
                                    <asp:FileUpload runat="server" ID="img_CourseCategory" CssClass="form-control" />
                                </div>
                            </div>--%>
                        </div>
                    </div>
                </div>
            </div>
            <!--Tối ưu SEO-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Tối ưu SEO
                    </h3>
                    <p>
                        Thiết lập tiêu đề trang, thẻ mô tả, đường dẫn. Những thông tin này xác định cách bài viết xuất hiện trên công cụ tìm kiếm.
                    </p>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_SeoTitle_CourseCategory">Thẻ tiêu đề</asp:Label>
                                    <small class="pull-right"><font style="color:#e94444">(*)</font> Nên đặt theo tên của danh mục khóa học</small>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSeoTitle_CourseCategory" placeholder="Thẻ tiêu đề"></asp:TextBox>
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" id="btn_GetNameBySEO_course_category" type="button">Lấy tên</button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_MetaDescription_CourseCategory">Thẻ mô tả</asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtMetaDescription_CourseCategory" placeholder="Mô tả"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Trạng thái hiển thị-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Trạng thái
                    </h3>
                    <p>
                        Cho phép thiết lập thời gian sản phẩm được hiển thị.
                    </p>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <asp:RadioButtonList runat="server" ID="rbl_CourseCategory_Status"> 
                                <asp:ListItem Value="true" Selected="True">&nbsp;&nbsp;Hiển thị</asp:ListItem>
                                <asp:ListItem Value="false">&nbsp;&nbsp;Ẩn</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </div>
                </div>
            </div>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->
</asp:Content>

