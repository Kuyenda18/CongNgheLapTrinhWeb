@extends('layout')
@section('content')   

<section id="form"><!--form-->
    <!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-5">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Đăng nhập</h3>
							</div>
                            <form action="{{URL::to('/login-customer')}}" method="POST">
                                {{ csrf_field() }}
                                <div class="form-group">
                                    <input class="input" type="text" name="email_account" placeholder="Tài khoản">
                                </div>
                                <div class="form-group">
                                    <input class="input" type="password" name="password_account" placeholder="Mật khẩu">
                                </div>
                                <button type="submit" class="btn btn-default">Đăng nhập</button>
                            </form>
							<div class="form-group">
								<div class="input-checkbox">
									<input type="checkbox" id="create-account">
									<label for="create-account">
										<span></span>
										Tạo tài khoảng mới ?
									</label>
									<div class="caption">
										<form action="{{URL::to('/add-customer')}}" method="POST">
                                            {{ csrf_field() }}
                                            <div class="form-group">
                                                <input class="input" type="text" name="customer_name" placeholder="Họ và Tên">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="email" name="customer_email" placeholder="Địa chỉ Email">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="password" name="customer_password" placeholder="Mật khẩu">
                                            </div>
                                            <div class="form-group">
                                                <input class="input" type="text" name="customer_phone" placeholder="Số điện thoại">
                                            </div>
                                            <a href="#" class="primary-btn order-submit">Đăng kí</a>
                                        </form>    
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->
    {{-- <div class="container">
        <div class="row">
            <div class="col-sm-4 col-sm-offset-1">
                <div class="login-form"><!--login form-->
                    <h2>Đăng nhập tài khoản</h2>
                    <form action="{{URL::to('/login-customer')}}" method="POST">
                        {{ csrf_field() }}
                        <input type="text" name="email_account" placeholder="Tài khoản" />
                        <input type="password" name="password_account" placeholder="Mật khẩu" />
                        <span>
                            <input type="checkbox" class="checkbox"> 
                            Ghi nhớ đăng nhập
                        </span>
                        <button type="submit" class="btn btn-default">Đăng nhập</button>
                    </form>
                </div><!--/login form-->
            </div>
            <div class="col-sm-1">
                <h2 class="or">Hoặc</h2>
            </div>
            <div class="col-sm-4">
                <div class="signup-form"><!--sign up form-->
                    <h2>Đăng kí tài khoản mới!</h2>
                    <form action="{{URL::to('/add-customer')}}" method="POST">
                        {{ csrf_field() }}
                        <input type="text" name="customer_name" placeholder="Họ và tên"/>
                        <input type="email" name="customer_email" placeholder="Địa chỉ Email"/>
                        <input type="password" name="customer_password" placeholder="Mật khẩu"/>
                        <input type="text" name="customer_phone" placeholder="Phone"/>
                        <button type="submit" class="btn btn-default">Đăng kí</button>
                    </form>
                </div><!--/sign up form-->
            </div>
        </div>
    </div> --}}

</section><!--/form-->

@endsection  