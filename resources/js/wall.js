$(function()
{
     $(document).on("click", ".w-admin-d", function(){
      var id = $(this).parent().attr("id");
      $(this).parent().parent().hide("slow");
      $.ajax({  
         type: "get",//使用get方法访问后台  
         url: "delete.php",//要访问的后台地址  
         data: "id=" + id,//要发送的数据 
       success: function() {
      $(this).parent().parent().hide();
      }
          });
    });   
});



      function GetData() {
        $.ajax({
          url: 'data.php',
          dataType:"text",
          success: function(data) {
            $('#wall').html(data);
          }
        });
      }

      setInterval("GetData()", 500);      

/*
      function GetMessage() {
      $.ajax({
      url: 'Wechat.php'
      });
    }
      setInterval("GetMessage()",5000);


  



    function AjaxRequest(){
      GetMessage();
      GetData();
} 
*/