
$(function () {

    var Valid_Course = function () {

        $('#content_Admin_btn_Add_Course').click(function () {
            var Name = $('#content_Admin_txtName_Course').val();
            var Detail = $('#content_Admin_txtCourse_Detail').val();
            var Description = $('#content_Admin_txtDescription_Course').val();
            var Price = $('#content_Admin_txtPrice_Course').val();
            var seo_title = $('#content_Admin_txtSeoTitle_Course').val();
            var MetaDescription = $('#content_Admin_txtMetaDescription_Course').val();
            var regNumber = /^\d+$/;
            if (Name == "") {
                $('#content_Admin_error_NameCourse').html("<b>Tên khóa học không được trống !!! </b>");
                $('#content_Admin_error_NameCourse').addClass('error_label');
                $('#content_Admin_txtName_Course').addClass('invalid');
                $('#content_Admin_txtName_Course').focus();
                return false;
            }
            else {
                if (Name.length > 250) {
                    $('#content_Admin_error_NameCourse').html("<b>Tên khóa học không vượt quá 250 ký tự</b>");
                    $('#content_Admin_error_NameCourse').addClass('error_label');
                    $('#content_Admin_txtName_Course').addClass('invalid');
                    $('#content_Admin_txtName_Course').focus();
                    return false;
                }
                else {
                    if (Detail == "") {
                        $('#content_Admin_error_Course_Detail').html("<b>Nội dung không được trống !!! </b>");
                        $('#content_Admin_error_Course_Detail').addClass('error_label');
                        $('#content_Admin_txtCourse_Detail').addClass('invalid');
                        $('#content_Admin_txtCourse_Detail').focus();
                        return false;
                    } else {
                        if (Description == "") {
                            $('#content_Admin_error_Description_Course').html("<b>Mô tả không được trống !!!</b>");
                            $('#content_Admin_error_Description_Course').addClass('error_label');
                            $('#content_Admin_txtDescription_Course').addClass('invalid');
                            $('#content_Admin_txtDescription_Course').focus();
                            return false;
                        } else {
                            if (Price == "") {
                                $('#content_Admin_error_Setting_Price').html("<b>Giá không được trống !!!</b>");
                                $('#content_Admin_error_Setting_Price').addClass('error_label');
                                $('#content_Admin_txtPrice_Course').addClass('invalid');
                                $('#content_Admin_txtPrice_Course').focus();
                                return false;
                            } else {
                                if (!regNumber.test(Price)) {
                                    $('#content_Admin_error_Setting_Price').html("<b>Giá phải là số !!!</b>");
                                    $('#content_Admin_error_Setting_Price').addClass('error_label');
                                    $('#content_Admin_txtPrice_Course').addClass('invalid');
                                    $('#content_Admin_txtPrice_Course').focus();
                                    return false;
                                } else {
                                    if (Price < 10000000) {
                                        $('#content_Admin_error_Setting_Price').html("<b>Giá khóa học lớn hơn 10.000.000 vnđ</b>");
                                        $('#content_Admin_error_Setting_Price').addClass('error_label');
                                        $('#content_Admin_txtPrice_Course').addClass('invalid');
                                        $('#content_Admin_txtPrice_Course').focus();
                                        return false;
                                    } else {
                                        if (seo_title == "") {
                                            $('#content_Admin_error_SeoTitle_Course').html("<b>Thẻ tiêu đề không được trống !!!</b>");
                                            $('#content_Admin_error_SeoTitle_Course').addClass('error_label');
                                            $('#content_Admin_txtSeoTitle_Course').addClass('invalid');
                                            $('#content_Admin_txtSeoTitle_Course').focus();
                                            return false;
                                        } else {
                                            if (seo_title.length > 250) {
                                                $('#content_Admin_error_SeoTitle_Course').html("<b>Thẻ tiêu đề không quá 250 ký tự !!!</b>");
                                                $('#content_Admin_error_SeoTitle_Course').addClass('error_label');
                                                $('#content_Admin_txtSeoTitle_Course').addClass('invalid');
                                                $('#content_Admin_txtSeoTitle_Course').focus();
                                                return false;
                                            } else {
                                                if (MetaDescription == "") {
                                                    $('#content_Admin_error_MetaDescription_Course').html("<b>Thẻ mô tả không được trống !!!</b>");
                                                    $('#content_Admin_error_MetaDescription_Course').addClass('error_label');
                                                    $('#content_Admin_txtMetaDescription_Course').addClass('invalid');
                                                    $('#content_Admin_txtMetaDescription_Course').focus();
                                                    return false;
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }

            return true;
        });
        $('#content_Admin_txtName_Course').keyup(function () {
            var Name = $('#content_Admin_txtName_Course').val();
            if (Name == "") {
                $('#content_Admin_error_NameCourse').html("<b>Tên khóa học không được trống !!!</b>");
                $('#content_Admin_error_NameCourse').addClass('error_label');
                $('#content_Admin_txtName_Course').addClass('invalid');
                $('#content_Admin_txtName_Course').focus();
            }
            else {
                if (Name.length > 250) {
                    $('#content_Admin_error_NameCourse').html("<b>Tên khóa học không vượt quá 250 ký tự</b>");
                    $('#content_Admin_error_NameCourse').addClass('error_label');
                    $('#content_Admin_txtName_Course').addClass('invalid');
                    $('#content_Admin_txtName_Course').focus();
                }
                else {
                    $('#content_Admin_error_NameCourse').html("<b>Tên khóa học</b>");
                    $('#content_Admin_error_NameCourse').removeClass('error_label');
                    $('#content_Admin_txtName_Course').removeClass('invalid');
                    $('#content_Admin_txtName_Course').focus();
                }
            }
        });
        $('#content_Admin_txtCourse_Detail').keyup(function () {
            var Detail = $('#content_Admin_txtCourse_Detail').val();
            if (Detail == "") {
                $('#content_Admin_error_Course_Detail').html("<b>Nội dung không được trống !!! </b>");
                $('#content_Admin_error_Course_Detail').addClass('error_label');
                $('#content_Admin_txtCourse_Detail').addClass('invalid');
                $('#content_Admin_txtCourse_Detail').focus();
            } else {
                $('#content_Admin_error_Course_Detail').html("<b>Nội dung</b>");
                $('#content_Admin_error_Course_Detail').removeClass('error_label');
                $('#content_Admin_txtCourse_Detail').removeClass('invalid');
                $('#content_Admin_txtCourse_Detail').focus();
            }
        });
        $('#content_Admin_txtDescription_Course').keyup(function () {
            var Description = $('#content_Admin_txtDescription_Course').val();
            if (Description == "") {
                $('#content_Admin_error_Description_Course').html("<b>Mô tả không được trống !!!</b>");
                $('#content_Admin_error_Description_Course').addClass('error_label');
                $('#content_Admin_txtDescription_Course').addClass('invalid');
                $('#content_Admin_txtDescription_Course').focus();
            } else {
                $('#content_Admin_error_Description_Course').html("<b>Mô tả</b>");
                $('#content_Admin_error_Description_Course').removeClass('error_label');
                $('#content_Admin_txtDescription_Course').removeClass('invalid');
                $('#content_Admin_txtDescription_Course').focus();
            }
        });
        $('#content_Admin_txtPrice_Course').keyup(function () {
            var Price = $('#content_Admin_txtPrice_Course').val();
            var regNumber = /^\d+$/;
            if (Price == "") {
                $('#content_Admin_error_Setting_Price').html("<b>Giá không được trống !!!</b>");
                $('#content_Admin_error_Setting_Price').addClass('error_label');
                $('#content_Admin_txtPrice_Course').addClass('invalid');
                $('#content_Admin_txtPrice_Course').focus();
            } else {
                if (!regNumber.test(Price)) {
                    $('#content_Admin_error_Setting_Price').html("<b>Giá phải là số</b>");
                    $('#content_Admin_error_Setting_Price').addClass('error_label');
                    $('#content_Admin_txtPrice_Course').addClass('invalid');
                    $('#content_Admin_txtPrice_Course').focus();
                } else {
                    if (Price < 10000000) {
                        $('#content_Admin_error_Setting_Price').html("<b>Giá khóa học lớn hơn 10.000.000 vnđ</b>");
                        $('#content_Admin_error_Setting_Price').addClass('error_label');
                        $('#content_Admin_txtPrice_Course').addClass('invalid');
                        $('#content_Admin_txtPrice_Course').focus();
                    } else {
                        $('#content_Admin_error_Setting_Price').html("");
                        $('#content_Admin_error_Setting_Price').removeClass('error_label');
                        $('#content_Admin_txtPrice_Course').removeClass('invalid');
                        $('#content_Admin_txtPrice_Course').focus();
                    }
                }
            }
        });
        $('#content_Admin_txtSeoTitle_Course').keyup(function () {
            var seo_title = $('#content_Admin_txtSeoTitle_Course').val();
            if (seo_title == "") {
                $('#content_Admin_error_SeoTitle_Course').html("<b>Thẻ tiêu đề không được trống !!!</b>");
                $('#content_Admin_error_SeoTitle_Course').addClass('error_label');
                $('#content_Admin_txtSeoTitle_Course').addClass('invalid');
                $('#content_Admin_txtSeoTitle_Course').focus();
            }
            else {
                if (seo_title.length > 250) {
                    $('#content_Admin_error_SeoTitle_Course').html("<b>Thẻ tiêu đề không quá 250 ký tự !!!</b>");
                    $('#content_Admin_error_SeoTitle_Course').addClass('error_label');
                    $('#content_Admin_txtSeoTitle_Course').addClass('invalid');
                    $('#content_Admin_txtSeoTitle_Course').focus();
                }
                else {
                    $('#content_Admin_error_SeoTitle_Course').html("<b>Thẻ tiêu đề</b>");
                    $('#content_Admin_error_SeoTitle_Course').removeClass('error_label');
                    $('#content_Admin_txtSeoTitle_Course').removeClass('invalid');
                    $('#content_Admin_txtSeoTitle_Course').focus();
                }
            }
        });
        $('#content_Admin_txtMetaDescription_Course').keyup(function () {
            var MetaDes = $('#content_Admin_txtMetaDescription_Course').val();
            if (MetaDes == "") {
                $('#content_Admin_error_MetaDescription_Course').html("<b>Thẻ mô tả không được trống !!!</b>");
                $('#content_Admin_error_MetaDescription_Course').addClass('error_label');
                $('#content_Admin_txtMetaDescription_Course').addClass('invalid');
                $('#content_Admin_txtMetaDescription_Course').focus();
            } else {
                $('#content_Admin_error_MetaDescription_Course').html("<b>Thẻ mô tả</b>");
                $('#content_Admin_error_MetaDescription_Course').removeClass('error_label');
                $('#content_Admin_txtMetaDescription_Course').removeClass('invalid');
                $('#content_Admin_txtMetaDescription_Course').focus();
            }
        });
    };

    var Valid_Course_Category = function () {
        $('#content_Admin_btn_Add_CourseCategory').click(function () {
            var Name_course_category = $('#content_Admin_txtName_CourseCategory').val();
            var Detail_course_category = $('#content_Admin_txtMetaTile_CourseCategory').val();
            var SeoTitle_Course_category = $('#content_Admin_txtSeoTitle_CourseCategory').val();
            var MetaDescription_course_category = $('#content_Admin_txtMetaDescription_CourseCategory').val();

            if (Name_course_category == "") {
                $('#content_Admin_error_NameCourseCategory').html("Tên danh mục không được trống !!!");
                $('#content_Admin_error_NameCourseCategory').addClass('error_label');
                $('#content_Admin_txtName_CourseCategory').addClass('invalid');
                $('#content_Admin_txtName_CourseCategory').focus();
                return false;
            } else {
                if (Name_course_category.length > 250) {
                    $('#content_Admin_error_NameCourseCategory').html("Tên danh mục không quá 250 ký tự !!!");
                    $('#content_Admin_error_NameCourseCategory').addClass('error_label');
                    $('#content_Admin_txtName_CourseCategory').addClass('invalid');
                    $('#content_Admin_txtName_CourseCategory').focus();
                    return false;
                } else {
                    if (Detail_course_category == "") {
                        $('#content_Admin_error_MetaTile_Category').html("Mô tả không được trống !!!");
                        $('#content_Admin_error_MetaTile_Category').addClass('error_label');
                        $('#content_Admin_txtMetaTile_CourseCategory').addClass('invalid');
                        $('#content_Admin_txtMetaTile_CourseCategory').focus();
                        return false;
                    } else {
                        if (SeoTitle_Course_category == "") {
                            $('#content_Admin_error_SeoTitle_CourseCategory').html("Thẻ tiêu đề không được trống !!!");
                            $('#content_Admin_error_SeoTitle_CourseCategory').addClass('error_label');
                            $('#content_Admin_txtSeoTitle_CourseCategory').addClass('invalid');
                            $('#content_Admin_txtSeoTitle_CourseCategory').focus();
                            return false;
                        } else {
                            if (SeoTitle_Course_category.length > 250) {
                                $('#content_Admin_error_SeoTitle_CourseCategory').html("Thẻ tiêu đề không quá 250 ký tự !!!");
                                $('#content_Admin_error_SeoTitle_CourseCategory').addClass('error_label');
                                $('#content_Admin_txtSeoTitle_CourseCategory').addClass('invalid');
                                $('#content_Admin_txtSeoTitle_CourseCategory').focus();
                                return false;
                            } else {
                                if (MetaDescription_course_category == "") {
                                    $('#content_Admin_error_MetaDescription_CourseCategory').html('Thẻ mô tả không được trống !!!');
                                    $('#content_Admin_error_MetaDescription_CourseCategory').addClass('error_label');
                                    $('#content_Admin_txtMetaDescription_CourseCategory').addClass('invalid');
                                    $('#content_Admin_txtMetaDescription_CourseCategory').focus();
                                    return false;
                                }
                            }
                        }
                    }
                }
            }

            return true;
        });

        $('#content_Admin_txtName_CourseCategory').keyup(function () {
            var name_course_category = $('#content_Admin_txtName_CourseCategory').val();
            if (name_course_category == "") {
                $('#content_Admin_error_NameCourseCategory').html("Tên danh mục không được trống !!!");
                $('#content_Admin_error_NameCourseCategory').addClass('error_label');
                $('#content_Admin_txtName_CourseCategory').addClass('invalid');
                $('#content_Admin_txtName_CourseCategory').focus();
            } else {
                if (name_course_category.length > 250) {
                    $('#content_Admin_error_NameCourseCategory').html("Tên danh mục không quá 250 ký tự !!!");
                    $('#content_Admin_error_NameCourseCategory').addClass('error_label');
                    $('#content_Admin_txtName_CourseCategory').addClass('invalid');
                    $('#content_Admin_txtName_CourseCategory').focus();
                } else {
                    $('#content_Admin_error_NameCourseCategory').html("Tên danh mục");
                    $('#content_Admin_error_NameCourseCategory').removeClass('error_label');
                    $('#content_Admin_txtName_CourseCategory').removeClass('invalid');
                    $('#content_Admin_txtName_CourseCategory').focus();
                }
            }
        });
        $('#content_Admin_txtMetaTile_CourseCategory').keyup(function () {
            var detail_course_category = $('#content_Admin_txtMetaTile_CourseCategory').val();
            if (detail_course_category == "") {
                $('#content_Admin_error_MetaTile_Category').html("Mô tả không được trống !!!");
                $('#content_Admin_error_MetaTile_Category').addClass('error_label');
                $('#content_Admin_txtMetaTile_CourseCategory').addClass('invalid');
                $('#content_Admin_txtMetaTile_CourseCategory').focus();
            } else {
                $('#content_Admin_error_MetaTile_Category').html("Mô tả");
                $('#content_Admin_error_MetaTile_Category').removeClass('error_label');
                $('#content_Admin_txtMetaTile_CourseCategory').removeClass('invalid');
                $('#content_Admin_txtMetaTile_CourseCategory').focus();
            }
        });
        $('#content_Admin_txtSeoTitle_CourseCategory').keyup(function () {
            var seotitle_course_category = $('#content_Admin_txtSeoTitle_CourseCategory').val();
            if (seotitle_course_category == "") {
                $('#content_Admin_error_SeoTitle_CourseCategory').html("Thẻ tiêu đề không được trống !!!");
                $('#content_Admin_error_SeoTitle_CourseCategory').addClass('error_label');
                $('#content_Admin_txtSeoTitle_CourseCategory').addClass('invalid');
                $('#content_Admin_txtSeoTitle_CourseCategory').focus();
            } else {
                $('#content_Admin_error_SeoTitle_CourseCategory').html("Thẻ tiêu đề");
                $('#content_Admin_error_SeoTitle_CourseCategory').removeClass('error_label');
                $('#content_Admin_txtSeoTitle_CourseCategory').removeClass('invalid');
                $('#content_Admin_txtSeoTitle_CourseCategory').focus();
            }
        });
        $('#content_Admin_txtMetaDescription_CourseCategory').keyup(function () {
            var meta_description_course_category = $('#content_Admin_txtMetaDescription_CourseCategory').val();
            if (meta_description_course_category == "") {
                $('#content_Admin_error_MetaDescription_CourseCategory').html('Thẻ mô tả không được trống !!!');
                $('#content_Admin_error_MetaDescription_CourseCategory').addClass('error_label');
                $('#content_Admin_txtMetaDescription_CourseCategory').addClass('invalid');
                $('#content_Admin_txtMetaDescription_CourseCategory').focus();
            } else {
                $('#content_Admin_error_MetaDescription_CourseCategory').html('Thẻ mô tả');
                $('#content_Admin_error_MetaDescription_CourseCategory').removeClass('error_label');
                $('#content_Admin_txtMetaDescription_CourseCategory').removeClass('invalid');
                $('#content_Admin_txtMetaDescription_CourseCategory').focus();
            }
        });
    };


    //Call event
    $(function () {
        Valid_Course();
        Valid_Course_Category();
    });
}());