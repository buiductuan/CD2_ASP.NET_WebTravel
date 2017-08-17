/// <reference path="../../../../Service/Customer_WebService.asmx" />
/// <reference path="../Service/Customer_WebService.asmx" />
/// <reference path="../Service/Customer_WebService.asmx" />
;(function () {
    'use strict';
    var ajaxCheck_UserName = function () {
        $('#Content_Main_btn_SignUp').click(function () {
            var user = $('#Content_Main_txtUsername_SignUp').val();
            $.ajax({
                url: '../Service/Customer_WebService.asmx/CheckCustomer',
                method: 'post',
                data: { UserName: user },
                dataType: 'json',
                success: function (data) {
                    var label_error = $('#Content_Main_error_UserName_SignUp');
                    if (data.UserName != "") {
                        if (data.UserNameInUse == true) {
                            label_error.html('Tên đăng nhập ' + '" ' + user + ' "' + ' đã tồn tại');
                            label_error.addClass('error_label');
                            $('#Content_Main_lbNotitfication').html('Tên tài khoản đã tồn tại');
                            $('#Content_Main_lbNotitfication').addClass('error_label label-danger')
                            $('#Content_Main_txtUsername_SignUp').focus();
                            return false;
                        } else {
                            label_error.html("Tên đăng nhập " + '" ' + user + ' "' + ' có thể sử dụng');
                            label_error.removeClass('error_label');
                            label_error.css('color', 'green');
                        }
                    }
                },
                error: function (err) {
                    $('#Content_Main_lbNotitfication').html(err);
                    $('#Content_Main_lbNotitfication').addClass('label-danger');
                    $('#Content_Main_lbNotitfication').removeClass('label-success');
                }
            });
        });
        $('#Content_Main_txtUsername_SignUp').keyup(function () {
            var user = $('#Content_Main_txtUsername_SignUp').val();
            $.ajax({
                url: '../Service/Customer_WebService.asmx/CheckCustomer',
                method: 'post',
                data: { UserName: user },
                dataType: 'json',
                success: function (data) {
                    var label_error = $('#Content_Main_error_UserName_SignUp');
                    if (data.UserName != "") {
                        if (data.UserNameInUse == true) {
                            label_error.html('Tên đăng nhập ' + '" ' + user + ' "' + ' đã tồn tại');
                            label_error.addClass('error_label');
                            $('#Content_Main_txtUsername_SignUp').focus();
                            return false;
                        } else {
                            label_error.html("Tên đăng nhập "+'" '+user + ' "'+' có thể sử dụng');
                            label_error.removeClass('error_label');
                            label_error.css('color', 'green');
                        }
                    }
                },
                error: function (err) {
                    $('#Content_Main_lbNotitfication').html(err);
                    $('#Content_Main_lbNotitfication').addClass('label-danger');
                    $('#Content_Main_lbNotitfication').removeClass('label-success');
                }
            });
        });
    };

    var ajaxCheckAccount = function () {
        $('#Content_Main_btn_SignIn').click(function () {
            var username = $('#Content_Main_txtUserName_SignIn').val();
            var pass = $('#Content_Main_txtPassword_SignIn').val();
            alert(username);
            $.ajax({
                url: "../Service/Customer_WebService.asmx/CheckAccountCustomer",
                method: 'post',
                data: { UserName: username, Password: pass },
                dataType: 'json',
                success: function (data) {
                    if (data.AccountInUse == false) {
                        $('#Content_Main_lbError_SignIn').html("Tên tài khoản hoặc mật khẩu không đúng");
                        $('#Content_Main_txtUserName_SignIn').focus();
                        return false;
                    }
                },
                error: function (err) {
                    alert(err);
                }
            });
        });
    }
    $(function () {
        ajaxCheck_UserName();
    });
}());