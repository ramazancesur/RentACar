// JavaScript Document
jQuery(function($){
    $(".car-slideshow").jCarouselLite({
        vertical: false,
        hoverPause:false,
        visible: 4,
        auto:3000,
        speed:500
    });

    $('a[rel=tooltip]').tooltip();
		
	$('#car-slides').slides({
		preload: true,
		preloadImage: '../img/loading.gif',
		paginationClass: 'car-slides-pagination',
		effect: 'fade',
		play: 5000,
		pause: 2500,
		hoverPause: true,
		animationStart: function(current){
			$('.caption').animate({
				bottom:-35
			},100);
		},
		animationComplete: function(current){
			$('.caption').animate({
				bottom:0
			},200);
		},
		slidesLoaded: function() {
			$('.caption').animate({
				bottom:0
			},200);
		}
	});

	$(".scrollable").scrollable({
		circular: true,
		vertical: true,
		size: 1,
	}).autoscroll({autoplay: true, interval: 5000, steps: 1}); 
	
    // if (document.cookie.indexOf('visited=true') == -1) {
        // var fifteenDays = 1000*60*60*24*15;
        // var expires = new Date((new Date()).valueOf() + fifteenDays);
        // document.cookie = "visited=true;expires=" + expires.toUTCString();
        // $.colorbox({ iframe:true, class:".iframe", href:"http://www.otokiralamadabiz.net/reklam", innerHeight:526, innerWidth:740, scrolling:false });
    // }
		
});