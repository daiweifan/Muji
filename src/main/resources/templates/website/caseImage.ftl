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
	<section class="section-block" style="height:20%;">
	   <div class="container">
        <div class="navbar-header">
          <a class="navbar-brand" href="/">
          	<img src="../img/list_header.png" alt="" class="img-responsive" style="height:60px;">
          </a>
        </div>
      </div>
    </section>
	<section class="section-block" style="height:50%;">
      <div class="container">
      		<img src="${image}"  class="img-responsive center-block"  />
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