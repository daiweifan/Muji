<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>慕极工作室官网后台系统  </title>

    <#include "../../shared/common.ftl" >
  </head>

  <body>
    <section id="container" >
	 <header class="header black-bg">
	    <div class="sidebar-toggle-box">
	        <div class="fa fa-bars tooltips" data-placement="right" data-original-title="Toggle Navigation"></div>
	    </div>      
	    <a href="#" class="logo">
	      <b class="hidden-xs">慕极工作室官网后台</b>
	      <b class="title-xs visible-xs">测试</b>
	    </a>
	    <div class="top-menu">
	      <ul class="nav pull-right top-menu">
	        <li>
	          <a class="logout" id="logout">退出</a>
	        </li>
	      </ul>
	    </div>
	  </header>
      <aside>
        <div id="sidebar"  class="nav-collapse ">
          <ul class="sidebar-menu">
            <p class="text-center">
              <a href="#">
                <img src="/img/profile_avatar.png" class="profile img-circle" width="60">
              </a>
            </p>
            <h5 class="profile text-center">慕极管理员</h5>
       
            <li class="sub-menu">
              <a href="/backend/company/info" >
                <i class="fa fa-desktop"></i>
                <span>首页信息</span>
              </a>
            </li>          
            <li class="sub-menu">
              <a class="active" href="/backend/author/list" >
                <i class="fa fa-cogs"></i>
                <span>设计师</span>
              </a>
            </li>
            <li class="sub-menu">
              <a href="/backend/case/list" >
                <i class="fa fa-th"></i>
                <span>案例</span>
              </a>
            </li> 
            <li class="sub-menu">
              <a href="/backend/companyService/list" >
                <i class="fa fa-desktop"></i>
                <span>公司服务项目</span>
              </a>
            </li> 
            <li class="sub-menu">
              <a href="/backend/companyCraft/list" >
                <i class="fa fa-desktop"></i>
                <span>公司工艺</span>
              </a>
            </li>
            <li class="sub-menu">
              <a href="/backend/message/list">
                <i class="fa fa-dashboard"></i>
                <span>留言</span>
              </a>
            </li> 
            <li class="sub-menu">
              <a   href="/backend/splitImage/list" >
                <i class="fa fa-th"></i>
                <span>分隔图片</span>
              </a>
            </li> 
            <li class="sub-menu">
              <a href="/backend/carousel/list" >
                <i class="fa fa-th"></i>
                <span>首页轮播图</span>
              </a>
            </li> 
            <li class="sub-menu">
              <a  href="/backend/category/list" >
                <i class="fa fa-th"></i>
                <span>案例分类</span>
              </a>
            </li>             
          </ul>
        </div>
      </aside>
     <!-- 主要内容-->
        <!--main content start-->
      <section id="main-content">
        <section class="wrapper">
          <h3><i class="fa fa-angle-right"></i> 设计师信息</h3>
          <hr>
          <!-- BASIC FORM ELELEMNTS -->
          <div class="row mt">
            <div class="col-lg-12">
              <div class="form-panel">
                <h4 class="mb"><i class="fa fa-angle-right"></i> 基本信息</h4>
                <form class="form-horizontal style-form" id="author_form">
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">设计师名称</label>
                    <div class="col-sm-10">
                      <input type="hidden" class="form-control" name="id" value="<#if author??>${author.id!}</#if>">
                      <input type="text" class="form-control" name="name" value="<#if author??>${author.name!}</#if>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">头像</label>
                    <div class="col-sm-10">
                    	<div style="margin-bottom:20px;">
	                    	<button id="upload_image" type="button" class="btn  btn-round btn-warning">上传图片</button><span class="ml-20 pl-20">图片比例 200*200</span>
                    	</div>
                      <input type="file" class="hide" id="upload_avatar" class="form-control" data-uptoken="${uptoken}" data-url="${qiniu_url}" >
                      <input type="hidden" id="avatar"  name="avatar" value="<#if author??>${author.avatar!}</#if>">
                    	<img id="image_show"  src="<#if author??>${author.avatar!}</#if>" class="image-responsive"  style="max-width:400px;"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">个人主页封面图片</label>
                    <div class="col-sm-10">
                    	<div style="margin-bottom:20px;">
	                    	<button id="upload_title_image_button" type="button" class="btn  btn-round btn-warning">上传图片</button><span class="ml-20 pl-20"></span>
                    	</div>
                      <input type="file" class="hide" id="upload_title_image" class="form-control" data-uptoken="${uptoken}" data-url="${qiniu_url}" >
                      <input type="hidden" id="title_image"  name="titleImage" value="<#if author??>${author.titleImage!}</#if>">
                    	<img id="title_image_show"  src="<#if author??>${author.titleImage!}</#if>" class="image-responsive"  style="max-width:400px;"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">职位</label>
                    <div class="col-sm-10">
                      <input class="form-control" name="position" type="text" value="<#if author??>${author.position!}</#if>" >
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">简介</label>
                    <div class="col-sm-10">
                      <textarea class="form-control round-form" name="description" ><#if author??>${author.description!}</#if></textarea>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">微信号</label>
                    <div class="col-sm-10">
                      <input class="form-control" name="wechat" type="text" value="<#if author??>${author.wechat!}</#if>" >
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">类型</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="type">
			                  <option value="1">空间设计师</option>
			                  <option value="2">软装设计师</option>
			                </select>
                    </div>
                  </div>
                  <div class="form-group center">
                  	<div class="col-sm-offset-2 col-sm-10">
                  		<button type="button" class="btn btn-round btn-primary" id="save_author">保存</button>
                  		<a href="/backend/author/list" type="button" class="btn btn-round btn-default" >返回</a>
                  	</div>
                  </div>
                </form>
              </div>
            </div><!-- col-lg-12-->       
          </div><!-- /row -->
          
 
      
    </section><!--/wrapper -->
  </section><!-- /MAIN CONTENT -->
     
     
    </section>
    <!-- js placed at the end of the document so the pages load faster -->
    <script src="/lib/jquery/dist/jquery.min.js"></script>
    <script src="/js/bootstrap.min.js"></script>
    <script src="/js/common-scripts.js"></script>
    <script type="text/javascript">  
	 	$(function(){

			var loginUrl = "/backend/login";
			
			var logoutUrl = "/backend/logout";
			
			var saveAuthorUrl = "/backend/author/update";
			
			var authorListUrl = "/backend/author/list";

			
			$("#logout").click(function(){
				 if(confirm("你确定退出登录么？")){
				 	$.ajax({
						url:logoutUrl,
						method:"post",
						data:{},
						success:function(data){
							if(data.success){
								window.location.href=loginUrl;
							}
						}
					})			 
				 }			
			});
			
			
		
			
			$("#upload_image").click(function(){
				$('#upload_avatar').click();
			});
			$('#upload_avatar').change(function() {
    				var file = $('#upload_avatar')[0].files[0];
				    var filename = false;
				    try {
				      filename = file['name'];
				    } catch (e) {
				      filename = false;
				    }
				    var ext = filename.substr(filename.lastIndexOf("."));
				    ext = ext.toUpperCase();
				    var timestamp = new Date().getTime();
    				var name = timestamp + ext;
				    data = new FormData();
				    data.append("file", file);
				    data.append("key", name);
				    data.append("token", $("#upload_avatar").data('uptoken'));
				    $.ajax({
				      data: data,
				      type: "POST",
				      url: "http://upload.qiniu.com",
				      cache: false,
				      contentType: false,
				      processData: false,
				      success: function(data) {
       					 var url = $("#upload_avatar").data('url')+"/" + data['key'];
       					 $("#avatar").val(url);
       					 toastr.success("上传成功！");
       					 $("#image_show").attr("src",url);
       					}
       				});
       			});
       			
       			
       			
       		$("#upload_title_image_button").click(function(){
				$('#upload_title_image').click();
			});
			$('#upload_title_image').change(function() {
    				var file = $('#upload_title_image')[0].files[0];
				    var filename = false;
				    try {
				      filename = file['name'];
				    } catch (e) {
				      filename = false;
				    }
				    var ext = filename.substr(filename.lastIndexOf("."));
				    ext = ext.toUpperCase();
				    var timestamp = new Date().getTime();
    				var name = timestamp + ext;
				    data = new FormData();
				    data.append("file", file);
				    data.append("key", name);
				    data.append("token", $("#upload_title_image").data('uptoken'));
				    $.ajax({
				      data: data,
				      type: "POST",
				      url: "http://upload.qiniu.com",
				      cache: false,
				      contentType: false,
				      processData: false,
				      success: function(data) {
       					 var url = $("#upload_title_image").data('url')+"/" + data['key'];
       					 $("#title_image").val(url);
       					 toastr.success("上传成功！");
       					 $("#title_image_show").attr("src",url);
       					}
       				});
       			});
			
			$("#save_author").click(function(){
				if($("#avatar").val()){
					var formData = $("#author_form").serialize();
					$.ajax({
							url:saveAuthorUrl,
							method:"post",
							data:formData,
							success:function(data){
								if(data.success){
									toastr.success(data.returnMsg);
									window.location.href=authorListUrl;
								}
							}
						})
				}else{
       				toastr.warning("请耐心等待图片上传或者上传图片！");
       			}
			});
		})
	</script>  
  </body>
</html>