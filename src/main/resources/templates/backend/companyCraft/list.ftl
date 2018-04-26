<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Dashboard">
    <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
    <title>慕极工作室官网后台系统  </title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <link rel="stylesheet" href="/css/font-awesome.css">
    <link rel="stylesheet" href="/css/lineicons.css">
    <link rel="stylesheet" href="/css/adventure-time-theme-responsive.css">
    <link rel="stylesheet" href="/css/adventure-time-theme.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
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
              <a  href="/backend/author/list" >
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
              <a class="active"  href="/backend/companyCraft/list" >
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
          <h3><i class="fa fa-angle-right"></i> 公司工艺列表</h3>
          <hr>
          <!-- BASIC FORM ELELEMNTS -->
           <div class="row mt">
            <div class="col-md-12">
              <div class="content-panel">
                <table class="table table-striped table-advance table-hover">
                   <h4><i class="fa fa-angle-right"></i> <a href="/backend/companyCraft/form" class="btn btn-round btn-primary">新增工艺</a></h4>
                  <hr>
                  <thead>
                    <tr>
                      <th width="10%"><i class="fa fa-user"></i> 工艺名称</th>
                      <th width="15%"><i class="fa fa-image"></i>工艺图片</th>
                      <th width="55%" class="hidden-phone"><i class="fa fa-question-circle"></i> 简介</th>
                      <th width="10%"><i class="fa fa-bookmark"></i>时间</th>
                      <th width="10%">操作</th>
                    </tr>
                  </thead>
                  <tbody>
                  <#if  companyCrafts?? && (companyCrafts?size > 0)>
	                  <#list companyCrafts as cc>
	                    <tr>
	                      <td >${cc.name!}</td>
	                      <td><img src="${cc.image!}" class="profile img-responsive" width="60" height="60"></td>
	                      <td class="hidden-phone">${cc.description!}</td>
	                      <td>${cc.createTime!} </td>
	                      <td>
							 <a href="/backend/companyCraft/form?id=${cc.id}" class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></a>
	                         <a data-href="/backend/companyCraft/delete" class="btn btn-danger btn-xs a_post" data-id="${cc.id}"><i class="fa fa-trash-o "></i></a>
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
			
			var listUrl  = "/backend/companyCraft/list";
			
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