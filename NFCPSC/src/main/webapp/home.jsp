<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html class="no-js" lang="zh-CN">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="meta description">
<title>Home</title>

<!--=== Favicon ===
<link rel="shortcut icon" href="assets/img/favicon.ico"
	type="image/x-icon" />

<!-- Google fonts include -->
<!-- <link
	href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,900%7CYesteryear"
	rel="stylesheet">
-->
<!-- All Vendor & plugins CSS include -->
<link href="./assets/css/vendor2.css" rel="stylesheet">
<!-- Main Style CSS -->
<link href="./assets/css/style2.css" rel="stylesheet">

</head>
<script>
function loadXMLDoc(id)
{
	var idd=id;
	var xmlhttp;
	if (window.XMLHttpRequest)
	{
		// IE7+, Firefox, Chrome, Opera, Safari 浏览器执行代码
		xmlhttp=new XMLHttpRequest();
	}
	else
	{
		// IE6, IE5 浏览器执行代码
		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function()
	{
		if (xmlhttp.readyState==4 && xmlhttp.status==200)
		{
			document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
		}
	}
	 alert("已添加至购物车！");
	xmlhttp.open("GET","gouwc/add?id="+idd,true);
	xmlhttp.send();
	
}
</script>
<body>

	<!-- Start Header Area -->
	<header class="header-area">
		<!-- main header start -->
		<div class="main-header d-none d-lg-block">
			<!-- header top start -->
			<div class="header-top bdr-bottom">
				<div class="container">
					<div class="row align-items-center">
						<div class="col-lg-6">
							<div class="welcome-message">
								<p style="font-size: 20px;">欢迎来到土石村农副产品销售网站</p>
							</div>
						</div>
						<div class="col-lg-6 text-right"></div>
					</div>
				</div>
			</div>
			<!-- header top end -->

			<!-- header middle area start -->
			<div class="header-main-area sticky">
				<div class="container">
					<div class="row align-items-center position-relative">
						<!-- start logo area -->
						<div class="col-lg-3">
							<div class="logo">
								<a href="index.html"> <img src="assets/img/logo/logo.png"
									alt="">
								</a>
							</div>
						</div>
						<!-- start logo area -->
						<!-- main menu area start -->
						<div class="col-lg-6 position-static">
							<div class="main-menu-area">
								<div class="main-menu">
									<!-- main menu navbar start -->
									<nav class="desktop-menu">
										<ul>
											<li><a href="home" style="font-size: 25px;">首页</a></li>
											<li><a href="gouwc/get" style="font-size: 25px;">我的购物车</a></li>
											<li><a href="order/orderme"
												style="font-size: 25px;">我的订单</a></li>
										</ul>
									</nav>
									<!-- main menu navbar end -->
								</div>
							</div>
						</div>
						<!-- main menu area end -->

						<!-- mini cart area start -->
						<div class="col-lg-3">
							<div class="header-configure-wrapper">
								<div class="header-configure-area">
									<ul class="nav justify-content-end">
										<li class="user-hover"><a href="#">个人中心 </a>
											<ul class="dropdown-list">
												<li><a href="user/getme">个人信息</a></li>
												<li><a href="./loginpage">退出登录</a></li>
											</ul></li>
									</ul>
								</div>
							</div>
						</div>
						<!-- mini cart area end -->

					</div>
				</div>
			</div>
			<!-- header middle area end -->
		</div>
		<!-- main header start -->

		<!-- mobile header start -->
		<div class="mobile-header d-lg-none d-md-block sticky">
			<!--mobile header top start -->
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12">
						<div class="mobile-main-header">
							<div class="mobile-logo">
								<a href="index.html"> <img src="assets/img/logo/logo.png"
									alt="Brand Logo">
								</a>
							</div>
							<div class="mobile-menu-toggler">
								<div class="mini-cart-wrap">
									<a href="#"> <i class="lnr lnr-cart"></i>
									</a>
								</div>
								<div class="mobile-menu-btn">
									<div class="off-canvas-btn">
										<i class="lnr lnr-menu"></i>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- mobile header top start -->
		</div>
		<!-- mobile header end -->
	</header>
	<!-- end Header Area -->

	<!-- off-canvas menu start -->
	<aside class="off-canvas-wrapper">
		<div class="off-canvas-overlay"></div>
		<div class="off-canvas-inner-content">
			<div class="btn-close-off-canvas">
				<i class="lnr lnr-cross"></i>
			</div>

			<div class="off-canvas-inner">
				<!-- search box start -->
				<div class="search-box-offcanvas">
					<form>
						<input type="text" placeholder="Search Here...">
						<button class="search-btn">
							<i class="lnr lnr-magnifier"></i>
						</button>
					</form>
				</div>
				<!-- search box end -->

				<!-- mobile menu start -->
				<div class="mobile-navigation">

					<!-- mobile menu navigation start -->
					<nav>
						<ul class="mobile-menu">
							<li><a href="index.html">Home</a></li>
							<li><a href="shop.html">Shop</a></li>
							<li><a href="product-details.html">Product Details</a></li>
						</ul>
					</nav>
					<!-- mobile menu navigation end -->
				</div>
				<!-- mobile menu end -->

				<div class="mobile-settings">
					<ul class="nav">
						<li>
							<div class="dropdown mobile-top-dropdown">
								<a href="#" class="dropdown-toggle" id="currency"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> Currency <i class="fa fa-angle-down"></i>
								</a>
								<div class="dropdown-menu" aria-labelledby="currency">
									<a class="dropdown-item" href="#">$ USD</a> <a
										class="dropdown-item" href="#">$ EURO</a>
								</div>
							</div>
						</li>
						<li>
							<div class="dropdown mobile-top-dropdown">
								<a href="#" class="dropdown-toggle" id="myaccount"
									data-toggle="dropdown" aria-haspopup="true"
									aria-expanded="false"> My Account <i
									class="fa fa-angle-down"></i>
								</a>
								<div class="dropdown-menu" aria-labelledby="myaccount">
									<a class="dropdown-item" href="#">my account</a> <a
										class="dropdown-item" href="#"> login</a> <a
										class="dropdown-item" href="#">register</a>
								</div>
							</div>
						</li>
					</ul>
				</div>

				<!-- offcanvas widget area start -->
				<div class="offcanvas-widget-area">
					<div class="off-canvas-contact-widget">
						<ul>
							<li><i class="fa fa-mobile"></i> <a href="#">0123456789</a>
							</li>
							<li><i class="fa fa-envelope-o"></i> <a href="#">info@yourdomain.com</a>
							</li>
						</ul>
					</div>
					<div class="off-canvas-social-widget">
						<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
							class="fa fa-twitter"></i></a> <a href="#"><i
							class="fa fa-pinterest-p"></i></a> <a href="#"><i
							class="fa fa-linkedin"></i></a> <a href="#"><i
							class="fa fa-youtube-play"></i></a>
					</div>
				</div>
				<!-- offcanvas widget area end -->
			</div>
		</div>
	</aside>
	<!-- off-canvas menu end -->



	<!-- main wrapper start -->
	<main>
		<!-- slider area start -->
		<section class="slider-area">
			<div
				class="hero-slider-active slick-arrow-style slick-arrow-style_hero slick-dot-style">
				<!-- single slider item start -->
				<div class="hero-single-slide ">
					<div class="hero-slider-item bg-img"
						data-bg="assets/img/slider/home1-slide1.jpg">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<div class="hero-slider-content slide-1">
										<span>valentine gift</span>
										<h1>Fresh Your Mind</h1>
										<h2>& Feeling love</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single slider item end -->

				<!-- single slider item start -->
				<div class="hero-single-slide">
					<div class="hero-slider-item bg-img"
						data-bg="assets/img/slider/home1-slide2.jpg">
						<div class="container">
							<div class="row">
								<div class="col-md-12">
									<div class="hero-slider-content slide-2">
										<span>valentine gift</span>
										<h1>Fresh Your Mind</h1>
										<h2>& Feeling love</h2>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- single slider item start -->
			</div>
		</section>
		<!-- slider area end -->

		<!-- banner statistics start -->
		<section class="banner-statistics section-space"></section>
		<!-- banner statistics end -->

		<!-- service policy start -->
		<section class="service-policy-area section-space p-0">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- start policy single item -->
						<div class="service-policy-item">
							<div class="icons">
								<img src="assets/img/icon/free_shipping.png" alt="">
							</div>
							<div class="policy-terms">
								<h5>free shipping</h5>
								<p>Free shipping all order</p>
							</div>
						</div>
						<!-- end policy single item -->
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- start policy single item -->
						<div class="service-policy-item">
							<div class="icons">
								<img src="assets/img/icon/support247.png" alt="">
							</div>
							<div class="policy-terms">
								<h5>SUPPORT 24/7</h5>
								<p>Support 24 hours a day</p>
							</div>
						</div>
						<!-- end policy single item -->
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- start policy single item -->
						<div class="service-policy-item">
							<div class="icons">
								<img src="assets/img/icon/money_back.png" alt="">
							</div>
							<div class="policy-terms">
								<h5>Money Return</h5>
								<p>30 days for free return</p>
							</div>
						</div>
						<!-- end policy single item -->
					</div>
					<div class="col-lg-3 col-md-6 col-sm-6">
						<!-- start policy single item -->
						<div class="service-policy-item">
							<div class="icons">
								<img src="assets/img/icon/promotions.png" alt="">
							</div>
							<div class="policy-terms">
								<h5>ORDER DISCOUNT</h5>
								<p>On every order over $15</p>
							</div>
						</div>
						<!-- end policy single item -->
					</div>
				</div>
			</div>
		</section>
		<!-- service policy end -->

		<!-- our product area start -->
		<section class="our-product section-space">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2>商品信息</h2>
							<p>土石村农副产品</p>
						</div>
					</div>
				</div>
				<div class="row mtn-40">
					<c:forEach var="temp" items="${goods }">
						<!-- product single item start -->
						<div class="col-lg-3 col-md-4 col-sm-6">
							<div class="product-item mt-40">
								<figure class="product-thumb">
									<img style="width: 270px; height: 270px;" class="pri-img"
										src="file/${temp.img }" alt="product">
									<img style="width: 270px; height: 270px;" class="sec-img"
										src="file/${temp.img }" alt="product">
									<div class="product-badge">
										<div class="product-label new">
											<span>new</span>
										</div>
										<!-- <div class="product-label discount">
                                        <span>10%</span>
                                    </div> -->
									</div>
								</figure>
								<div class="product-caption">
									<p class="product-name" style="font-size: 20px;">
										<element>${ temp.name}</element>
									</p>
									<div class="price-box">
										<span class="price-regular">￥ <element>${ temp.dj}</element></span><br />
										<br /> <span class="price-regular"><a href="javascript:loadXMLDoc(${temp.id });">添加到购物车</a></span>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>



				</div>
			</div>
		</section>
		<!-- our product area end -->

		<!-- banner statistics start -->
		<section class="banner-statistics-right">
			<div class="container">
				<div class="row">
					<!-- start banner item start -->
					<div class="col-md-6">
						<div class="banner-item banner-border">
							<figure class="banner-thumb">
								<a href="#"> <img src="assets/img/banner/banner-1.jpg"
									alt="">
								</a>
								<figcaption class="banner-content banner-content-right">
									<h2 class="text1">for you</h2>
									<h2 class="text2">Tulip Flower</h2>
									<a class="store-link" href="#">shop now</a>
								</figcaption>
							</figure>
						</div>
					</div>
					<!-- start banner item end -->

					<!-- start banner item start -->
					<div class="col-md-6">
						<div class="banner-item banner-border">
							<figure class="banner-thumb">
								<a href="#"> <img src="assets/img/banner/banner-2.jpg"
									alt="">
								</a>
								<figcaption class="banner-content banner-content-right">
									<h2 class="text1">for you</h2>
									<h2 class="text2">Flower & Box</h2>
									<a class="store-link" href="#">shop now</a>
								</figcaption>
							</figure>
						</div>
					</div>
					<!-- start banner item end -->
				</div>
			</div>
		</section>
		<!-- banner statistics end -->

		<!-- trending product area start -->
		<section class="top-sellers section-space">
			<div class="container">
				<div class="row">
					<div class="col-12">
						<div class="section-title text-center">
							<h2>卖的最好</h2>
							<p>土石村农副产品</p>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<div
							class="product-carousel--4 slick-row-15 slick-sm-row-10 slick-arrow-style">


							<!-- product single item start -->
							<div class="product-item mt-40">
								<figure class="product-thumb">
									<a href="product-details.html"> <img class="pri-img"
										src="assets/img/product/product-1.jpg" alt="product"> <img
										class="sec-img" src="assets/img/product/product-2.jpg"
										alt="product">
									</a>
									<div class="product-badge">
										<div class="product-label new">
											<span>new</span>
										</div>
										<!-- <div class="product-label discount">
					                    <span>10%</span>
					                </div> -->
									</div>
								</figure>
								<div class="product-caption">
									<p class="product-name">
										<a href="product-details.html">Flowers bouquet pink11</a>
									</p>
									<div class="price-box">
										<span class="price-regular">$60.00</span><br /> <span
											class="price-regular"><a href="">添加到购物车</a></span>
									</div>
								</div>
							</div>
							<!-- product single item start -->

							<!-- product single item start -->
							<div class="product-item mt-40">
								<figure class="product-thumb">
									<a href="product-details.html"> <img class="pri-img"
										src="assets/img/product/product-1.jpg" alt="product"> <img
										class="sec-img" src="assets/img/product/product-2.jpg"
										alt="product">
									</a>
									<div class="product-badge">
										<div class="product-label new">
											<span>new</span>
										</div>
										<!-- <div class="product-label discount">
                                               <span>10%</span>
                                           </div> -->
									</div>
								</figure>
								<div class="product-caption">
									<p class="product-name">
										<a href="product-details.html">Flowers bouquet pink11</a>
									</p>
									<div class="price-box">
										<span class="price-regular">$60.00</span><br /> <span
											class="price-regular"><a href="">添加到购物车</a></span>
									</div>
								</div>
							</div>
							<!-- product single item start -->
							<!-- product single item start -->
							<div class="product-item mt-40">
								<figure class="product-thumb">
									<a href="product-details.html"> <img class="pri-img"
										src="assets/img/product/product-1.jpg" alt="product"> <img
										class="sec-img" src="assets/img/product/product-2.jpg"
										alt="product">
									</a>
									<div class="product-badge">
										<div class="product-label new">
											<span>new</span>
										</div>
										<!-- <div class="product-label discount">
					                    <span>10%</span>
					                </div> -->
									</div>
								</figure>
								<div class="product-caption">
									<p class="product-name">
										<a href="product-details.html">Flowers bouquet pink11</a>
									</p>
									<div class="price-box">
										<span class="price-regular">$60.00</span><br /> <span
											class="price-regular"><a href="">添加到购物车</a></span>
									</div>
								</div>
							</div>
							<!-- product single item start -->


						</div>
					</div>
				</div>
			</div>
		</section>
		<!-- trending product area end -->

		<!-- Instagram Feed Area Start -->
		<div class="instagram-feed-area">
			<div class="instagram-feed-thumb">
				<div id="instafeed" class="instagram-carousel"
					data-userid="6666969077"
					data-accesstoken="6666969077.1677ed0.d325f406d94c4dfab939137c5c2cc6c2">
				</div>
			</div>
		</div>
		<!-- Instagram Feed Area End -->

	</main>
	<!-- main wrapper end -->

	<!-- Start Footer Area Wrapper -->
	<footer class="footer-wrapper">

		<!-- footer widget area start -->
		<div class="footer-widget-area">
			<div class="container">
				<div class="footer-widget-inner section-space">
					<div class="row mbn-30">
						<!-- footer widget item start -->
						<div class="col-lg-5 col-md-6 col-sm-8">
							<div class="footer-widget-item mb-30">
								<div class="footer-widget-title">
									<h5>My account</h5>
								</div>
								<ul class="footer-widget-body accout-widget">
									<li class="address"><em><i class="lnr lnr-map-marker"></i></em>
										184 Main Rd E, St Albans VIC 3021, Australia</li>
									<li class="email"><em><i class="lnr lnr-envelope"></i>Mail
											us: </em> <a href="mailto:test@yourdomain.com">yourmail@gmail.com</a>
									</li>
									<li class="phone"><em><i
											class="lnr lnr-phone-handset"></i> Phones: </em> <a
										href="tel:(012)800456789-987">(012) 800 456 789-987</a></li>
								</ul>
								<div class="payment-method">
									<img src="assets/img/payment-pic.png" alt="payment method">
								</div>
							</div>
						</div>
						<!-- footer widget item end -->

						<!-- footer widget item start -->
						<div class="col-lg-2 col-md-6 col-sm-4">
							<div class="footer-widget-item mb-30">
								<div class="footer-widget-title">
									<h5>categories</h5>
								</div>
								<ul class="footer-widget-body">
									<li><a href="#">Ecommerce</a></li>
									<li><a href="#">shopify</a></li>
									<li><a href="#">Prestashop</a></li>
									<li><a href="#">Opencart</a></li>
									<li><a href="#">Magento</a></li>
								</ul>
							</div>
						</div>
						<!-- footer widget item end -->

						<!-- footer widget item start -->
						<div class="col-lg-2 col-md-6 col-sm-6">
							<div class="footer-widget-item mb-30">
								<div class="footer-widget-title">
									<h5>information</h5>
								</div>
								<ul class="footer-widget-body">
									<li><a href="#">Home</a></li>
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Exchanges</a></li>
									<li><a href="#">Shipping</a></li>
								</ul>
							</div>
						</div>
						<!-- footer widget item end -->

						<!-- footer widget item start -->
						<div class="col-lg-2 offset-lg-1 col-md-6 col-sm-6">
							<div class="footer-widget-item mb-30">
								<div class="footer-widget-title">
									<h5>Quick Links</h5>
								</div>
								<ul class="footer-widget-body">
									<li><a href="#">Store Location</a></li>
									<li><a href="#">My Account</a></li>
									<li><a href="#">Orders Tracking</a></li>
									<li><a href="#">Size Guide</a></li>
									<li><a href="#">Contact Us</a></li>
								</ul>
							</div>
						</div>
						<!-- footer widget item end -->
					</div>
				</div>
			</div>
		</div>
		<!-- footer widget area end -->

		<!-- footer bottom area start -->
		<div class="footer-bottom-area">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-md-6 order-2 order-md-1">
						<div class="copyright-text">
							<p>
								Copyright &copy; 2019.Company name All rights reserved.<a
									target="_blank" href="https://www.mycodes.net/">网站模板</a>
							</p>
						</div>
					</div>
					<div class="col-md-6 order-1 order-md-2">
						<div class="footer-social-link">
							<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-linkedin"></i></a> <a href="#"><i
								class="fa fa-instagram"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- footer bottom area end -->

	</footer>
	<!-- End Footer Area Wrapper -->

	<!-- Quick view modal start -->
	<div class="modal" id="quick_view">
		<div class="modal-dialog modal-lg modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
				</div>
				<div class="modal-body">
					<!-- product details inner end -->
					<div class="product-details-inner">
						<div class="row">
							<div class="col-lg-5 col-md-5">
								<div class="product-large-slider">
									<div class="pro-large-img">
										<img src="assets/img/product/product-details-img1.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img">
										<img src="assets/img/product/product-details-img2.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img">
										<img src="assets/img/product/product-details-img3.jpg"
											alt="product-details" />
									</div>
									<div class="pro-large-img">
										<img src="assets/img/product/product-details-img4.jpg"
											alt="product-details" />
									</div>
								</div>
								<div class="pro-nav slick-row-10 slick-arrow-style">
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img1.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img2.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img3.jpg"
											alt="product-details" />
									</div>
									<div class="pro-nav-thumb">
										<img src="assets/img/product/product-details-img4.jpg"
											alt="product-details" />
									</div>
								</div>
							</div>
							<div class="col-lg-7 col-md-7">
								<div class="product-details-des quick-details">
									<h3 class="product-name">Orchid flower white stick</h3>
									<div class="ratings d-flex">
										<span><i class="lnr lnr-star"></i></span> <span><i
											class="lnr lnr-star"></i></span> <span><i
											class="lnr lnr-star"></i></span> <span><i
											class="lnr lnr-star"></i></span> <span><i
											class="lnr lnr-star"></i></span>
										<div class="pro-review">
											<span>1 Reviews</span>
										</div>
									</div>
									<div class="price-box">
										<span class="price-regular">$70.00</span> <span
											class="price-old"><del>$90.00</del></span>
									</div>
									<h5 class="offer-text">
										<strong>Hurry up</strong>! offer ends in:
									</h5>
									<div class="product-countdown" data-countdown="2019/08/25"></div>
									<div class="availability">
										<i class="fa fa-check-circle"></i> <span>200 in stock</span>
									</div>
									<p class="pro-desc">Lorem ipsum dolor sit amet, consetetur
										sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut
										labore et dolore magna aliquyam erat.</p>
									<div class="quantity-cart-box d-flex align-items-center">
										<h5>qty:</h5>
										<div class="quantity">
											<div class="pro-qty">
												<input type="text" value="1">
											</div>
										</div>
										<div class="action_link">
											<a class="btn btn-cart2" href="#">Add to cart</a>
										</div>
									</div>
									<div class="useful-links">
										<a href="#" data-toggle="tooltip" title="Compare"><i
											class="lnr lnr-sync"></i>compare</a> <a href="#"
											data-toggle="tooltip" title="Wishlist"><i
											class="lnr lnr-heart"></i>wishlist</a>
									</div>
									<div class="like-icon">
										<a class="facebook" href="#"><i class="fa fa-facebook"></i>like</a>
										<a class="twitter" href="#"><i class="fa fa-twitter"></i>tweet</a>
										<a class="pinterest" href="#"><i class="fa fa-pinterest"></i>save</a>
										<a class="google" href="#"><i class="fa fa-google-plus"></i>share</a>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- product details inner end -->
				</div>
			</div>
		</div>
	</div>
	<!-- Quick view modal end -->

	<!-- offcanvas search form start -->
	<div class="offcanvas-search-wrapper">
		<div class="offcanvas-search-inner">
			<div class="offcanvas-close">
				<i class="lnr lnr-cross"></i>
			</div>
			<div class="container">
				<div class="offcanvas-search-box">
					<form class="d-flex bdr-bottom w-100">
						<input type="text" placeholder="Search entire storage here...">
						<button class="search-btn">
							<i class="lnr lnr-magnifier"></i>search
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- offcanvas search form end -->

	<!-- offcanvas mini cart start -->
	<div class="offcanvas-minicart-wrapper">
		<div class="minicart-inner">
			<div class="offcanvas-overlay"></div>
			<div class="minicart-inner-content">
				<div class="minicart-close">
					<i class="lnr lnr-cross"></i>
				</div>
				<div class="minicart-content-box">
					<div class="minicart-item-wrapper">
						<ul>
							<li class="minicart-item">
								<div class="minicart-thumb">
									<a href="product-details.html"> <img
										src="assets/img/cart/cart-1.jpg" alt="product">
									</a>
								</div>
								<div class="minicart-content">
									<h3 class="product-name">
										<a href="product-details.html">Flowers bouquet pink for
											all flower lovers</a>
									</h3>
									<p>
										<span class="cart-quantity">1 <strong>&times;</strong></span>
										<span class="cart-price">$100.00</span>
									</p>
								</div>
								<button class="minicart-remove">
									<i class="lnr lnr-cross"></i>
								</button>
							</li>
							<li class="minicart-item">
								<div class="minicart-thumb">
									<a href="product-details.html"> <img
										src="assets/img/cart/cart-2.jpg" alt="product">
									</a>
								</div>
								<div class="minicart-content">
									<h3 class="product-name">
										<a href="product-details.html">Jasmine flowers white for
											all flower lovers</a>
									</h3>
									<p>
										<span class="cart-quantity">1 <strong>&times;</strong></span>
										<span class="cart-price">$80.00</span>
									</p>
								</div>
								<button class="minicart-remove">
									<i class="lnr lnr-cross"></i>
								</button>
							</li>
						</ul>
					</div>

					<div class="minicart-pricing-box">
						<ul>
							<li><span>sub-total</span> <span><strong>$300.00</strong></span>
							</li>
							<li><span>Eco Tax (-2.00)</span> <span><strong>$10.00</strong></span>
							</li>
							<li><span>VAT (20%)</span> <span><strong>$60.00</strong></span>
							</li>
							<li class="total"><span>total</span> <span><strong>$370.00</strong></span>
							</li>
						</ul>
					</div>

					<div class="minicart-button">
						<a href="#"><i class="fa fa-shopping-cart"></i> view cart</a> <a
							href="#"><i class="fa fa-share"></i> checkout</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- offcanvas mini cart end -->

	<!-- Scroll to top start -->
	<div class="scroll-top not-visible">
		<i class="fa fa-angle-up"></i>
	</div>
	<!-- Scroll to Top End -->

	<!-- All vendor & plugins & active js include here -->
	<!--All Vendor Js -->
	<script src="assets/js/vendor.js"></script>
	<!-- Active Js -->
	<script src="assets/js/active.js"></script>
</body>

</html>
