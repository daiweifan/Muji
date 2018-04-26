<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="">
	<meta name="author" content="Dashboard">
	<meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">

	<title>慕极后台系统</title>
	<#include "../shared/common.ftl" >
  
  </head>

  <body style="background-image:url(/img/back.jpg)">

  	<div id="login-page" style="background-image:url(/img/back.jpg)">
  		<div class="container">

  			<form class="form-login" action="#">
  				<h2 class="form-login-heading">慕极后台登录界面</h2>
  				<div class="login-wrap">
  					<input type="text" id="username" class="form-control" placeholder="用户名" autofocus>
  					<br>
  					<input type="password" id="password" class="form-control" placeholder="密码">
  					<label class="checkbox">
  						<span class="pull-right">
  							

  						</span>
  					</label>
  					<button class="btn btn-theme btn-block" id="login" type="button"><i class="fa fa-lock"></i> 登录</button>
  					<hr>

  				</div>

  				<!-- Modal -->
  				<div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
  					<div class="modal-dialog">
  						<div class="modal-content">
  							<div class="modal-header">
  								<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
  								<h4 class="modal-title">多Te olvidaste el password?</h4>
  							</div>
  							<div class="modal-body">
  								<p>Ingresa tu email para recuperar tu contrase単a.</p>
  								<input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">

  							</div>
  							<div class="modal-footer">
  								<button data-dismiss="modal" class="btn btn-default" type="button">Cancelar</button>
  								<button class="btn btn-theme" type="button">Enviar</button>
  							</div>
  						</div>
  					</div>
  				</div>
  				<!-- modal -->

  			</form>	  	

  		</div>
  	</div>


  	<script src="/lib/jquery/dist/jquery.min.js"></script>
  	
  	<script src="/js/bootstrap.min.js"></script>
  	<script type="text/javascript">  
	 	$(function(){
			var loginUrl = "/backend/loginPost";
			
			var dashboard ="/backend/company/info";
			
			$("#login").click(function(){
				$.ajax({
					url:loginUrl,
					method:"post",
					data:{'username':$("#username").val(),'password':$("#password").val()},
					success:function(data){
						if(data.success){
							window.location.href=dashboard;
						}else{
							$("#error_message").text(data.returnMsg);
							toastr.error(data.returnMsg);
						}
					}
				})
			})
		})
	</script>  
  </body>
</html>
