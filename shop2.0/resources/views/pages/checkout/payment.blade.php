@extends('layout')
@section('content')   

<div class="section">
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row">
            <!-- Order Details -->
            <div class="col-md-5 order-details">
                <div class="section-title text-center">
                    <h3 class="title">Xem lại giỏ hàng</h3>
                </div>
                <?php
                $content = Cart::content();
                 ?>
                <div class="order-summary">
                    <div class="order-col">
                        <div><strong>SẢN PHẨM</strong></div>
                        <div><strong>GIÁ TIỀN</strong></div>
                    </div>

                    @foreach ($content as $v_content)
                    <div class="order-products">
                        <div class="order-col">
                            <div>{{$v_content->qty}} x {{$v_content->name}}</div>
                            <div>{{number_format($v_content->price).' '.'VNĐ'}}</div>
                        </div>
                    </div>
                    @endforeach


                    <div class="order-col">
                        <div>Thuế</div>
                        <div><strong>{{number_format(Cart::tax()).' '.'VNĐ'}}</strong></div>
                    </div>
                    <div class="order-col">
                        <div>Shiping</div>
                        <div><strong>Miễn phí</strong></div>
                    </div>
                    <div class="order-col">
                        <div><strong>Tổng tiền</strong></div>
                        <div>
                            <strong class="order-total">
                                <?php
                                    $subtotal = $v_content->price * $v_content->qty;
                                    echo number_format($subtotal).' '.'VNĐ';

                                ?>
                            </strong>
                            </div>
                    </div>
                    
                </div>
               
                <h4 style="margin:40px 0;font-size: 20px;">Chọn hình thức thanh toán</h4>
        <form method="POST" action="{{URL::to('/order-place')}}" >
            {{ csrf_field() }}
        <div class="payment-options">
                <span>
                    <label><input name="payment_option" value="1" type="checkbox">Thanh toán bằng thẻ ATM</label>
                </span>
                <span>
                    <label><input name="payment_option" value="2" type="checkbox">Thanh toán bằng thẻ ghi nợ</label>
                </span>
                <span>
                    <label><input name="payment_option" value="3" type="checkbox">Thanh toán khi nhận hàng</label>
                </span>
                <input type="submit" value="Đặt hàng" name="send_order_place" class="primary-btn order-submit">
            
    </div>
    
    <!-- /container -->
</div>

@endsection  
