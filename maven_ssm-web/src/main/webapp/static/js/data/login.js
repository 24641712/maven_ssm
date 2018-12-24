
//实现用户登录验证功能
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
                alert("登录异常");
            }
        });
    });
});


//实现用户注册功能
$(function () {
    $("#register").click(function () {
          username = $("#username").val();
          password1 = $("#password1").val();
          password2 = $("#password2").val();
          phone = $("#phone").val();
          address = $("#address").val();
          email = $("#email").val();
          checkbox = $("#checkbox").prop('checked');
          alert("")
          if(checkbox == false){
              alert("请先同意该协议");
          }else {
              var regInfo = {username:username,password:password1,phone:phone,
              address:address,email:email};
              $.ajax({
                  type: 'post',
                  url: "./hello.do",
                  dataType: "json",
                  data: regInfo,
                  success:function(data){
                      if(data == "OK"){
                          alert("注册成功");
                      }else{
                          alert("注册失败");
                      }
                  },
                  error:function (jqXHR) {
                      alert("发生错误："+jqXHR.status);
                  }
              });

              // function return_success(json) {
              //     alert("注册成功");
              // }
              // function re
              // turn_error(XMLHttpRequest,textStatus,errorThrown) {
              //     alert(textStatus)
              // }
          }
    })
})



