@extends('layout')
@section('content')   

<section id="cart_items">
    <div class="container">
        


        <div class="shopper-informations">
            <div class="row">
                
                <div class="col-sm-12 clearfix">
                    <div class="bill-to">
                        <p>Thông tin nhận hàng</p>
                        <div class="form-one">
                            <form action= "{{URL::to('/save-checkout-customer')}}" method="POST">
                                {{ csrf_field() }}
                                <input type="text" name="shipping_email" placeholder="Email">
                                <input type="text" name="shipping_name" placeholder="Họ và tên">
                                <input type="text" name="shipping_address" placeholder="Địa chỉ">
                                <input type="text" name="shipping_phone" placeholder="Phone">
                                <textarea name="shipping_notes" placeholder="Ghi chú cho đơn hàng của bạn" rows="16"></textarea>
                                <input type="submit" value="Tiếp tục" name="send_order" class="btn btn-primary btn-sm">
                            </form>
                        </div>
                    </div>
                </div>				
            </div>
        </div>
       


        
    </div>
</section> <!--/#cart_items-->

@endsection  