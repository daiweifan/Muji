
	function initialise(content) {
		$easingType= 'easeInOutQuart';
		var $container = $('.masonry');
		$container.imagesLoaded( function(){
			$container.isotope({
				itemSelector : '.masonry_item',
				isAnimated:true
			});	
		});
		$(window).scroll(function(){  
	        //滚动时加载数据
	        //参考地址:http://www.tuicool.com/articles/bUN3Mr
	    })  
		$('.filter li a').click(function(){
			$('.filter li a').removeClass('active');
			$(this).addClass('active');
			var selector = $(this).attr('data-option-value');
			$container.isotope({ filter: selector });
			return(false);
		});
	}
	$(".img_lazyload").lazyload({
		effect:"fadeIn",
		failurelimit:40,
		load:initialise,
	});
	$(document).ready(function() {	
		initialise('body'); 
	});