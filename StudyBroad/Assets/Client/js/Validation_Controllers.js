
$(function () {

    var LoadWindow = function () {
        $(window).load(function () {
            $('#Content_Main_txtUserName_SignIn').focus();
            $('.Text_SearchItem').hide();
        });
    };


    var Valid_SignUp = function () {
        // event button SignIn click
        $('#Content_Main_btn_SignUp').click(function () {

            var UserName = $('#Content_Main_txtUsername_SignUp').val();
            var Password = $('#Content_Main_txtPassword_SignUp').val();
            var RePassword = $('#Content_Main_txtRepeatPassword_SignUp').val();

            if (UserName == "") {
                $('#Content_Main_txtUsername_SignUp').addClass('invalid');
                $('#Content_Main_error_UserName_SignUp').addClass('error_label');
                $('#Content_Main_error_UserName_SignUp').html('Tên đăng nhập không được trống');
                $('#Content_Main_txtUsername_SignUp').focus();
                return false;
            } else {
                if (Password == "") {
                    $('#Content_Main_txtPassword_SignUp').addClass('invalid');
                    $('#Content_Main_error_Password_SignUp').addClass('error_label');
                    $('#Content_Main_error_Password_SignUp').html('Mật khẩu không được trống');
                    $('#Content_Main_txtPassword_SignUp').focus();
                    return false;
                } else {
                    if (Password.length > 20) {
                        $('#Content_Main_txtPassword_SignUp').addClass('invalid');
                        $('#Content_Main_error_Password_SignUp').addClass('error_label');
                        $('#Content_Main_error_Password_SignUp').html('Mật khẩu không quá 20 ký tự');
                        $('#Content_Main_txtPassword_SignUp').focus();
                        return false;
                    } else {
                        if (RePassword == "") {
                            $('#Content_Main_txtRepeatPassword_SignUp').addClass('invalid');
                            $('#Content_Main_error_RepeatPassword_SignUp').addClass('error_label');
                            $('#Content_Main_error_RepeatPassword_SignUp').html('Nhập lại mật khẩu');
                            $('#Content_Main_txtRepeatPassword_SignUp').focus();
                            return false;
                        }
                    }
                }
            }

            return true;
        });
        //Event keyup
        $('#Content_Main_txtUsername_SignUp').keyup(function () {
            var UserName = $('#Content_Main_txtUsername_SignUp').val();
            if (UserName == "") {
                $('#Content_Main_txtUsername_SignUp').addClass('invalid');
                $('#Content_Main_error_UserName_SignUp').addClass('error_label');
                $('#Content_Main_error_UserName_SignUp').html('Tên đăng nhập không được trống');
                $('#Content_Main_txtUsername_SignUp').focus();
            } else {
                $('#Content_Main_txtUsername_SignUp').removeClass('invalid');
                $('#Content_Main_error_UserName_SignUp').removeClass('error_label');
                $('#Content_Main_error_UserName_SignUp').html('Tên đăng nhập');
                $('#Content_Main_txtUsername_SignUp').focus();
            }
        });
        $('#Content_Main_txtPassword_SignUp').keyup(function () {
            var Password = $('#Content_Main_txtPassword_SignUp').val();
            if (Password == "") {
                $('#Content_Main_txtPassword_SignUp').addClass('invalid');
                $('#Content_Main_error_Password_SignUp').addClass('error_label');
                $('#Content_Main_error_Password_SignUp').html('Mật khẩu không được trống');
                $('#Content_Main_txtPassword_SignUp').focus();
            } else {
                if (Password.length > 20) {
                    $('#Content_Main_txtPassword_SignUp').addClass('invalid');
                    $('#Content_Main_error_Password_SignUp').addClass('error_label');
                    $('#Content_Main_error_Password_SignUp').html('Mật khẩu không quá 20 ký tự');
                    $('#Content_Main_txtPassword_SignUp').focus();
                }
                else {
                    $('#Content_Main_txtPassword_SignUp').removeClass('invalid');
                    $('#Content_Main_error_Password_SignUp').removeClass('error_label');
                    $('#Content_Main_error_Password_SignUp').html('Mật khẩu');
                    $('#Content_Main_txtPassword_SignUp').focus();
                }
            }
        });
        $('#Content_Main_txtRepeatPassword_SignUp').keyup(function () {
            var Password = $('#Content_Main_txtPassword_SignUp').val();
            var RePassword = $('#Content_Main_txtRepeatPassword_SignUp').val();
            if (RePassword == "") {
                $('#Content_Main_txtRepeatPassword_SignUp').addClass('invalid');
                $('#Content_Main_error_RepeatPassword_SignUp').addClass('error_label');
                $('#Content_Main_error_RepeatPassword_SignUp').html('Nhập lại mật khẩu');
                $('#Content_Main_txtRepeatPassword_SignUp').focus();
                return false;
            } else {
                if (Password != RePassword) {
                    $('#Content_Main_txtRepeatPassword_SignUp').addClass('invalid');
                    $('#Content_Main_error_RepeatPassword_SignUp').addClass('error_label');
                    $('#Content_Main_error_RepeatPassword_SignUp').html('Mật khẩu nhập lại không chính xác');
                    $('#Content_Main_txtRepeatPassword_SignUp').focus();
                    return false;
                }
                else {
                    $('#Content_Main_txtRepeatPassword_SignUp').removeClass('invalid');
                    $('#Content_Main_error_RepeatPassword_SignUp').removeClass('error_label');
                    $('#Content_Main_error_RepeatPassword_SignUp').html('Nhập lại mật khẩu');
                    $('#Content_Main_txtRepeatPassword_SignUp').focus();
                }
            }
        });
    };

    var Valid_SignIn = function () {

        $('#Content_Main_btn_SignIn').click(function () {
            var UserName = $('#Content_Main_txtUserName_SignIn').val();
            var Password = $('#Content_Main_txtPassword_SignIn').val();

            if (UserName == "") {
                $('#Content_Main_txtUserName_SignIn').addClass('invalid');
                $('#Content_Main_txtUserName_SignIn').focus();
                $('#Content_Main_error_UserName_SignIn').html("Tên đăng nhập không được trống");
                $('#Content_Main_error_UserName_SignIn').addClass('error_label');
                return false;
            } else {
                if (Password == "") {
                    $('#Content_Main_txtPassword_SignIn').addClass('invalid');
                    $('#Content_Main_txtPassword_SignIn').focus();
                    $('#Content_Main_error_Password_SignIn').html("Mật khẩu không được trống");
                    $('#Content_Main_error_Password_SignIn').addClass('error_label');
                    return false;
                }
            }

            return true;
        });

        $('#Content_Main_txtUserName_SignIn').keyup(function () {
            var UserName = $('#Content_Main_txtUserName_SignIn').val();
            if (UserName == "") {
                $('#Content_Main_txtUserName_SignIn').addClass('invalid');
                $('#Content_Main_txtUserName_SignIn').focus();
                $('#Content_Main_error_UserName_SignIn').html("Tên đăng nhập không được trống");
                $('#Content_Main_error_UserName_SignIn').addClass('error_label');
                return false;
            } else {
                $('#Content_Main_txtUserName_SignIn').removeClass('invalid');
                $('#Content_Main_txtUserName_SignIn').focus();
                $('#Content_Main_error_UserName_SignIn').html("Tên đăng nhập");
                $('#Content_Main_error_UserName_SignIn').removeClass('error_label');
            }

        });
        $('#Content_Main_txtPassword_SignIn').keyup(function () {
            var Password = $('#Content_Main_txtPassword_SignIn').val();
            if (Password == "") {
                $('#Content_Main_txtPassword_SignIn').addClass('invalid');
                $('#Content_Main_txtPassword_SignIn').focus();
                $('#Content_Main_error_Password_SignIn').html("Mật khẩu không được trống");
                $('#Content_Main_error_Password_SignIn').addClass('error_label');
                return false;
            } else {
                $('#Content_Main_txtPassword_SignIn').removeClass('invalid');
                $('#Content_Main_txtPassword_SignIn').focus();
                $('#Content_Main_error_Password_SignIn').html("Mật khẩu");
                $('#Content_Main_error_Password_SignIn').removeClass('error_label');
            }
        });
    };

    var Valid_Search = function () {
        $('.SearchItem').click(function () {
            $('#txtSearchItem').focus();
            $('.Text_SearchItem').show();
        });
        $('.SearchItem').dblclick(function () {
            $('.Text_SearchItem').hide();
        });
        $('#page').click(function () {
            $('.Text_SearchItem').hide();
        });
        $('#btnSearch').click(function () {
            var text_Search = $('#txtSearchItem').val();
            if (text_Search == "") {
                $('#error_Search').html('Nhập từ khóa tìm kiếm !!!');
                $('#error_Search').addClass('error_label');
                $('#txtSearchItem').addClass('invalid');
                $('#txtSearchItem').focus();
                return false;
            }
            return true;
        });
        $('#txtSearchItem').keyup(function () {
            var text_Search = $('#txtSearchItem').val();
            if (text_Search == "") {
                $('#error_Search').html('Nhập từ khóa tìm kiếm !!!');
                $('#error_Search').addClass('error_label');
                $('#txtSearchItem').addClass('invalid');
                $('#txtSearchItem').focus();
                return false;
            } else {
                $('#error_Search').html('');
                $('#error_Search').removeClass('error_label');
                $('#txtSearchItem').removeClass('invalid')
                $('#txtSearchItem').focus();
            }
        });
    };
    // Call event
    $(function () {
        Valid_SignUp();
        Valid_SignIn();
        Valid_Search();
        LoadWindow();
    });
}());