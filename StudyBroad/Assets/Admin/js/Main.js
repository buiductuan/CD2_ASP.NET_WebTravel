$(function () {

    // Get name SEO
    $('#btn_GetNameBySEO_course_category').click(function () {
        var NameCoureCategory = $('#content_Admin_txtName_CourseCategory').val();
        var SeotitleCourseCategory = $('#content_Admin_txtSeoTitle_CourseCategory').val();
        if (NameCoureCategory != "") {
                $('#content_Admin_txtSeoTitle_CourseCategory').val(NameCoureCategory);
        } else {
            $('#content_Admin_error_NameCourseCategory').html("Tên danh mục không được trống !!!");
            $('#content_Admin_error_NameCourseCategory').addClass('error_label');
            $('#content_Admin_txtName_CourseCategory').addClass('invalid');
            $('#content_Admin_txtName_CourseCategory').focus();
        }
    });
});