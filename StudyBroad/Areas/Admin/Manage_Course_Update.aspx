<%@ Page Title="" Language="C#" MasterPageFile="~/Areas/Admin/Admin_MasterPage.master" AutoEventWireup="true" CodeFile="Manage_Course_Update.aspx.cs" Inherits="Areas_Admin_Manage_Course_Update" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="content_Admin" runat="Server">
    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
            <h1>Sửa khóa học
            </h1>
            <i class="fa fa-uses fa-fw bg-black"></i>
            <ol class="breadcrumb">
                <li><i class="fa fa-users"></i>Sửa khóa học</li>
                <li class="active">Dashboard</li>
            </ol>
        </section>
        <!-- Main content -->
        <section class="content">
            <!--Thông tin danh mục-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Thông tin khóa học
                    </h3>
                    <p>Tất cả các thông tin liên quan đến khóa học</p>
                    <asp:Button runat="server" ID="btn_Update_Course" OnClick="btn_Update_Course_Click" CssClass="btn btn-primary" Text="Lưu" />
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_NameCourse"><b>Tên khóa học</b></asp:Label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtName_Course" placeholder="Tên khóa học"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_Course_Detail"><b>Nội dung</b></asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtCourse_Detail" placeholder="Nội dung"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_Description_Course"><b>Mô tả</b></asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtDescription_Course" placeholder="Mô tả"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-6">
                                    <label>Danh mục khóa học</label>
                                    <asp:DropDownList CssClass="form-control" runat="server" ID="DDL_Course_Category">
                                    </asp:DropDownList>
                                </div>
                                <div class="col-lg-6">
                                    <asp:Label runat="server" ID="error_img_Course"><b>Ảnh đại diện</b></asp:Label>
                                    <asp:FileUpload runat="server" ID="img_Course" CssClass="form-control" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <!--Danh mục-->
            <div class="row">
                <div class="col-lg-4">
                    <h3 class="fw-200">Đặt giá
                    </h3>
                    <p>Bạn có thể đặt giá dự kiến cho từng khóa học.</p>
                </div>
                <div class="col-lg-8">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <asp:Label runat="server" ID="error_Setting_Price"></asp:Label>
                            <div class="input-group">
                                <asp:TextBox runat="server" CssClass="form-control" ID="txtPrice_Course" aria-describedby="basic-addon1"></asp:TextBox>
                                <span class="input-group-addon" id="basic-addon1">vn₫/năm</span>
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
                                    <asp:Label runat="server" ID="error_SeoTitle_Course">
                                        <b>Thẻ tiêu đề </b>
                                        <small class="pull-right"><b style="color:red" >(*)</b> Nên đặt theo tên của khóa học</small>
                                    </asp:Label>
                                    <asp:TextBox runat="server" CssClass="form-control" ID="txtSeoTitle_Course" placeholder="Thẻ tiêu đề"></asp:TextBox>
                                </div>
                            </div>
                            <hr />
                            <div class="row">
                                <div class="col-lg-12">
                                    <asp:Label runat="server" ID="error_MetaDescription_Course">
                                        <b>Thẻ mô tả</b>
                                    </asp:Label>
                                    <asp:TextBox runat="server" TextMode="MultiLine" CssClass="form-control" ID="txtMetaDescription_Course" placeholder="Mô tả"></asp:TextBox>
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
     <script>
        CKEDITOR.replace('content_Admin_txtCourse_Detail');
    </script>
</asp:Content>

