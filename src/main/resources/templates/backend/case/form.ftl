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
              <a  href="/backend/author/list" >
                <i class="fa fa-cogs"></i>
                <span>设计师</span>
              </a>
            </li>
            <li class="sub-menu">
              <a class="active" href="/backend/case/list">
                <i class="fa fa-th"></i>
                <span>案例</span>
              </a>
            </li> 
            <li class="sub-menu">
              <a  href="/backend/companyService/list" >
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
          <h3><i class="fa fa-angle-right"></i> 案例信息</h3>
          <hr>
          <!-- BASIC FORM ELELEMNTS -->
          <div class="row mt">
            <div class="col-lg-12">
              <div class="form-panel">
                <h4 class="mb"><i class="fa fa-angle-right"></i> 基本信息</h4>
                <form class="form-horizontal style-form" id="case_form">
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">案例名称</label>
                    <div class="col-sm-10">
                      <input type="hidden" class="form-control" name="id" value="<#if case??>${case.id!}</#if>">
                      <input type="text" class="form-control" name="name" value="<#if case??>${case.name!}</#if>">
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">简介</label>
                    <div class="col-sm-10">
                      <textarea class="form-control round-form" name="description" ><#if case??>${case.description!}</#if></textarea>
                    </div>
                  </div>
                  <div class="form-group">
	                <label for="dtp_input2" class="col-md-2 control-label">案例时间</label>
	                <div class="input-group date form_date col-md-5" style="    padding-left: 15px;" data-date="" data-date-format="yyyy-mm-dd"  data-link-format="yyyy-mm-dd">
	                    <input class="form-control" name="createTime" size="16" type="text" value="<#if case??>${case.createTime!}</#if>" readonly>
	                    <span class="input-group-addon"><span class="glyphicon glyphicon-remove"></span></span>
						<span class="input-group-addon"><span class="glyphicon glyphicon-calendar"></span></span>
	                </div>
	            </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">封面图片</label>
                    <div class="col-sm-10">
                    	<div style="margin-bottom:20px;">
	                    	<button id="upload_image" type="button" class="btn  btn-round btn-warning">上传图片</button><span class="ml-20 pl-20">图片比例 360*220</span>
                    	</div>
                      <input type="file" class="hide" id="upload_coverImage" class="form-control" data-uptoken="${uptoken}" data-url="${qiniu_url}" >
                      <input type="hidden" id="coverImage"  name="coverImage" value="<#if case??>${case.coverImage!}</#if>">
                    	<img id="image_show" src="<#if case??>${case.coverImage!}</#if>" class="image-responsive"/>
                    </div>
                  </div>
                  <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">详情页封面图片</label>
                    <div class="col-sm-10">
                    	<div style="margin-bottom:20px;">
	                    	<button id="upload_detailImage_button" type="button" class="btn  btn-round btn-warning">上传图片</button><span class="ml-20 pl-20">图片比例 360*220</span>
                    	</div>
                      <input type="file" class="hide" id="upload_detailImage" class="form-control" data-uptoken="${uptoken}" data-url="${qiniu_url}" >
                      <input type="hidden" id="detailImage"  name="detailImage" value="<#if case??>${case.detailImage!}</#if>">
                    	<img id="detailImage_show" src="<#if case??>${case.detailImage!}</#if>" class="image-responsive"/>
                    </div>
                  </div>
                <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">分类</label>
                    <div class="col-sm-4">
                        <select class="form-control" name="parent" id="parent" onchange="setSecond()">
                        	 <option value="">请选择大类</option>
			                  <#list categorys as item>
				                  <option value="${item.id}" <#if case?? && case.category?? && item.id==case.category.parent.id>selected = "selected"</#if> >${item.name}</option>
				                </#list>
			            </select>
                    </div>
                    <div class="col-sm-4">
                        <select class="form-control" name="category" id="category">
                        	 <option value="">请选择二级类</option>
                        	 <#if seconds?? && (seconds?size>0)>
			                  	<#list seconds as item>
				                  <option value="${item.id}" <#if case?? && case.category?? && item.id==case.category.id>selected = "selected"</#if> >${item.name}</option>
				                </#list>
				              </#if>
			            </select>
                    </div>
                  </div>
				<div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">空间设计师 </label>
                    <div class="col-sm-10">
                        <select class="form-control" name="author" id="author">
                        	  <option value="">请选择空间设计师</option>
                        	<#list authors as author>
			                  <option value="${author.id}" <#if case?? && case.author?? && author.id==case.author.id>selected = "selected"</#if>>${author.name}</option>
			                </#list>
			            </select>
                    </div>
                  </div>
                 <div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">软装设计师 </label>
                    <div class="col-sm-10">
                        <select class="form-control" name="softAuthor" id="softAuthor">
                        	 <option value="">请选择软装设计师</option>
			                  <#list softAuthors as author>
				                  <option value="${author.id}" <#if case?? && case.softAuthor?? && author.id==case.softAuthor.id>selected = "selected"</#if> >${author.name}</option>
				                </#list>
			            </select>
                    </div>
                  </div>

				<div class="form-group">
                    <label class="col-sm-2 col-sm-2 control-label">图片详情</label>
                    <div class="col-sm-10" id="imagesContent">
                    	<div style="margin-bottom:20px;">
	                    	<button id="upload_detail_button" type="button" class="btn  btn-round btn-warning">上传图片</button><span class="ml-20 pl-20">图片比例 360*220</span>
                    	</div>
                      <input type="file" class="hide" id="upload_detail" class="form-control" data-uptoken="${uptoken}" data-url="${qiniu_url}" >
                      <input type="hidden" id="images"  name="images" value="<#if case??>${case.images!}</#if>">
                      <#if case?? && case.images?? && (case.images?split(";")?size>0)>
                      	
                      	<#list case.images?split(";") as image>
                      		<#if image!="">
		                      	<div class="col-sm-12 mb-20">
		                      		<img  class="image-responsive detail-image" src="${image!}" style="width:360px;height:220px;"/>
		                      		<br>
		                      		<button type="button" class="btn btn-danger mt-10 delete-image">删除 </button>
		                      	</div>
		                    </#if>
	                    </#list>
                      </#if>
                      
                    </div>
                  </div>
                  <div class="form-group center">
                  	<div class="col-sm-offset-2 col-sm-10">
                  		<button type="button" class="btn btn-round btn-primary" id="save_case">保存</button>
                  		<a href="/backend/case/list" type="button" class="btn btn-round btn-default" >返回</a>
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
    <script src="/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript">  
    
    
		function setSecond(){
			var parentVal =$("#parent").val();
			if(parentVal){
				$.ajax({
					url:"/backend/category/getByParent",
					method:"post",
					data:{parent:parentVal},
					success:function(data){
						$("#category").empty();
						var str='<option value="">请选择二级分类</option>';	
						for(var i=0;i<data.categorys.length;i++){
							str += '<option value="'+data.categorys[i].id+'">'+data.categorys[i].name+'</option>';	
						}
						$("#category").append(str);			
					}
				})
			}
		};
	 	$(function(){

			var loginUrl = "/backend/login";
			
			var logoutUrl = "/backend/logout";
			
			var saveAuthorUrl = "/backend/case/update";
			
			var caseListUrl = "/backend/case/list";

			
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
				$('#upload_coverImage').click();
			});
			$('#upload_coverImage').change(function() {
    				var file = $('#upload_coverImage')[0].files[0];
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
				    data.append("token", $("#upload_coverImage").data('uptoken'));
				    $.ajax({
				      data: data,
				      type: "POST",
				      url: "http://upload.qiniu.com",
				      cache: false,
				      contentType: false,
				      processData: false,
				      success: function(data) {
       					 var url = $("#upload_coverImage").data('url')+"/" + data['key'];
       					 $("#coverImage").val(url);
       					 toastr.success("上传成功！");
       					 $("#image_show").attr("src",url);
       					}
       				});
       			});
       			
       		
       		$("#upload_detailImage_button").click(function(){
				$('#upload_detailImage').click();
			});
			$('#upload_detailImage').change(function() {
    				var file = $('#upload_detailImage')[0].files[0];
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
				    data.append("token", $("#upload_detailImage").data('uptoken'));
				    $.ajax({
				      data: data,
				      type: "POST",
				      url: "http://upload.qiniu.com",
				      cache: false,
				      contentType: false,
				      processData: false,
				      success: function(data) {
       					 var url = $("#upload_detailImage").data('url')+"/" + data['key'];
       					 $("#detailImage").val(url);
       					 toastr.success("上传成功！");
       					 $("#detailImage_show").attr("src",url);
       					}
       				});
       			});
       			
       		$("#upload_detail_button").click(function(){
				$('#upload_detail').click();
			});
			$('#upload_detail').change(function() {
    				var file = $('#upload_detail')[0].files[0];
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
				    data.append("token", $("#upload_detail").data('uptoken'));
				    $.ajax({
				      data: data,
				      type: "POST",
				      url: "http://upload.qiniu.com",
				      cache: false,
				      contentType: false,
				      processData: false,
				      success: function(data) {
       					 var url = $("#upload_detail").data('url')+"/" + data['key'];
       					var template ='<div class="col-sm-12 mb-20">'+
	                      		'<img  class="image-responsive detail-image" src="'+url+'" style="width:360px;height:220px;" /><br>'+
	                      		'<button type="button" class="btn btn-danger mt-10 delete-image">删除</button></div>';
	                     $("#imagesContent").append(template);		
       					 toastr.success("上传成功！");
       					}
       				});
       			});
       		
       		//删除图片
       		$("#imagesContent").on("click",".delete-image",function(){  			
       			if(confirm("你确定删除该图片吗？")){
       				$(this).parent().remove();
       			}
       		});	
       			
       		$("#save_case").click(function(){
       			var temp=[];
       			$(".detail-image").each(function(){
       				temp.push($(this)[0].src);
       			});
       			$("#images").val(temp.join(";"));
       			if($("#coverImage").val()){
       				var formData = $("#case_form").serialize();
					$.ajax({
							url:saveAuthorUrl,
							method:"post",
							data:formData,
							success:function(data){
								if(data.success){
									toastr.success(data.returnMsg);
									window.location.href=caseListUrl;
								}
							}
						})	
       			}else{
       				toastr.warning("请耐心等待图片上传或者上传图片！");
       			}
				
			});
			
			$('.form_date').datetimepicker({
		        language:  'fr',
		        weekStart: 1,
		        todayBtn:  1,
				autoclose: 1,
				todayHighlight: 1,
				startView: 2,
				minView: 2,
				forceParse: 0
		    });
		})
	</script>  
  </body>
</html>