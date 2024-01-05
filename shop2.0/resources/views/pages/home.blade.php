@extends('layout')
@section('content')

<!-- store products -->
<div class="row">
	<h2 class="title text-center">Sản phẩm mới</h2>
	<!-- product -->
	@foreach($all_product as $key => $product)
	<div class="col-md-4 col-xs-6">
		<div class="product">
			<div class="product-img">
				<img src="{{URL::to('public/uploads/product/'.$product->product_image)}}" alt="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}">
				
			</div>
			<div class="product-body">	
				<h3 class="product-name"><a href="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}">{{$product->product_name}}</a></h3>
				<h4 class="product-price">{{number_format($product->product_price).' '.'VNĐ'}} </h4>
				<div class="product-rating">
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
					<i class="fa fa-star"></i>
				</div>
				<div class="product-btns">
				</div>
			</div>
			<div class="add-to-cart">
				<button class="add-to-cart-btn"><a href="{{URL::to('/chi-tiet-san-pham/'.$product->product_id)}}" ><i class="fa fa-shopping-cart"></i>Thêm vào giỏ hàng</a></button>
			</div>
		</div>
	</div>
	@endforeach
</div>	


	
@endsection					