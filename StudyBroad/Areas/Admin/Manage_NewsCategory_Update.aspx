<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_NewsCategory_Update.aspx.cs" Inherits="Areas_Admin_Manage_NewsCategory_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Sửa danh mục tin tức
            </h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Sửa danh mục tin tức</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <!--Thông tin danh mục-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Thông tin danh mục tin tức
                    </h3>
                    <p>Tất cả các thông tin liên quan đến danh mục tin tức</p>
                    <asp:Button runat="server" ID="btn_Update_NewsCategory" CssClass="btn btn-primary" Text="Lưu" />
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_Name_NewsCategory">Tên danh mục</asp:Label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtName_NewsCategory" placeholder="Tên danh mục"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_MetaTile_NewsCategory">Mô tả</asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtMetaTile_NewsCategory" placeholder="Mô tả"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6">
                                    <asp:Label runat="server" ID="error_img_News_Category">Ảnh đại diện</asp:Label>
                                    <asp:FileUpload runat="server" ID="img_NewsCategory" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


            <!--Danh mục-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Danh mục thường
                    </h3>
                    <p>Bạn sẽ thêm sản phẩm vào danh mục một cách thủ công.</p>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <asp:RadioButtonList runat="server" ID="rbl_Category_News">
                                <asp:ListItem Value="AddBasic" Selected="True">&nbsp;&nbsp;Thêm sản phẩm thủ công</asp:ListItem>
                                <asp:ListItem Value="Add_Automatic">&nbsp;&nbsp;Thêm sản phẩm tự động</asp:ListItem>
                            </asp:RadioButtonList>
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
                                    <asp:Label runat="server" ID="error_SeoTitle_NewsCategory">Thẻ tiêu đề</asp:Label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtSeoTitle_NewsCategory" placeholder="Thẻ tiêu đề"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_MetaDescription_NewsCategory">Thẻ mô tả</asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtMetaDescription_NewsCategory" placeholder="Mô tả"></asp:TextBox>
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
                            <asp:RadioButtonList runat="server" ID="rbl_NewsCategory_Status">
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

