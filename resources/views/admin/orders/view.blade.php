@extends('layouts.admin')

@section('title')
    My Orders
@endsection

@section('content')

<div class="container py-5">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header bg-primary">
                    <h4 class="text-white">Order View
                        <a href="{{ url('orders') }}" class="btn btn-warning float-right">Back</a>
                    </h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6 order-details">
                            <h4>Shipping Details</h4>
                            <hr>
                            <label for="">First Name</label>
                            <div class="border p-2 mt-0">{{ $orders->fname }}</div>
                            <label for="">Last Name</label>
                            <div class="border p-2 mt-0">{{ $orders->lname }}</div>
                            <label for="">Email</label>
                            <div class="border p-2 mt-0">{{ $orders->email }}</div>
                            <label for="">Contact No.</label>
                            <div class="border p-2 mt-0">{{ $orders->phone }}</div>
                            <label for="">Shipping Address</label>
                            <div class="border p-2 mt-0">
                                {{ $orders->address1 }},
                                {{ $orders->address2 }},
                                {{ $orders->city }},
                                {{ $orders->state }},
                                {{ $orders->country }},
                            </div>
                            <label for="">Zip Code</label>
                            <div class="border p-2 mt-0">{{ $orders->pincode }}</div>
                        </div>
                        <div class="col-md-6">
                            <h4>Order Details</h4>
                            <hr>

                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th>Name</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                        <th>Image</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($orders->orderitems as $item)
                                        <tr>
                                            <td>{{ $item->products->name }}</td>
                                            <td>{{ $item->qty }}</td>
                                            <td>{{ $item->price }}</td>
                                            <td>
                                                <img src="{{ asset('assets/uploads/products/'.$item->products->image) }}" width="50px" alt="product image">
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                            <h4 class="px-2">Grand Total: <span class="float-end">{{ $orders->total_price }}</span></h4>
                            <label for="" class="px-2">Payment Mode: <span class="float-end">{{ $orders->payment_mode }}</span></label>
                            <br>
                            <label for="" class="px-2">Order Date: <span class="float-end">{{ $orders->updated_at }}</span></label>

                            
                            <div class="mt-5 px-2">
                                <label for="">Order Status</label>
                                <form action="{{ url('update-order/'.$orders->id) }}" method="POST">
                                    @csrf
                                    @method('PUT')
                                    <select class="form-select" name="order_status">
                                        <option {{ $orders->status == '0'? 'selected': '' }} value="0">Pending</option>
                                        <option {{ $orders->status == '1'? 'selected': '' }} value="1">Completed</option>
                                    </select>
                                    <button type="submit" class="btn btn-primary float-end mt-3">Update</button>
                            </form>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

        </div>
    </div>
</div>

@endsection