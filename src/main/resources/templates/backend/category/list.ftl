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
              <a  href="/backend/company/info" >
                <i class="fa fa-desktop"></i>
                <span>首页信息</span>
              </a>
            </li>          
            <li class="sub-menu">
              <a href="/backend/author/list" >
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
              <a   href="/backend/companyService/list" >
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
              <a href="/backend/splitImage/list" >
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
          <h3><i class="fa fa-angle-right"></i> 设计师列表</h3>
          <hr>
          <!-- BASIC FORM ELELEMNTS -->
           <div class="row mt">
            <div class="col-md-12">
              <div class="content-panel">
                <table class="table table-striped table-advance table-hover">
                  <h4><i class="fa fa-angle-right"></i> <a href="/backend/category/form" class="btn btn-round btn-primary">新增案例分类</a></h4>
                  <hr>
                  <thead>
                    <tr>
                      <th><i class="fa fa-user"></i> 父节点</th>
                       <th><i class="fa fa-avatar"></i>排序</th>
                      <th class="hidden-phone"><i class="fa fa-question-circle"></i> 名称</th>
                      <th>操作</th>
                    </tr>
                  </thead>
                  <tbody>
                  <#if categorys?? && (categorys?size > 0)>
	                  <#list categorys as category>
	                    <tr>
	                      <td >
	                      <#if category.parent??>
	                      	${category.parent.name!}
	                      </#if>
	                      </td>
	                      <td class="hidden-phone">${category.orderNum!}</td>
	                      <td>${category.name!} </td>
	                      <td>
	                        <a href="/backend/category/form?id=${category.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
	                        <a data-href="/backend/category/delete" class="btn btn-danger btn-xs a_post" data-id="${category.id}"><i class="fa fa-trash-o "></i></a>
	                      </td>
	                    </tr>
	                   </#list>
                    </#if>
                  </tbody>
                </table>
              </div><!-- /content-panel -->
            </div><!-- /col-md-12 -->
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
			
			var listUrl  = "/backend/category/list";
			
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
			
			
			$(".a_post").on("click",function(event){
			    event.preventDefault();//使a自带的方法失效，即无法调整到href中的URL
			    if(confirm("你确定删除么？")){
				    $.ajax({
				           type: "POST",
				           url: $(this).data("href"),
				           data: {id:$(this).data("id")},//参数列表
				           dataType:"json",
				           success: function(result){
				              window.location.href=listUrl;
				           }
				    });
				}
			});
		})
	</script>  
  </body>
</html>