<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Newsletter_Insert.aspx.cs" Inherits="Areas_Admin_Manage_Newsletter_Insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Thêm mới tin tức
            </h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Thêm mới tin tức</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <!--Thông tin danh mục-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Thông tin tin tức
                    </h3>
                    <p>Tất cả các thông tin liên quan đến tin tức</p>
                    <asp:Button runat="server" ID="btn_Add_News"  CssClass="btn btn-primary" OnClick="btn_Add_News_Click" Text="Lưu" />
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_NameNews"><b>Tên tin tức</b></asp:Label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtName_News" placeholder="Tên tin tức"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_News_Detail"><b>Nội dung</b></asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtNews_Detail" placeholder="Nội dung"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_Description_News"><b>Mô tả</b></asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtDescription_News" placeholder="Mô tả"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6">
                                    <label>Danh mục tin tức</label>
                                    <asp:DropDownList CssClass="form-control" runat="server" ID="DDL_News_Category">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6">
                                    <asp:Label runat="server" ID="error_img_News"><b>Ảnh đại diện</b></asp:Label>
                                    <asp:FileUpload runat="server" ID="img_News" CssClass="form-control" />
                                </div>
                            </div>
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
                                    <asp:Label runat="server" ID="error_SeoTitle_News">
                                        <b>Thẻ tiêu đề </b>
                                    </asp:Label>
                                    <small class="pull-right"><b style="color: red">(*)</b> Nên đặt theo tên của tin tức</small>
                                    <div class="input-group">
                                        <asp:TextBox runat="server" CssClass="form-control" ID="txtSeoTitle_News" placeholder="Thẻ tiêu đề"></asp:TextBox>
                                        <span class="input-group-btn">
                                            <button class="btn btn-default" type="button" id="getName_SeoTitle">Lấy tên</button>
                                        </span>
                                    </div>
                                    <!-- /input-group -->
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_MetaDescription_News">
                                        <b>Thẻ mô tả</b>
                                    </asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtMetaDescription_News" placeholder="Mô tả"></asp:TextBox>
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
    <script>
        //CKEDITOR.replace('content_Admin_txtNews_Detail');
    </script>
</asp:Content>

