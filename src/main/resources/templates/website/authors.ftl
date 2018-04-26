<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta charset="utf-8"/>
    <meta name="keywords" content="这里填写的是关键字"/>
    <meta name="description" content="网页描述"/>
    <meta name="viewport" content="width=device-width"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>设计师列表</title>
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="bookmark" type="image/x-icon" /> 
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="icon" type="image/x-icon" /> 
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="shortcut icon" type="image/x-icon" /> 
	<link rel="apple-touch-icon" href="img/mooji.ico" />
	<!-- Demo Styles -->
	<style>
		html,body {
			margin: 0;
			padding: 0;
		}
		body {
			background-color: #FFF;
			font-family: "HelveticaNeue-Light", "Helvetica Neue Light", "Helvetica Neue", Helvetica, Arial, "Lucida Grande", sans-serif; 
   			font-weight: 300;
		}
		.container {
			width: 80%;
			margin: 0 auto;
		}

		.wrapper {
			background-color: #f4f4f4;
			padding: 8px;
			height: 320px;
		}
		.wrapper img {
			width: 100%;
			height:220px;
		}
		.wrapper .item-tags {
			color: #AAA;
			font-size: 12px;
			line-height: 1.8;
		}
		.tagsort-tags-container {
			margin: 40px 0;
		}
	</style>
	<link href="css/tagsort.min.css" rel="stylesheet" type="text/css"></link>
	<link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="css/utils.min.css" rel="stylesheet">
	<script src="lib/jquery/dist/jquery.min.js"></script>
	<script src="js/tagsort.min.js" type="text/javascript" charset="utf-8"></script>
	 <script src="js/bootstrap.min.js"></script>
	<script>
	$(function(){
		// Inclusive = when multiple tags are selected, all elements that contain ANY of those tags will be shown
		// Exclusive = when multiple tags are selected, only elements that contain ALL of those tags will be shown
		$('div.tags-container').tagSort({selector:'.item',displaySelector: '.item-tags', displaySeperator: ' / ', inclusive: false, fadeTime:200});
	});
	</script>
</head>
<body>
	<nav class="navbar">
      <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="/">
          	<img src="../img/list_header.png" alt="" class="img-responsive" style="height:60px;">
          </a>
        </div>
      </div>
    </nav>
	 <section style="width: 100%; text-align: center;">
	 	<div class="container mt-30">
	 		<div class="col-md-5">
				<div class="tags-container row"></div>
	 		</div>
		 	<div class="col-md-7 mt-50 ">
				<div class="input-group col-md-12" style="margin-top:0px positon:relative">  
			       <input type="text" class="form-control" style="height:70px;" id="search_content" placeholder="请输入设计师名称..." / >  
		            <span class="input-group-btn" style="width:120wh;height:70px;">  
		               <button class="btn  btn-search" id="search_button" style="width:120px;height:70px;color:white;background-color:rgb(226,210,188);">查找</button>  
		            </span>  
			 	</div>  
		 	</div>
		</div>
		
	</section>
	<div class="container mt-20 hidden-xs">
		
		<#list authors as author>
			<div class=" col-md-4 col-sm-12 mt-20" data-item-id="${author.id!}" >
				<div class="wrapper">
					<a href="/author?id=${author.id}"><img src="${author.avatar!}" alt="设计师" class="img-responsive" ></a>
					<h2>${author.name!}</h2>
					<p class="item-tags">
						<#if author.type=="1">
							空间设计师
						<#else>
							软装设计师
						</#if> 
					</p>
				</div>
			</div>
		</#list>
	</div>
	
	<div class="container mt-20 hidden-sm hidden-md hidden-lg">
		<#list authors as author>
			<div class=" col-md-4 col-sm-12 mt-20" data-item-id="${author.id!}" >
				<div class="wrapper" style="height: 220px;">
					<a href="/author?id=${author.id}"><img src="${author.avatar!}" alt="设计师" class="img-responsive" style="height:120px;" ></a>
					<h2>${author.name!}</h2>
					<p class="item-tags">
						<#if author.type=="1">
							空间设计师
						<#else>
							软装设计师
						</#if> 
					</p>
				</div>
			</div>
		</#list>
	</div>
	<section class="section-block">
		<div class="container">
			<hr>
			<div class="row">
				<div class="col-md-4">
					<h4>联系慕极</h4>
					<p>${company.telephone!}</p>
					<p>${company.email!}</p>
				</div>
				<div class="col-md-8">
					<div class="row">
						<div class="col-md-4">
							<img src="/img/wechat1.jpeg" class="img-responsive" style="height:150px;">
						</div>
						<div class="col-md-4">
							<img src="/img/wechat2.jpeg" class="img-responsive" style="height:150px;">
						</div>
						<div class="col-md-4">
							<img src="/img/wechat3.jpg" class="img-responsive" style="height:150px;">
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<footer class="hidden-sm hidden-md hidden-lg footer-text">
		<div class="container">
			<div class="text-center">
				<p>慕极空间 &copy; 2017 JANUAR Designbureau GmbH - Impressum</p>
			</div>
		</div>
	</footer>
</body>
</html>


 <script type="text/javascript">

	  $(function(){
			
			$("#search_button").click(function(){
				
				window.location.href="?search="+$("#search_content").val();
			});

	    });
    		
</script>

