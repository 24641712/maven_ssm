// function CheckLogin(){
//     username=$("#username").val();
//     password=$("#password").val();
//     var url="/testweb/index/index.do";
//     var errorurl="testweb/index/500.do";
//     alert("username="+username+"  password"+password);
//
//
//
// }


$(function () {

    $("#submit").ajaxSubmit

    $("#submit").click(function () {
        username=$("#username").val();
        password=$("#password").val();
        var regInfo = {"username":username,"password":password};

        var successurl="/maven_ssm-web/index/index.do";
        alert("username="+username+"  password="+password);

        $.ajax({
              data:JSON.stringify(regInfo),
              type:"POST",
              dateType:"json",
              url:"./loginCheck.do",
              contentType:"application/json",
            success:function (responseData) {
                if (responseData.result == "true"){
                    alert("登录成功");
                    window.location.href = successurl;
                }else {
                    alert("登录失败");
                }
            },
            error:function (XMLHttpRequest,textStatus,errorThrown) {
                alert("result:"+textStatus)
            }
        });

    });
});



