/// <reference path="../Service/Search_WebService.asmx" />

$(function () {
    $("#txtSearchItem").autocomplete({
        source: function (request, response) {
            $.ajax({
                url: "../Service/Search_WebService.asmx/SearchAjax",
                data: "{ 'article': '" + request.term + "' }",
                dataType: "json",
                type: "POST",
                contentType: "application/json; charset=utf-8",
                dataFilter: function (data) { return data; },
                success: function (data) {
                    response($.map(data.d, function (item) {
                        return {
                            value: item.NameArticle
                        }
                    }))
                },
                error: function (XMLHttpRequest, textStatus, errorThrown) {
                    alert(textStatus);
                }
            });
        },
        minLength: 2
    });
});