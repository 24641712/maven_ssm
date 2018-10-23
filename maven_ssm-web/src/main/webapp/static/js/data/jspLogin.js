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
            url:"./loginCheck.do",
            success:function (responseData) {
                if (responseData == "true"){
                    alert("登录成功");
                    window.location.href = successurl;
                }else {
                    alert("登录失败");
                }
            },
            error:function (XMLHttpRequest,textStatus,errorThrown) {
                alert("result:"+textStatus);
            }
        });
    });
});




