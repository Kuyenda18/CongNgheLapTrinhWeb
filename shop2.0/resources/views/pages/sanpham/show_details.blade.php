@extends('layout')
@section('content') 
@foreach($product_details as $key => $value)
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Product main img -->
					<div class="col-md-5 col-md-push-1">
						<div id="product-main-img">
							<div class="product-preview">
								<img src="{{URL::to('/public/uploads/product/'.$value->product_image)}}" alt="" />
							</div>
						</div>
					</div>
					<!-- /Product main img -->

					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<div id="product-imgs">
							
						</div>
					</div>
					<!-- /Product thumb imgs -->

					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">{{$value->product_name}}</h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link" href="#">10 đánh giá | Thêm đánh giá của bạn</a>
							</div>
							<div>
								<h3 class="product-price">{{number_format($value->product_price).'VNĐ'}} </h3>
								<span class="product-available">Còn hàng</span>
							</div>
							

							<form action="{{URL::to('/save-cart')}}" method="POST">
								{{ csrf_field() }}
										<div class="add-to-cart">
											<div class="qty-label">
												Số lượng:
												<div class="input-number">
													<input name="qty" type="number" min="1" value="1">
													<input name="productid_hidden" type="hidden"  value="{{$value->product_id}}" />
													<span class="qty-up">+</span>
													<span class="qty-down">-</span>
												</div>
											</div>
											<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Mua</button>
										</div>
							</form>			

						</span>
						<p><b>Mã ID:</b> {{$value->product_id}}</p>
						<p><b>Tình trạng:</b> Còn hàng</p>
						<p><b>Trạng thái:</b> Mới 100%</p>
						<p><b>Thương hiệu: </b>{{$value->brand_name}}</p>
						<p><b>Danh mục: </b>{{$value->category_name}}</p>
						

							
							</ul>

							<ul class="product-links">
								<li>Share:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
							</ul>

						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">Mô tả</a></li>
								<li><a data-toggle="tab" href="#tab2">Chi tiết</a></li>
							
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<p>{!!$value->product_desc!!}</p>
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<p>{!!$value->product_content!!}</p>
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
		@endforeach   
		<!-- Section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-12">
						<div class="section-title text-center">
							<h3 class="title">Sản phẩm liên quan</h3>
						</div>
					</div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						@foreach($relate as $key => $lienquan)
						<div class="product">
							<div class="product-img">
								<img src="{{URL::to('public/uploads/product/'.$lienquan->product_image)}}" alt="">
								<div class="product-label">
								
								</div>
							</div>
							<div class="product-body">
								<p class="product-category">Sản phẩm liên quan</p>
								<h3 class="product-name"><a href="#">{{$lienquan->product_name}}</a></h3>
								<img src="{{('public/frontend/images/shop01.png')}}" alt="">
								<h4 class="product-price">{{number_format($lienquan->product_price).' '.'VNĐ'}}</h4>
								<div class="product-rating">
								</div>
								<div class="product-btns">								
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</button>
							</div>
						</div>
						@endforeach  
					</div>
					<!-- /product -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /Section -->
		@endsection      
