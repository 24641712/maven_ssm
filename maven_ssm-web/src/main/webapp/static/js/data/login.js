$(function () {
    $("#submit").click(function () {
        username=$("#username").val();
        password=$("#password").val();
        var regInfo = {"username":username,"password":password};
        var successurl="/index/index.do";
        $.ajax({
            data:regInfo,
            type:"POST",
            dataType:"text",
            url:"./user/loginCheck.do",
            success:function (responseData) {
                if (responseData == "true"){
                    window.location.href = successurl;
                }else {
                    alert("用户名或密码错误");
                }
            },
            error:function (XMLHttpRequest,textStatus,errorThrown) {
                alert("result:"+textStatus);
            }
        });
    });
});




