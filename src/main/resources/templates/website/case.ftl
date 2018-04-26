<!DOCTYPE html>
<html lang="en">
<head>
	<title>慕极</title>
    <meta charset="utf-8"/>
    <meta name="keywords" content="这里填写的是关键字"/>
    <meta name="description" content="网页描述"/>
    <meta name="viewport" content="width=device-width"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <link href="//cdn.bootcss.com/normalize/4.1.1/normalize.css">
    <link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="//cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">
    <link rel='stylesheet' href='/css/anna/main.css' />
    <link rel='stylesheet' href='/css/anna/style.min.css' />
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="bookmark" type="image/x-icon" /> 
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="icon" type="image/x-icon" /> 
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="shortcut icon" type="image/x-icon" /> 
	<link rel="apple-touch-icon" href="img/mooji.ico" />
	<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- <nav class="navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">慕极空间</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
          <div class="navbar-form navbar-right">
            <i class="fa fa-bars" aria-hidden="true"></i>
          </div>
        </div>
      </div>
    </nav> -->
    <div class="hidden-xs">
    	<nav id="fh5co-main-nav" role="navigation" class="hidden-xs">
			<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle active"><i></i></a>
			<div class="js-fullheight fh5co-table">
				<div class="fh5co-table-cell js-fullheight">
					<ul>
						<li><a href="/">首页</a></li>
						<li><a href="/authors">所有设计师</a></li>
						<li><a href="/cases">所有案例</a></li>
					</ul>
				</div>
			</div>
		</nav>
		<header class="header-fixed">
			<div id="fh5co-page">
				<div class="container">
					<a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
				</div>
			</div>
		</header>
    </div>
    <nav class="hidden-sm hidden-md hidden-lg navbar navbar-inverse navbar-fixed-top">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">慕极空间</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse" aria-expanded="false" style="height: 1px;">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/">首页</a></li>
            <li><a href="/authors">所有设计师</a></li>
            <li><a href="/cases">所有案例</a></li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </nav>
	<section class="section-block">
		<div id="fh5co-intro-section">
			<div class="container">
				<div class="row animate-box block-intro">
				<input type="hidden" id="backgroundImage" value="${case.detailImage!}"/>
					<div class="col-sm-4 text-center block-intro-left">
						<h4>${case.name!}</h4>
						<p></p>
					</div>
					<div class="col-sm-8 block-intro-right">
						<h4>案例简介</h4>
						<p>
							${case.description!}
						</p>
					</div>
				</div>
			</div>
		</div>
	</section>
	<section class="section-block">
		<div class="container">
			<div class="masonry_list_hook">
				<div class="row masonry" id="list_hook">
					<#if case.images ??  >
						<#list case.images?split(";") as image>
							<#if image!="">
								<a href="/caseImage?image=${image!}" target="_blank">
									<div class="col-sm-4 col-md-4 masonry_item">
										<img src="/img/loading.gif" alt="" class="img-responsive img_lazyload" data-original="${image!}"  >
									</div>
								</a>
							</#if>
						</#list>
					</#if>
					
					<!-- <div class="col-sm-4 col-md-4 masonry_item">
						<img src="/img/4.png" alt="" class="img-responsive">
					</div>
					<div class="col-sm-4 col-md-4 masonry_item">
						<img src="/img/5.png" alt="" class="img-responsive">
					</div>
					<div class="col-sm-4 col-md-4 masonry_item">
						<img src="/img/6.png" alt="" class="img-responsive">
					</div> -->
					<!-- <div class="col-sm-4 col-md-4 masonry_item text-center">
						<a href="javascript:void(0);" id="MoreBtn" class="btn btn-default btn-block">加载更多</a>
					</div> -->
				</div>
				
			</div>
		</div>
	</section>
	<section class="section-block">
		<div class="container">
		<hr>
		<div class="row">
			<#if randList?? && (randList?size > 0)>
              <#list randList as case>
                 <div class="col-xs-12 col-sm-4 col-md-4  mt-20">
					<h4>${case.name!}</h4>
					<div class="img">
						<a href="/case?id=${case.id!}" class="expand">
							<img src="${case.coverImage!}" alt="案例详情" class="img-responsive" style="width:300px;height:200px;">
						</a>
                    </div>
				</div>
             </#list>
           </#if>	
		</div>
	</section>
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

	<footer class="hidden-xs footer-bg">
		<!-- <img src="images/foot-bg2.png" alt="" class="img-responsive">
		<div class="black-mask">
			慕极空间，花香就在你身边

		</div> -->
	</footer>
	<footer class="hidden-sm hidden-md hidden-lg footer-text">
		<div class="container">
			<div class="text-center">
				<p>慕极空间 &copy; 2017 JANUAR Designbureau GmbH - Impressum</p>
			</div>
		</div>
	</footer>
	<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>

    <script src="/js/anna/main.js"></script>
	<script src="/js/anna/jquery-1.7.1.min.js"></script>
    <script src="/js/anna/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="/js/anna/jquery.lazyload.min.js"></script>
    <script src="/js/anna/style.js"></script>
    <script type="text/javascript">
   		$(function(){
   			$(".header-fixed").css("backgroundImage","url('"+$("#backgroundImage").val()+"')");
   		})
    	
    </script>
</body>
</html>