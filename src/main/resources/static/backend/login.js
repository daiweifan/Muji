alert(1);
$(function(){

	alert(1);
	var loginUrl = "/backend/loginPost";
	
	var dashboard ="/backend/company/info";
	
	$("#login").click(function(){
		alert("登录！");
		$.ajax({
			url:loginUrl,
			method:"post",
			data:{'username':$("#username").val(),'password':$("#password").val()},
			success:function(data){
				if(data.success){
					alert("dashboard:"+dashboard);
					window.location.href=dashboard;
				}else{
					$("#error_message").text(data.returnMsg);
				}
			}
		})
	})
})