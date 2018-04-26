<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="category" content="Dashboard">
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
              <a  href="/backend/category/list" >
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
              <a class="active" href="/backend/category/list" >
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
          <h3><i class="fa fa-angle-right"></i> 案例分类信息</h3>
          <hr>
          <!-- BASIC FORM ELELEMNTS -->
          <div class="row mt">
            <div class="col-lg-12">
              <div class="form-panel">
                <h4 class="mb"><i class="fa fa-angle-right"></i> 基本信息</h4>
                <form class="form-horizontal style-form" id="category_form">
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">种类名称</label>
                    <div class="col-sm-10">
                      <input type="hidden" class="form-control" name="id" value="<#if category??>${category.id!}</#if>">
                      <input type="text" class="form-control" name="name" value="<#if category??>${category.name!}</#if>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">排序号</label>
                    <div class="col-sm-10">
                      <input class="form-control" name="orderNum" type="number" value="<#if category??>${category.orderNum!}</#if>" >
                    </div>
                  </div>

                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">父节点</label>
                    <div class="col-sm-10">
                        <select class="form-control" name="parent">
                        	 <option value=""></option>
                        	 <#if categorys?? && (categorys?size > 0) >
	                        	<#list categorys as option>
				                  <option value="${option.id!}" <#if category?? && option.id == category.parent.id > selected="selected" </#if>>${option.name}</option>
				                </#list>
				             </#if>
			                 
			            </select>
                    </div>
                  </div>
                  <div class="form-group center">
                  	<div class="col-sm-offset-2 col-sm-10">
                  		<button type="button" class="btn btn-round btn-primary" id="save_category">保存</button>
                  		<a href="/backend/category/list" type="button" class="btn btn-round btn-default" >返回</a>
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
			
			var saveCategoryUrl = "/backend/category/update";
			
			var categoryListUrl = "/backend/category/list";

			
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
			
			
			$("#save_category").click(function(){
				var formData = $("#category_form").serialize();
				$.ajax({
						url:saveCategoryUrl,
						method:"post",
						data:formData,
						success:function(data){
							if(data.success){
								toastr.success(data.returnMsg);
								window.location.href=categoryListUrl;
							}
						}
					})
			});
		})
	</script>  
  </body>
</html>