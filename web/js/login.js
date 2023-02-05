$(function () {
    $(".login-tab li").click(function () {
        var index = $(this).index();
        $(this).addClass("current").siblings().removeClass("current");
        $(".mc").eq(index).show().siblings('.mc').hide();
    });
    $("#uname").blur(function () {
        if ($(this).val().length != 0) {
            $(".login_uname label").addClass("yi");
        }
    });
    $("#password").blur(function () {
        if ($(this).val().length != 0) {
            $(".login_password label").addClass("yi");
        }
    });
});