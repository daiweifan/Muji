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
    <link href="img/mooji.ico" mce_href="img/mooji.ico" rel="bookmark" type="image/x-icon" /> 
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="icon" type="image/x-icon" /> 
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="shortcut icon" type="image/x-icon" /> 
	<link rel="apple-touch-icon" href="img/mooji.ico" />
    <link href="//cdn.bootcss.com/normalize/4.1.1/normalize.css">
    <link href="//cdn.bootcss.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <link href="//cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.css" rel="stylesheet">
    <link rel='stylesheet' href='/css/anna/isotope.css' />
    <link rel='stylesheet' href='/css/anna/style.min.css' />
	<script src="/js/anna/jquery.modernizr.min.js"></script>
	<!--[if lt IE 9]>
      <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style type="text/css">
    	 
    </style>
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
  

	<section id="main" class="container">

    <div class="main_inner wrapper clearfix">
        <ul class="filter">
            <li><a class="active" href="" data-option-value="*">所有案例</a></li>
            <#if categorys ?? && (categorys?size>0)>
            	<#list categorys as data>
		            <li>
		            	<div class="dropdown">
						  <button class="btn btn-default" type="button" id="dropdownMenu1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-option-value=".work">
						    0${data_index+1} ${data.parent.name!}
						    <span class="caret"></span>
						  </button>
						  <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
						  	<#list data.seconds as c>
						    	<li><a href="#" data-option-value=".category_${c.id!}">${c.name!}</a></li>
						  	</#list>
						  </ul>
						</div>
		            </li>
		       </#list>
	        </#if>
            
            
            <li>
                <div class="dropdown">
                    <button class="btn btn-default" type="button" id="dropdownMenu2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true" data-option-value=".post">
                    0${categorys?size+1} 设计师
                    <span class="caret"></span>
                  </button>
                    <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                    	<#list authors as author>
                       		<li><a href="#" data-option-value=".author_${author.id!}">${author.name!}</a></li>
                      	</#list>
                      </ul>
                </div>
            </li>
        </ul>
        
       
        <div class="row entries masonry clearfix"> 
        	<#list cases as case>
	            <div class="col-md-4 masonry_item <#if case.category??>category_${case.category.id}</#if> <#if case.author??>author_${case.author.id!}</#if> <#if case.softAuthor??>author_${case.softAuthor.id!}</#if>">
	                <div class="img_holder">
	                    <a href="/case?id=${case.id}" rel="Diam nonumy eirmod" class="loadcontent">
	                    <img class="img-responsive img_lazyload img_lazyload" src="/img/loading.gif" alt="Blog Post 01" data-original="${case.coverImage!}"/></a>
	                 	<div style="text-align:center;margin-top:15px;">${case.name!}</div>
	                 </div>
	            </div>
	        </#list>
            
            
        </div><!-- END #masonry -->
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
	<footer>
	
	</footer>
    <footer class="footer-text">
        <div class="container">
            <div class="text-center">
                <p>慕极空间 &copy; 2017 JANUAR Designbureau GmbH - Impressum</p>
            </div>
        </div>
        
    </footer>
    <script type="text/javascript" src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
    <script type="text/javascript" src="//cdn.bootcss.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<script src="/js/anna/jquery-1.7.1.min.js"></script>
    <script src="/js/anna/jquery.isotope.min.js"></script>
    <script type="text/javascript" src="/js/anna/jquery.lazyload.min.js"></script>
    <script src="/js/anna/style.js"></script>
</body>
</html>