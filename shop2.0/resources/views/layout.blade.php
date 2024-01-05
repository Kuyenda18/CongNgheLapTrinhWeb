<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>

		<!-- Google font -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="{{asset('public/frontend/css/bootstrap.min.css')}}"/>

		<!-- Slick -->
		<link href="{{asset('public/frontend/css/main.css')}}" rel="stylesheet">
		<link type="text/css" rel="stylesheet" href="{{asset('public/frontend/css/slick.css')}}"/>
		<link type="text/css" rel="stylesheet" href="{{asset('public/frontend/css/slick-theme.css')}}"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="{{asset('public/frontend/css/nouislider.min.css')}}"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="{{asset('public/frontend/css/font-awesome.min.css')}}">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="{{asset('public/frontend/css/style.css')}}"/>

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
	<body>
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="https://vku.udn.vn/"><i class="fa fa-phone"></i> 0236 3667 117</a></li>
						<li><a href="https://vku.udn.vn/"><i class="fa fa-envelope-o"></i> info@vku.udn.vn</a></li>
						
					</ul>
					<ul class="header-links pull-right">
						<li><a href="#"><i class="fa fa-dollar"></i> VNĐ</a></li>



						<?php	
								$customer_id = Session::get('customer_id');
								if($customer_id!=NULL){ 
										?>
								<li><a href="{{URL::to('/logout-checkout')}}"><i class="fa fa-user-o"></i> Đăng xuất</a></li>
						<?php
					}else{
							?>

						<li><a href="{{URL::to('/login-checkout')}}"><i class="fa fa-user-o"></i> Đăng nhập</a></li>
						<?php 
					}
							?>

					</ul>
				</div>
			</div>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="{{URL::to("/trang-chu")}}" class="logo">
									<img src="{{asset('public/frontend/images/rubikicon.png')}}" alt="">
								</a>
							</div>
							<div class="header-logo">
								<a href="{{URL::to("/trang-chu")}}" class="logo">
									<img src="{{asset('public/frontend/images/t1bgr.png')}}" alt="">
								</a>
							</div>
							
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form action="{{URL('/tim-kiem')}}" method="POST">
									{{ csrf_field() }}
									<input class="input" name="keywords_submit" placeholder="Tìm kiếm sản phẩm">
									<button class="search-btn" name="search_items" >Tìm</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->

								<?php
								$customer_id = Session::get('customer_id');
								$shipping_id = Session::get('shipping_id');
								if($customer_id!=NULL && $shipping_id==NULL ){ 
										?>
								<div>
									<a href="{{URL::to('/checkout')}}">
										<i class="fa fa-money"></i>
										<span>Thanh toán</span>
										
									</a>
								</div>
								<?php
								}elseif($customer_id!=NULL && $shipping_id!=NULL ){
										?>
										<div>
											<a href="{{URL::to('/payment')}}">
												<i class="fa fa-money"></i>
												<span>Thanh toán</span>
												
											</a>
										</div>
										<?php 
								}else{
									?>
									<div>
										<a href="{{URL::to('/login-checkout')}}">
											<i class="fa fa-money"></i>
											<span>Thanh toán</span>
											
										</a>
									</div>
									<?php
								}
									?>

								<!-- /Wishlist -->
								<div>
									<a href="{{URL::to('/show-cart')}}">
										<i class="fa fa-shopping-cart"></i>
										<span>Giỏ hàng</span>
										
									</a>
								</div>

								

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			</div>
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="{{URL::to("/trang-chu")}}">Trang chủ</a></li>
						<li><a href="#">Sản phẩm</a></li>
						<li><a href="https://rubikonline.vn/tin-tuc">Tin tức</a></li>
						<li><a href="{{URL::to('/show-cart')}}">Giỏ hàng</a></li>
						<li><a href="#">Liên hệ</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				
				<section id="slider"><!--slider-->
					<div class="container">
						<div class="row">
							<div class="col-sm-12">
								<div id="slider-carousel" class="carousel slide" data-ride="carousel">
									<ol class="carousel-indicators">
										<li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
										<li data-target="#slider-carousel" data-slide-to="1"></li>
										<li data-target="#slider-carousel" data-slide-to="2"></li>
									</ol>
									
									<div class="carousel-inner">
										<div class="item active">
											<div class="col-sm-12">
												<a href="{{URL::to('/chi-tiet-san-pham/20')}}">
												<img src="{{asset('public/frontend/images/2.0/Slide1.webp')}}" class="girl img-responsive" alt="{{URL::to('/chi-tiet-san-pham/20')}}" />
												</a>
											</div>
										</div>
										<div class="item">
											<div class="col-sm-12">
												<a href="{{URL::to('/chi-tiet-san-pham/22')}}">
												<img src="{{asset('public/frontend/images/2.0/Slide2.webp')}}" class="girl img-responsive" alt="{{URL::to('/chi-tiet-san-pham/22')}}" />
												</a>
											</div>
										</div>
										
										<div class="item">
											<div class="col-sm-12">
												<a href="{{URL::to('/chi-tiet-san-pham/11')}}">
												<img src="{{asset('public/frontend/images/2.0/Slide3.webp')}}" class="girl img-responsive" alt="{{URL::to('/chi-tiet-san-pham/11')}}" />
												</a>
											</div>
										</div>
										
									</div>
									
									
								</div>
								
							</div>
						</div>
					</div>
				</section><!--/slider-->

				<!-- /row -->
			</div>
			<!-- /container -->
		</div>		
		
<!-- Tren  -->
		
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- ASIDE -->
					<div id="aside" class="col-md-2">
						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Danh mục</h3>
								
							<div class="checkbox-filter">
								@foreach ($category as $key => $cate)
								<div >
									<label >
										<span></span>
										<h4 class="panel-title"><a href="{{URL::to('/danh-muc-san-pham/'.$cate->category_id)}}">{{$cate->category_name}}</a></h4>
										
									</label>
								</div>	
								@endforeach	
							</div>

						</div>
						<!-- /aside Widget -->

						<!-- aside Widget -->
						<div class="aside">
							<h3 class="aside-title">Thương hiệu</h3>
								
							<div class="checkbox-filter">
								@foreach ($brand as $key => $brand)
								<div >
									<label >
										<span></span>
										<h4 class="panel-title"><a href="{{URL::to('/thuong-hieu-san-pham/'.$brand->brand_id)}}">{{$brand->brand_name}}</a></h4>
										
									</label>
								</div>	
								@endforeach	
							</div>

						</div>
						<!-- /aside Widget -->

					</div>
					<!-- /ASIDE -->

					<!-- STORE -->
					<div id="store" class="col-sm-9 padding-right">
						<h3 class="breadcrumb-header"></h3>
						
						@yield('content')
						
					</div>
					<!-- /STORE -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

<!-- SECTION -->
<div class="section">
	<!-- container -->
	<div class="container">
		<!-- row -->
		<div class="row">
			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="{{asset('public/frontend/images/2.0/foot1.JPG')}}" alt="">
					</div>
					<div class="shop-body">
						<h3>QiYi<br>Collection</h3>
						<a href="{{URL::to('/thuong-hieu-san-pham/3')}}" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->

			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="{{asset('public/frontend/images/2.0/foot2.JPG')}}" alt="">
					</div>
					<div class="shop-body">
						<h3>MoYu<br>Collection</h3>
						<a href="{{URL::to('/thuong-hieu-san-pham/2')}}" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->

			<!-- shop -->
			<div class="col-md-4 col-xs-6">
				<div class="shop">
					<div class="shop-img">
						<img src="{{asset('public/frontend/images/2.0/foot3.JPG')}}" alt="">
					</div>
					<div class="shop-body">
						<h3>GAN<br>Collection</h3>
						<a href="{{URL::to('/thuong-hieu-san-pham/1')}}" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
					</div>
				</div>
			</div>
			<!-- /shop -->
		</div>
		<!-- /row -->
	</div>
	<!-- /container -->
</div>
<!-- /SECTION -->



<!-- duoi -->
		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Đăng kí để nhận <strong>Tin tức mới nhất</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="https://www.facebook.com/vku.udn.vn"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="https://twitter.com/home?lang=en"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="https://www.pinterest.com/"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Về chúng tôi</h3>
								<p>CUBIK SHOP - SHOP RUBIK SỐ 1 VIỆT NAM</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>470 Đ. Trần Đại Nghĩa, Khu đô thị, Ngũ Hành Sơn, Đà Nẵng</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>0236 3667 117</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>info@vku.udn.vn</a></li>
								</ul>
							</div>
						</div>

						

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Thông tin</h3>
								<ul class="footer-links">
									<li><a href="#">Liên hệ</a></li>
									<li><a href="#">Chính sách bảo mật</a></li>
									<li><a href="#">Chính sách giao hàng</a></li>
									<li><a href="#">Điều khoảng và điều kiện</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Dịch vụ</h3>
								<ul class="footer-links">
									<li><a href="#">Tài khoản</a></li>
									<li><a href="{{URL::to('/show-cart')}}">Giỏ hàng</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Trạng thái giao hàng</a></li>
									<li><a href="#">Giúp đỡ</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
							</ul>
							
						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="{{asset('public/frontend/js/jquery.min.js')}}"></script>
		<script src="{{asset('public/frontend/js/bootstrap.min.js')}}"></script>
		<script src="{{asset('public/frontend/js/slick.min.js')}}"></script>
		<script src="{{asset('public/frontend/js/nouislider.min.js')}}"></script>
		<script src="{{asset('public/frontend/js/jquery.zoom.min.js')}}"></script>
		<script src="{{asset('public/frontend/js/main.js')}}"></script>
		

	</body>
</html>
