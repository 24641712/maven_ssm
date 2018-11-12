//实现登录验证功能
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

//实现注册功能
$(function () {
    $("#register").click(function () {
          username = $("#username").val();
          password1 = $("#password1").val();
          password2 = $("#password2").val();
          phone = $("phone").val();
          address = $("address").val();
          email = $("#email").val();
          checkbox = $("#checkbox").prop('checked');
          if(checkbox == false){
              alert("请先同意该协议");
          }else {
              alert(email + " " + password1 + " " + password2 );
              var regInfo = {"username":email,"password":password1};
              $.ajax({
                  url: "./userRegister.do",
                  type: 'POST',
                  dataType: 'text',
                  data: regInfo,
                  success:return_json,
                  error:return_error
              });
              function return_json(json) {
                  alert("注册成功");
              }
              function return_error(XMLHttpRequest,textStatus,errorThrown) {
                  alert(textStatus)
              }

          }
    })
})



