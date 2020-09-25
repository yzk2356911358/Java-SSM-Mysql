(function ($) {
	"use strict";

	/*------ Sticky menu start ------*/
	var $window = $(window);
	$window.on('scroll', function () {
		var scroll = $window.scrollTop();
		if (scroll < 300) {
			$(".sticky").removeClass("is-sticky");
		} else {
			$(".sticky").addClass("is-sticky");
		}
	});
	/*------ Sticky menu end ------*/

	/*-------- Background Image JS start --------*/
	var bgSelector = $(".bg-img");
	bgSelector.each(function (index, elem) {
		var element = $(elem),
			bgSource = element.data('bg');
		element.css('background-image', 'url(' + bgSource + ')');
	});
	/*-------- Background Image JS end --------*/

	/*------- Image zoom effect start -------*/
	$('.img-zoom').zoom();
	/*------- Image zoom effect end -------*/

	/*------- tooltip active js start -------*/
	$('[data-toggle="tooltip"]').tooltip();
	/*------- tooltip active js start -------*/

	/*------ Hero main slider active start ------*/
	$('.hero-slider-active').slick({
		autoplay: true,
		fade: true,
		speed: 1000,
		dots: false,
		prevArrow: '<button type="button" class="slick-prev"><i class="lnr lnr-chevron-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="lnr lnr-chevron-right"></i></button>',
		responsive: [{
			breakpoint: 992,
			settings: {
				arrows: false,
			}
		}]
	});
	/*------ Hero main slider active end ------*/

	/*------ Top seller carousel active start ------*/
	$('.product-carousel--4').slick({
		autoplay: false,
		fade: false,
		speed: 1000,
		slidesToShow: 4,
		adaptiveHeight: true,
		prevArrow: '<button type="button" class="slick-prev"><i class="lnr lnr-chevron-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="lnr lnr-chevron-right"></i></button>',
		responsive: [{
			breakpoint: 992,
			settings: {
				slidesToShow: 3
			}
		},
		{
			breakpoint: 768,
			settings: {
				slidesToShow: 2
			}
		},
		{
			breakpoint: 480,
			settings: {
				slidesToShow: 1
			}
		}]
	});
	/*------ Top seller carousel active end ------*/

	/*-------- prodct details slider active start --------*/
    $('.product-large-slider').slick({
        fade: true,
        arrows: false,
        asNavFor: '.pro-nav'
    });

    // product details slider nav active
    $('.pro-nav').slick({
        slidesToShow: 4,
        asNavFor: '.product-large-slider',
        centerMode: true,
        centerPadding: 0,
		focusOnSelect: true,
		prevArrow: '<button type="button" class="slick-prev"><i class="lnr lnr-chevron-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="lnr lnr-chevron-right"></i></button>',
		responsive: [{
			breakpoint: 576,
			settings: {
				slidesToShow: 3,
				arrows: false
			}
		}]
	});
	/*-------- prodct details slider active end --------*/

	/*------ Latest blog carousel active start ------*/
	$('.latest-blog-carousel').slick({
		autoplay: false,
		speed: 1000,
		slidesToShow: 3,
		adaptiveHeight: true,
		prevArrow: '<button type="button" class="slick-prev"><i class="lnr lnr-chevron-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="lnr lnr-chevron-right"></i></button>',
		responsive: [{
			breakpoint: 1200,
			settings: {
				slidesToShow: 2
			}
		},
		{
			breakpoint: 768,
			settings: {
				slidesToShow: 1,
				arrows: false
			}
		}]
	});
	/*------ Latest blog carousel active end ------*/

	/*------ Hero main slider active start ------*/
	$('.blog-carousel-active').slick({
		autoplay: true,
		fade: true,
		speed: 1000,
		dots: false,
		slidesToShow: 1,
		prevArrow: '<button type="button" class="slick-prev"><i class="lnr lnr-chevron-left"></i></button>',
		nextArrow: '<button type="button" class="slick-next"><i class="lnr lnr-chevron-right"></i></button>'
	});
	/*------ Hero main slider active end ------*/

	/*------- offcanvas search form active start -------*/
	$(".offcanvas-btn").on('click', function(){
		$("body").addClass('fix');
		$(".offcanvas-search-inner").addClass('show')
	})

	$(".minicart-btn").on('click', function(){
		$("body").addClass('fix');
		$(".minicart-inner").addClass('show')
	})

	$(".offcanvas-close, .minicart-close,.offcanvas-overlay").on('click', function(){
		$("body").removeClass('fix');
		$(".offcanvas-search-inner, .minicart-inner").removeClass('show')
	})
	/*------- offcanvas search form active end -------*/


	/*------- nice select active start -------*/
	$('select').niceSelect();
	/*------- nice select active end -------*/

	/*-------- Off Canvas Open close start--------*/
	$(".off-canvas-btn").on('click', function () {
		$("body").addClass('fix');
		$(".off-canvas-wrapper").addClass('open');
	});

	$(".btn-close-off-canvas,.off-canvas-overlay").on('click', function () {
		$("body").removeClass('fix');
		$(".off-canvas-wrapper").removeClass('open');
	});
	/*-------- Off Canvas Open close end--------*/

	// pricing filter
	var rangeSlider = $(".price-range"),
		amount = $("#amount"),
		minPrice = rangeSlider.data('min'),
		maxPrice = rangeSlider.data('max');
	rangeSlider.slider({
		range: true,
		min: 0,
		max: 1200,
		values: [100, 1000],
		slide: function (event, ui) {
			amount.val("$" + ui.values[0] + " - $" + ui.values[1]);
		}
	});
	amount.val(" $" + rangeSlider.slider("values", 0) +
		" - $" + rangeSlider.slider("values", 1));


	/*------- product view mode change js start -------*/
    $('.product-view-mode a').on('click', function (e) {
        e.preventDefault();
        var shopProductWrap = $('.shop-product-wrap');
        var viewMode = $(this).data('target');
        $('.product-view-mode a').removeClass('active');
        $(this).addClass('active');
        shopProductWrap.removeClass('grid-view list-view').addClass(viewMode);
	})
	/*------- product view mode change js end -------*/

	/*------- Countdown Activation start -------*/
	$('[data-countdown]').each(function () {
		var $this = $(this),
			finalDate = $(this).data('countdown');
		$this.countdown(finalDate, function (event) {
			$this.html(event.strftime('<div class="single-countdown"><span class="single-countdown__time">%D</span><span class="single-countdown__text">Days</span></div><div class="single-countdown"><span class="single-countdown__time">%H</span><span class="single-countdown__text">Hours</span></div><div class="single-countdown"><span class="single-countdown__time">%M</span><span class="single-countdown__text">Mins</span></div><div class="single-countdown"><span class="single-countdown__time">%S</span><span class="single-countdown__text">Secs</span></div>'));
		});
	});
	/*------- Countdown Activation end -------*/

	/*--------- quantity change js start ---------*/
    $('.pro-qty').prepend('<span class="dec qtybtn">-</span>');
    $('.pro-qty').append('<span class="inc qtybtn">+</span>');
    $('.qtybtn').on('click', function () {
        var $button = $(this);
        var oldValue = $button.parent().find('input').val();
        if ($button.hasClass('inc')) {
            var newVal = parseFloat(oldValue) + 1;
        } else {
            // Don't allow decrementing below zero
            if (oldValue > 0) {
                var newVal = parseFloat(oldValue) - 1;
            } else {
                newVal = 0;
            }
        }
        $button.parent().find('input').val(newVal);
	});
	/*--------- quantity change js end ---------*/

	/*-------- scroll to top start --------*/
	$(window).on('scroll', function () {
		if ($(this).scrollTop() > 600) {
			$('.scroll-top').removeClass('not-visible');
		} else {
			$('.scroll-top').addClass('not-visible');
		}
	});
	$('.scroll-top').on('click', function (event) {
		$('html,body').animate({
			scrollTop: 0
		}, 1000);
	});
	/*-------- scroll to top end --------*/

    /*------- offcanvas mobile menu start -------*/
    var $offCanvasNav = $('.mobile-menu'),
        $offCanvasNavSubMenu = $offCanvasNav.find('.dropdown');
    
    /*Add Toggle Button With Off Canvas Sub Menu*/
    $offCanvasNavSubMenu.parent().prepend('<span class="menu-expand"><i></i></span>');
    
    /*Close Off Canvas Sub Menu*/
    $offCanvasNavSubMenu.slideUp();
    
    /*Category Sub Menu Toggle*/
    $offCanvasNav.on('click', 'li a, li .menu-expand', function(e) {
        var $this = $(this);
        if ( ($this.parent().attr('class').match(/\b(menu-item-has-children|has-children|has-sub-menu)\b/)) && ($this.attr('href') === '#' || $this.hasClass('menu-expand')) ) {
            e.preventDefault();
            if ($this.siblings('ul:visible').length){
                $this.parent('li').removeClass('active');
                $this.siblings('ul').slideUp();
            } else {
                $this.parent('li').addClass('active');
                $this.closest('li').siblings('li').removeClass('active').find('li').removeClass('active');
                $this.closest('li').siblings('li').find('ul:visible').slideUp();
                $this.siblings('ul').slideDown();
            }
        }
    });
    /*------- offcanvas mobile menu end -------*/

	/*------- Checkout Page accordion start -------*/
    $("#create_pwd").on("change", function () {
        $(".account-create").slideToggle("100");
    });

    $("#ship_to_different").on("change", function () {
        $(".ship-to-different").slideToggle("100");
    });

    // Payment Method Accordion
    $('input[name="paymentmethod"]').on('click', function () {
        var $value = $(this).attr('value');
        $('.payment-method-details').slideUp();
        $('[data-method="' + $value + '"]').slideDown();
	});
	/*------- Checkout Page accordion start -------*/

	// slide effect dropdown
	function dropdownAnimation() {
		$('.toggle-bar').on('show.bs.toggle-bar', function (e) {
			$(this).find('.dropdown-list').first().stop(true, true).slideDown(5000);
		});

		$('.toggle-bar').on('hide.bs.toggle-bar', function (e) {
			$(this).find('.dropdown-list').first().stop(true, true).slideUp(5000);
		});
	}
	dropdownAnimation();
	

	// User Changeable Access
	var activeId = $("#instafeed"),
		myTemplate = '<div class="instagram-item"><a href="{{link}}" target="_blank" id="{{id}}"><img src="{{image}}" /></a><div class="instagram-hvr-content"><span class="tottallikes"><i class="fa fa-heart"></i>{{likes}}</span><span class="totalcomments"><i class="fa fa-comments"></i>{{comments}}</span></div></div>';

	if (activeId.length) {
		var userID = activeId.attr('data-userid'),
			accessTokenID = activeId.attr('data-accesstoken'),

			userFeed = new Instafeed({
				get: 'user',
				userId: userID,
				accessToken: accessTokenID,
				resolution: 'standard_resolution',
				template: myTemplate,
				sortBy: 'least-recent',
				limit: 15,
				links: false
			});
		userFeed.run();
	}

	// Instagram feed carousel active
	$(window).on('load', function () {
		var instagramFeed = $(".instagram-carousel");
		instagramFeed.imagesLoaded(function () {
			instagramFeed.slick({
				slidesToShow: 6,
				slidesToScroll: 2,
				dots: false,
				arrows: false,
				responsive: [{
						breakpoint: 480,
						settings: {
							slidesToShow: 2,
						}
					},
					{
						breakpoint: 767,
						settings: {
							slidesToShow: 3,
						}
					},
					{
						breakpoint: 991,
						settings: {
							slidesToShow: 4,
						}
					}
				]
			})
		});
	})


}(jQuery));