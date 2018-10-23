
$(function () {
  $("#loginOut").click(function () {

      var successurl="/index/index.do";
      $.ajax({
          type:"POST",
          dataType:"text",
          url:"./user/loginout.do",
          success:function (responseData) {
              if (responseData == "ok"){
                  alert("退出成功");
                  window.location.href = successurl;
              }else {
                  alert("退出失败");
              }
          },
          error:function (XMLHttpRequest,textStatus,errorThrown) {
              alert("result:"+textStatus);
          }


      })
  })

})