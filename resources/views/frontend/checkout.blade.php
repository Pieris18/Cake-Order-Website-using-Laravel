@extends('layouts.front')

@section('title')
    Checkout
@endsection

@section('content')

<div class="py-3 mb-4 shadow-sm bg-warning border-top">
    <div class="container">
        <h6 class="mb-0">
            <a href="{{ url('/') }}">
                Home 
            </a>/
            <a href="{{ url('cart') }}">
                Cart 
            </a> /
            <a href="{{ url('checkout') }}">
                Checkout
            </a>
        </h6>
    </div>
</div> 


    <div class="container mt-3">
        <form action="{{ url('place-order') }}" method="POST">
            {{ csrf_field() }}
            <div class="row">
                <div class="col-md-7">
                    <div class="card">
                        <div class="card-body">
                            <h6>Basic Details</h6>
                            <hr>
                            <div class="row checkout-form">
                                <div class="col-md-6">
                                    <label for="">First Name</label>
                                    <input type="text" class="form-control firstname" value="{{ Auth::user()->fname }}" name="fname" placeholder="Enter First Name">
                                    <span id="fname_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6">
                                    <label for="">Last Name</label>
                                    <input type="text" class="form-control lastname" value="{{ Auth::user()->lname }}" name="lname" placeholder="Enter Last Name">
                                    <span id="lname_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label for="">Email</label>
                                    <input type="text" class="form-control email" value="{{ Auth::user()->email }}" name="email" placeholder="Enter Email">
                                    <span id="email_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label for="">Phone Number</label>
                                    <input type="text" class="form-control phone" value="{{ Auth::user()->phone }}" name="phone" placeholder="Enter Phone Number">
                                    <span id="phone_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label for="">Address 1</label>
                                    <input type="text" class="form-control address1" value="{{ Auth::user()->address1 }}" name="address1" placeholder="Enter Address 1">
                                    <span id="address1_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label for="">Address 2</label>
                                    <input type="text" class="form-control address2" value="{{ Auth::user()->address2 }}" name="address2" placeholder="Enter Address 2">
                                    <span id="address2_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label for="">City</label>
                                    <input type="text" class="form-control city" value="{{ Auth::user()->city }}" name="city" placeholder="Enter City">
                                    <span id="city_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label for="">State</label>
                                    <input type="text" class="form-control state" value="{{ Auth::user()->state }}" name="state" placeholder="Enter State">
                                    <span id="state_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label for="">Country</label>
                                    <input type="text" class="form-control country" value="{{ Auth::user()->country }}" name="country" placeholder="Enter Country">
                                    <span id="country_error" class="text-danger"></span>
                                </div>

                                <div class="col-md-6 mt-3">
                                    <label for="">Pin Code</label>
                                    <input type="text" class="form-control pincode" value="{{ Auth::user()->pincode }}" name="pincode" placeholder="Enter Pin Code">
                                    <span id="pincode_error" class="text-danger"></span>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="card">
                        <div class="card-body">
                            <h6>Other Details</h6>
                            <hr>
                            @if($cartitems->count() > 0)
                            <table class="table table-striped table-bordered">
                                <thead>
                                    <tr>
                                        <th>Image</th>
                                        <th>Name</th>
                                        <th>Qty</th>
                                        <th>Price</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @php $total = 0; @endphp
                                    @foreach ($cartitems as $item)
                                    <tr>
                                        @php $total += ($item->products->selling_price * $item->prod_qty) @endphp
                                        <td><img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" height="50px" width="50px" alt="Image here"></td>
                                        <td>{{ $item->products->name }}</td>
                                        <td>{{ $item->prod_qty }}</td>
                                        <td>{{ $item->products->selling_price }}</td>
                                    </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <h6 class="px-2">Grand Total <span class="float-end">Rs {{ $total }}</span></h6>
                            <hr>
                            <input type="hidden" name="payment_mode" value="COD">
                            <input type="hidden" name="payment_id" value="COD">
                            <button type="submit" class="btn btn-success w-100">Place Order | COD</button>
                            <button type="button" class="btn btn-primary w-100 mt-3 razorpay_btn">Pay with Razorpay</button>
                            <div id="paypal-button-container" class="mt-3"></div>
                            @else
                            <div class="card-body text-center">
                                <h2>No Products in Cart</h2>
                                <a href="{{ url('category') }}" class="btn btn-outline-primary float-end">Continue Sohopping</a>
                            </div>
                            @endif
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </div>
@endsection

@section('scripts')
    <script src="https://www.paypal.com/sdk/js?client-id=AUO_nvWvWX7BW_xElUVm4yWnV9OKIYw0ippEU0YYBGzROqj3Tli2vzgMNQOacbV15D2jjxo9R55X-sYp"></script>
    <script src="https://checkout.razorpay.com/v1/checkout.js"></script>

    <script>
        paypal.Buttons({
            createOrder: function(data, actions) {
                // This is funtion sets up the details of the translation, including the amount and line item details.
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: '{{ $total }}'
                        }
                    }]
                });
            },
            onApprove: function(data, actions) {
                //this function captures the funds from the translation.
                return actions.order.capture().then(function(details) {
                    //this function shows a transaction success message to your buyer.
                    // alert('Transaction completed by ' + details.payer.name.given_name);

                    var firstname = $('.firstname').val();
                    var lastname = $('.lastname').val();
                    var email = $('.email').val();
                    var phone = $('.phone').val();
                    var address1 = $('.address1').val();
                    var address2 = $('.address2').val();
                    var city = $('.city').val();
                    var state = $('.state').val();
                    var country = $('.country').val();
                    var pincode = $('.pincode').val();

                    

                    $.ajax({
                        method: "POST",
                        url: "/place-order",
                        data: {
                            'fname':firstname,
                            'lname':lastname,
                            'email':email,
                            'phone':phone,
                            'address1':address1,
                            'address2':address2,
                            'city':city,
                            'state':state,
                            'country':country,
                            'pincode':pincode,
                            'payment_mode':"Paid by Paypal",
                            'payment_id':details.id,
                        },
                            success: function (response) {
                                swal(response.status)
                                .then((value) => {                                   
                                        window.location.href = "/my-orders";
                                    });
                        }
                    });
                });
            }
        }).render('#paypal-button-container');
        //this function display smart payment buttons on your web page
    </script>
  
@endsection