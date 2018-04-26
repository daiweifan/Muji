<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>慕极</title>
    <link href="img/mooji.ico" mce_href="img/mooji.ico" rel="bookmark" type="image/x-icon" /> 
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="icon" type="image/x-icon" /> 
	<link href="img/mooji.ico" mce_href="img/mooji.ico" rel="shortcut icon" type="image/x-icon" /> 
	<link rel="apple-touch-icon" href="img/mooji.ico" />
    <link href="http://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" type="text/css">
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel='stylesheet' href='/css/main.css' />
    <link href="css/font-awesome.css" rel="stylesheet">
    <link href="css/flexslider.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
    <link href="css/queries.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/utils.min.css" rel="stylesheet">
    <link href="css/toastr.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" href="css/normalize.css" />
    <link rel="stylesheet" type="text/css" href="css/demo.css" />
    <link rel="stylesheet" type="text/css" href="css/component.css" />
    <link rel="stylesheet" media="screen and (max-width: 1050px)" href="css/small.css" type="text/css"/> 
  
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!-- WARNING: Respond.js doesn't work if you view the page via file://-->
    <!--if lt IE 9
    script(src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js")
    |
    script(src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js")
    -->
  </head>
    <body class="demo-2">
    <div id="container" class="intro-effect-fadeout">
      <header class="header">
        <input id="carousel_images" value="${images!}"/>
        <div class="bg-img" id="imageBackground"><img src="${firstImage!}" alt="Background Image" /></div>
        <div class="title">
      
          <h1 class="company-name" style="position: absolute;top: -10vh;left: -20vh;">${company.name!}</h1>
          <#if company.introduction??>
	          <#list company.introduction?split("/n") as info>
	          	<#if info_index=0>
	          	    <p class="subline mt-20 pt-20" style="">${info}</p>
	          	<#else>
	          		<p class="subline" >${info}</p>
	          	</#if>
	          </#list>
	      </#if>
          <p> <strong></strong></p>
        </div>
      </header>
      
      <div class="hidden-xs">
	      <nav id="fh5co-main-nav" role="navigation" class="hidden-xs">
		      <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle active"><i></i></a>
		      <div class="js-fullheight fh5co-table">
		        <div class="fh5co-table-cell js-fullheight">
		          <ul>
		              <li><a href="#intro1">公司介绍 <span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
		              <li><a href="#team1">团队介绍 <span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
		              <li><a href="#features">服务项目及报价<span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
		              <li><a href="#portfolio">案例展示及检查 <span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
		              <li><a href="#portfolio1">工艺展示 <span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
		              <li><a  href="javascript:void(0)" class="contact_tab">联系方式与招聘<span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
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
    <header class="header-fixed">
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
	              <li><a href="#intro1" id="intro">公司介绍 <span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
	              <li><a href="#team1" id="team">团队介绍 <span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
	              <li><a href="#features">服务项目及报价<span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
	              <li><a href="#portfolio">案例展示及检查 <span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
	              <li><a href="#portfolio1">工艺展示 <span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
	              <li><a href="javascript:void(0)" class="contact_tab">联系方式与招聘<span class="indicator"><i class="fa fa-angle-right"></i></span></a></li>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
	    </nav>
       <div class="hidden-sm hidden-md hidden-lg " style="text-align:center;margin-top:-40px;background:url(../img/down.png) no-repeat 4px 5px"><!--<h1 class="arrow"><a href="#intro1"><span>公司介绍</span></a></h1>--><span >Tap To Slide </span> </div>
    </header>
   
    <section id="intro1" class="intro text-center ">
      <div class="" style="font-size:28px; display:none;">
            <div class="pull-right mt-20 mr-20">
              <div class="col-md-12 navicon"><a id="nav-toggle" class="nav_slide_button"><span></span></a></div>
            </div>
        </div>
      <div class="container">
        
        <div class="row">
          <div class="col-md-8 wp1 mb-50 text-left">
            <p style="font-size:20px;color: #353535">${company.description!}</p>
          </div>
        </div>
      </div>
    </section>

    <section id="team1" class="team text-center section-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="arrow"><a href="/authors" style="color: #333;">我们的团队</a></h1>
          </div>
        </div>
        <div class="row">
          <div class="team-wrapper">
            <div id="teamSlider">
              <ul class="slides">
              	 <#list 1..authorCount as i>
		              <li>
		                <#if authors[(i-1)*3]??>
		                   <div class="col-md-4 wp4">
		                    <div class="overlay-effect effects clearfix">
		                      <div class="img"><img src="${authors[(i-1)*3].avatar!}" alt="设计师">
		                        <div class="overlay"><a href="/author?id=${authors[(i-1)*3].id}" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
		                      </div>
		                    </div>
		                    <h2>${authors[(i-1)*3].name!}</h2>
		                  </div>
		              </#if>
		              <#if authors[(i-1)*3+1]??>
		                  <div class="col-md-4 wp4 delay-05s">
		                    <div class="overlay-effect effects clearfix">
		                      <div class="img"><img src="${authors[(i-1)*3+1].avatar!}" alt="设计师">
		                        <div class="overlay"><a href="/author?id=${authors[(i-1)*3+1].id}" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
		                      </div>
		                    </div>
		                    <h2>${authors[(i-1)*3+1].name!}</h2>
		                  </div>
		              </#if>
		              <#if authors[(i-1)*3+2]??>
		                  <div class="col-md-4 wp4 delay-1s">
		                    <div class="overlay-effect effects clearfix">
		                      <div class="img"><img src="${authors[(i-1)*3+2].avatar!}" alt="设计师">
		                        <div class="overlay"><a href="/author?id=${authors[(i-1)*3+2].id}" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
		                      </div>
		                    </div>
		                    <h2>${authors[(i-1)*3+2].name!}</h2>
		                  </div>   
		             </#if>       
		              </li>
            </#list>
              </ul>
            </div>
          </div>
        </div>
           <a href="/authors" class="pull-right" ><span>查看更多</span></a>
           <!--<a href="javascript:void(0);" class="pull-right more-button" id="changeAuthor"><span id="changeAuthor1">换一组</span></a>-->
      </div>
    </section>
    <section id="features" class="features text-center section-padding">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="arrow">我们提供的服务</h1>
            <div class="features-wrapper">
                <div class="col-md-4 wp2">
                  <#if companyServices[0].image??>
                     <img src="${companyServices[0].image!}" style="width:325px;height:205px; margin: 0 auto 50px;" >
                  <#else>
                    <img src="../img/hero-bg.jpg" style="width:275px;height:175px; margin: 0 auto 50px;" >
                  </#if>                  
                  <h2>${companyServices[0].name!}</h2>
                  <p>
                    ${companyServices[0].description!}
                  </p>
  
                </div>
                <div class="col-md-4 wp2 delay-05s">
                  <#if companyServices[1].image??>
                     <img src="${companyServices[1].image!}" style="width:325px;height:205px; margin: 0 auto 50px;" >
                  <#else>
                    <img src="../img/hero-bg.jpg" style="width:275px;height:175px; margin: 0 auto 50px;" >
                  </#if> 
                  <h2>${companyServices[1].name!}</h2>
                  <p>
                    ${companyServices[1].description!}
                  </p>
                </div>
                <div class="col-md-4 wp2 delay-1s">
                  <#if companyServices[2].image??>
                     <img src="${companyServices[2].image!}" style="width:325px;height:205px; margin: 0 auto 50px;" >
                  <#else>
                    <img src="../img/hero-bg.jpg" style="width:275px;height:175px; margin: 0 auto 50px;" >
                  </#if> 
                   <h2>${companyServices[2].name!}</h2>
                  <p>
                    ${companyServices[2].description!}
                  </p>
                </div>
              <div class="clearfix"></div>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="swag text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <h1><a href="/cases">经典案例</a></h1>                <a href="#portfolio" class="down-arrow-btn"><i class="fa fa-chevron-down"></i></a>
          </div>
        </div>
      </div>
    </section>
    <section id="portfolio" class="portfolio text-center section-padding">
      <div class="container">
        <div class="row">
          <div id="portfolioSlider">
            <ul class="slides">
            <#list 1..caseCount as i>
              <li>
                <#if cases[(i-1)*3]??>
                   <div class="col-md-4 wp4">
                    <div class="overlay-effect effects clearfix">
                      <div class="img"><img src="${cases[(i-1)*3].coverImage!}" alt="经典案例">
                        <div class="overlay"><a href="/case?id=${cases[(i-1)*3].id}" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
                      </div>
                    </div>
                    <h2>${cases[(i-1)*3].name!}</h2>
                    <p>${cases[(i-1)*3].description!}</p>
                  </div>
              </#if>
              <#if cases[(i-1)*3+1]??>
                  <div class="col-md-4 wp4 delay-05s">
                    <div class="overlay-effect effects clearfix">
                      <div class="img"><img src="${cases[(i-1)*3+1].coverImage!}" alt="经典案例">
                        <div class="overlay"><a href="/case?id=${cases[(i-1)*3+1].id}" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
                      </div>
                    </div>
                    <h2>${cases[(i-1)*3+1].name!}</h2>
                    <p>${cases[(i-1)*3+1].description!}</p>
                  </div>
              </#if>
              <#if cases[(i-1)*3+2]??>
                  <div class="col-md-4 wp4 delay-1s">
                    <div class="overlay-effect effects clearfix">
                      <div class="img"><img src="${cases[(i-1)*3+2].coverImage!}" alt="经典案例">
                        <div class="overlay"><a href="/case?id=${cases[(i-1)*3+2].id}" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
                      </div>
                    </div>
                    <h2>${cases[(i-1)*3+2].name!}</h2>
                    <p>${cases[(i-1)*3+2].description!}</p>
                  </div>   
             </#if>       
              </li>
            </#list>
            </ul>
          </div>
        </div>
         <a href="/cases" class="pull-right "><span >更多详情</span></a>
         <!--<a href="/cases" class="pull-right more-button"><span >更多详情</span></a>-->
      </div>
    </section>
    

    
    <section class="swag text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-md-offset-2">
            <h1>工艺展示</h1>                <a href="#portfolio1" class="down-arrow-btn"><i class="fa fa-chevron-down"></i></a>
          </div>
        </div>
      </div>
    </section>
    <section id="portfolio1" class="portfolio text-center section-padding">
      <div class="container">
        <div class="row">
          <div id="companyCraftSlider">
            <ul class="slides">
            <#list 1..ccCount as i>
              <li>
                <#if companyCrafts[(i-1)*3]??>
                   <div class="col-md-4 wp4">
                    <div class="overlay-effect effects clearfix">
                      <div class="img"><img src="${companyCrafts[(i-1)*3].image!}" alt="工艺展示">
                        <div class="overlay"><a href="javascript:showImage('${companyCrafts[(i-1)*3].image!}')" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
                      </div>
                    </div>
                    <h2>${companyCrafts[(i-1)*3].name!}</h2>            
                    <p>${companyCrafts[(i-1)*3].description!}</p>
                  </div>
                </#if>
                <#if companyCrafts[(i-1)*3+1]??>
                  <div class="col-md-4 wp4 delay-05s">
                    <div class="overlay-effect effects clearfix">
                      <div class="img"><img src="${companyCrafts[(i-1)*3+1].image!}" alt="工艺展示">
                        <div class="overlay"><a href="javascript:showImage('${companyCrafts[(i-1)*3+1].image!}')" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
                      </div>
                    </div>
                    <h2>${companyCrafts[(i-1)*3+1].name!}</h2>
                    <p>${companyCrafts[(i-1)*3+1].description!}</p>
                  </div>
              </#if>
              <#if companyCrafts[(i-1)*3+2]??>
                  <div class="col-md-4 wp4 delay-1s">
                    <div class="overlay-effect effects clearfix">
                      <div class="img"><img src="${companyCrafts[(i-1)*3+2].image!}" alt="工艺展示">
                        <div class="overlay"><a href="javascript:showImage('${companyCrafts[(i-1)*3+2].image!}')" class="expand"><i class="fa fa-search"></i><br>查看详情</a>                            <a class="close-overlay hidden">x</a></div>
                      </div>
                    </div>
                    <h2>${companyCrafts[(i-1)*3+2].name!}</h2>
                    <p>${companyCrafts[(i-1)*3+2].description!}</p>
                  </div>  
             </#if>       
              </li>
            </#list>
            </ul>
          </div>
        </div>
     	
      </div>
    </section>
    

    <input type="hidden" id="image1" value="${splitImages[0].image!}"/>
    <input type="hidden" id="image2" value="${splitImages[1].image!}"/>
    <section class="subscribe text-center" >
      <div class="container">
        <h1><i class="fa fa-paper-plane"></i></h1>
        <form action="#" id="message_form">
        <div class="row">
          <div class="mb-30 col-xs-offset-4 col-xs-4" style="text-align:left"><span style="color:white;">${company.messageNotice!}</span></div>
        </div>
          <input type="text" name="name" id="name" value="" class="mb-20" placeholder="您的姓名" required="">
          <br>
          <input type="text" name="contact" id="contact" value="" class="mb-20" placeholder="您的联系方式" required="">
          <br>
          <textarea style="height: 200px; " class="mb-20" placeholder="留言..." name="content" id="content"></textarea>
          <br>
          <input type="button" id="send" name="" value="Send">
        </form>
      </div>
    </section>
    <section id="contact" class="dark-bg text-center section-padding contact-wrap"><a href="#top" class="up-btn"><i class="fa fa-chevron-up"></i></a>
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1 class="arrow">联系我们</h1>
          </div>
        </div>
        <div class="row contact-details">
          <div class="col-md-4">
            <div class="light-box box-hover">
              <h2><i class="fa fa-map-marker"></i><span>地址</span></h2>
              <p>${company.address!}</p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="light-box box-hover">
              <h2><i class="fa fa-mobile"></i><span>电话</span></h2>
              <p>${company.telephone!}</p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="light-box box-hover">
              <h2><i class="fa fa-paper-plane"></i><span>邮箱</span></h2>
              <p>${company.email!}</p>
            </div>
          </div>
        </div>
      </div>
    </section>
    <section class="section-block">
    <div class="container">
      <div class="row">
        <div class="col-md-2">
        
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
      <div class="container">
        <div class="row">
          <div class="col-md-6">
            <ul class="legals">
              <li><a href="#">沪ICP备17017800号</a></li>
            </ul>
          </div>
        </div>
      </div>
      <!--        li-->
      <!--          a(href="#") Legals
      |
      .col-md-6.credit
        p
          | 2017 ©
          a(href="http://tympanus.net/codrops/")
            em David
      -->
    </footer>
    
    <div class="modal fade" id="showImageForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	   <div class="modal-dialog">
	      <div class="modal-content">
	         <div class="modal-header">
	            <button type="button" class="close" 
	               data-dismiss="modal" aria-hidden="true">
	                  &times;
	            </button>
	            <h4 class="modal-title" id="myModalLabel">
	               	图片预览
	            </h4>
	         </div>
	         <div class="modal-body">
	          	 <div id="img_show">
	         </div>
	      </div><!-- /.modal-content -->
	   </div>
	</div><!-- /.modal -->
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins)-->
    <script src="lib/jquery/dist/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed-->
    <script src="/js/anna/main.js"></script>
    <script src="js/waypoints.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/scripts.js"></script>
    <script src="js/jquery.flexslider.js"></script>
    <script src="js/modernizr.js"></script>
    <script src="js/toastr.min.js"></script>

    <script type="text/javascript">
    
    	//图片放大
	    function showImage(source){
	         $("#showImageForm").find("#img_show").html("<image src='"+source+"' class='carousel-inner img-responsive img-rounded' />");
	         $("#showImageForm").modal();
	     }
      $(function(){
        $("body").on("click",".contact_tab",function(){
          $(".demo-2").removeClass("menu-show");
          window.location.hash = "#contact"; 
        });
      });
      
      
    $.extend({ 
       includePath: '', 
       include: function(file) { 
        var files = typeof file == "string" ? [file]:file; 
        for (var i = 0; i < files.length; i++) { 
          var name = files[i].replace(/^\s|\s$/g, ""); 
          var att = name.split('.'); 
          var ext = att[att.length - 1].toLowerCase(); 
          var isCSS = ext == "css"; 
          var tag = isCSS ? "link" : "script"; 
          var attr = isCSS ? " type='text/css' rel='stylesheet' " : " language='javascript' type='text/javascript' "; 
          var link = (isCSS ? "href" : "src") + "='" + $.includePath + name + "'"; 
          if ($(tag + "[" + link + "]").length == 0) document.write("<" + tag + attr + link + "></" + tag + ">"); 
        } 
      } 
    }); 

   function changeAuthor(){
    $.ajax({
      url:"/getSixAuthors",
      method:"post",
      data:{},
      success:function(data){
        //手动append设计师列表
        var arr=new Array();
        var arr2=new Array();
        for(var j=0;j<data.authors.length;j++){
            $("#href_"+j).attr('href','/author?id='+data.authors[j].id); 
            $("#avatar_"+j).attr('src',data.authors[j].avatar); 
            $("#name_"+j).text(data.authors[j].name);
            $("#description_"+j).text(data.authors[j].description);
        }
  
                 
      }
    })
   }

    $(function(){
      $("body").on("click","#changeAuthor",function(){
        $.ajax({
      url:"/getSixAuthors",
      method:"post",
      data:{},
      success:function(data){
        //手动append设计师列表
        var arr=new Array();
        for(var j=0;j<data.authors.length;j++){
          var str = '<div class="col-md-4 wp5 mb-30">'+
                          '<div class="overlay-effect  clearfix">'+
                            '<div class="img"><img src="'+data.authors[j].avatar+'" alt="成员设计师" class="img-responsive" style="height:200px;">'+
                              '<div class="overlay"><a href="/author?id='+data.authors[j].id+
                              ' class="expand"><i class="fa fa-search"></i><br>查看详情</a>  <a class="close-overlay hidden">x</a></div>'+                          
                            '</div>'+
                        '</div>'+
                          '<h2>'+data.authors[j].name+'</h2>'+
                          '<p>'+data.authors[j].description+'</p>'+
                        '</div>';
                        
                        arr.push(str);
              if(j==2){
               var str1 = '<div class="clearfix"></div>';
               arr.push(str1);
              }   
        }
        $("#author_content").html();
        $("#author_content").empty();
        $("#author_content").append(arr.join(""));
        $("#author_content").css("display","none");
        
        console.log("替换"+data.authors[0].name );
                 
      }
    })
      
      });
    
      
    

    //手动触发自动滚动
    
            toastr.options = {  
              closeButton: false,  
              debug: false,  
              progressBar: true,  
              positionClass: "toast-top-full-width",  
              onclick: null,  
              showDuration: "300",  
              hideDuration: "1000",  
              timeOut: "2000",  
              extendedTimeOut: "1000",  
              showEasing: "swing",  
              hideEasing: "linear",  
              showMethod: "fadeIn",  
              hideMethod: "fadeOut"  
          };
          if($("#image1").val()){
            $(".swag").css("backgroundImage","url('"+$("#image1").val()+"')");
          }    
          if($("#image2").val()){   
            $(".subscribe").css("backgroundImage","url('"+$("#image2").val()+"')");
          }

          
        
          $("#send").click(function(){
            var formData = $("#message_form").serialize();
          if($("#name").val() && $("#content").val() && $("#contact").val()){         
            $.ajax({
                url:"/backend/message/update",
                method:"post",
                data:formData,
                success:function(data){
                  if(data.success){
                    toastr.success(data.returnMsg);
                    //清空输入框
                    $("#name").val("");
                    $("#contact").val("");
                    $("#content").val("");
                  }
                }
              })
          }else{
                toastr.warning("请填写全部内容！");
              }
        });
        
        //10秒 轮播
        var images = $("#carousel_images").val();
        var arr = images.split(";");
        if(arr.length>0){
          var x = 0;        
          setInterval(function(){        
                   x=x%3;         //         超过2则取余数，保证循环在0、1、2之间
                   
                   var img = '<img src="'+arr[x]+'" alt="Background Image" class=""/>'
                   $("#imageBackground").empty(); 
                   $("#imageBackground").append(img);       
                   x++; 
              },10000);
        } 
        
        
      
      });
        
    </script>
        <script src="js/classie.js"></script>
    <script>
      (function() {

        // detect if IE : from http://stackoverflow.com/a/16657946    
        var ie = (function(){
          var undef,rv = -1; // Return value assumes failure.
          var ua = window.navigator.userAgent;
          var msie = ua.indexOf('MSIE ');
          var trident = ua.indexOf('Trident/');

          if (msie > 0) {
            // IE 10 or older => return version number
            rv = parseInt(ua.substring(msie + 5, ua.indexOf('.', msie)), 10);
          } else if (trident > 0) {
            // IE 11 (or newer) => return version number
            var rvNum = ua.indexOf('rv:');
            rv = parseInt(ua.substring(rvNum + 3, ua.indexOf('.', rvNum)), 10);
          }

          return ((rv > -1) ? rv : undef);
        }());


        // disable/enable scroll (mousewheel and keys) from http://stackoverflow.com/a/4770179          
        // left: 37, up: 38, right: 39, down: 40,
        // spacebar: 32, pageup: 33, pagedown: 34, end: 35, home: 36
        var keys = [32, 37, 38, 39, 40], wheelIter = 0;

        function preventDefault(e) {
          e = e || window.event;
          if (e.preventDefault)
          e.preventDefault();
          e.returnValue = false;  
        }

        function keydown(e) {
          for (var i = keys.length; i--;) {
            if (e.keyCode === keys[i]) {
              preventDefault(e);
              return;
            }
          }
        }

        function touchmove(e) {
          preventDefault(e);
        }

        function wheel(e) {
          // for IE 
          //if( ie ) {
            //preventDefault(e);
          //}
        }

        function disable_scroll() {
          window.onmousewheel = document.onmousewheel = wheel;
          document.onkeydown = keydown;
          document.body.ontouchmove = touchmove;
        }

        function enable_scroll() {
          window.onmousewheel = document.onmousewheel = document.onkeydown = document.body.ontouchmove = null;  
        }

        var docElem = window.document.documentElement,
          scrollVal,
          isRevealed, 
          noscroll, 
          isAnimating,
          container = document.getElementById( 'container' ),
          trigger = container.querySelector( 'button.trigger' );

        function scrollY() {
          return window.pageYOffset || docElem.scrollTop;
        }
        
        function scrollPage() {
          scrollVal = scrollY();
          
          if( noscroll && !ie ) {
            if( scrollVal < 0 ) return false;
            // keep it that way
            window.scrollTo( 0, 0 );
          }

          if( classie.has( container, 'notrans' ) ) {
            classie.remove( container, 'notrans' );
            return false;
          }

          if( isAnimating ) {
            return false;
          }
          
          if( scrollVal <= 0 && isRevealed ) {
            toggle(0);
          }
          else if( scrollVal > 0 && !isRevealed ){
            toggle(1);
          }
        }

        function toggle( reveal ) {
          isAnimating = true;
          
          if( reveal ) {
            classie.add( container, 'modify' );
          }
          else {
            noscroll = true;
            disable_scroll();
            classie.remove( container, 'modify' );
          }

          // simulating the end of the transition:
          setTimeout( function() {
            isRevealed = !isRevealed;
            isAnimating = false;
            if( reveal ) {
              noscroll = false;
              enable_scroll();
            }
          }, 600 );
        }

        // refreshing the page...
        var pageScroll = scrollY();
        noscroll = pageScroll === 0;
        
        disable_scroll();
        
        if( pageScroll ) {
          isRevealed = true;
          classie.add( container, 'notrans' );
          classie.add( container, 'modify' );
        }
        
        window.addEventListener( 'scroll', scrollPage );
      })();
    </script>
  </body>
</html>