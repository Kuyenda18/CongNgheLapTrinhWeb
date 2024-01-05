@extends('layout')
@section('content')

<!-- store products -->
<div class="row">
    @foreach($category_name as $key => $name)
	<h2 class="title text-center">{{$name->category_name}}</h2>
    @endforeach
	<!-- product -->
    @foreach($category_by_id as $key => $product)
    <a href="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}">
	<div class="col-md-4 col-xs-6">
		<div class="product">
			<div class="product-img">
				<img src="{{URL::to('public/uploads/product/'.$product->product_image)}}" alt="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}">
				
			</div>
			<div class="product-body">
				
				<h3 class="product-name"><a href="#">{{$product->product_name}}</a></h3>
				<h4 class="product-price">{{number_format($product->product_price).' '.'VNĐ'}} </h4>
				<div class="product-rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</div>
				<div class="product-btns">  
					<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
				</div>
			</div>
			<div class="add-to-cart">
				<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> add to cart</button>
			</div>
		</div>
	</div>
	@endforeach
</div>	

{{-- <div class="features_items"><!--features_items-->

                    @foreach($category_name as $key => $name)
					<h2 class="title text-center">{{$name->category_name}}</h2>
                    @endforeach

						@foreach($category_by_id as $key => $product)
                        <a href="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}">
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">

                                    
                                    <div class="single-products">
                                            <div class="productinfo text-center">
                                                <img src="{{URL::to('public/uploads/product/'.$product->product_image)}}" alt="" />
                                                <h2>{{number_format($product->product_price).' '.'VNĐ'}}</h2>
                                                <p>{{$product->product_name}}</p>
                                                <a href="#" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a>
                                            </div>
                                    </div>
                                    <div class="choose">
                                        <ul class="nav nav-pills nav-justified">
                                            <li><a href="#"><i class="fa fa-plus-square"></i>Yêu thích</a></li>
                                            <li><a href="#"><i class="fa fa-plus-square"></i>So sánh</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </a>
					@endforeach
					</div><!--features_items-->
			<!--/recommended_items--> --}}
@endsection					