@extends('layouts.admin')

@section('content')
    <div class="card">
        <div class="card-body">
            <h2><b>Welcome To Dashboard</b></h2>
        </div>
    </div>
   
        <div class="row">
            
            <div class="col-xl-3 col-md-6">
                <div class="card bg-warning text-white mb-4">
                    <div class="card-body">
                        <b>Total Amount</b> 
                        <h2><b>Rs. &nbsp;&nbsp;{{ $amount }}</b> </h2>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card bg-danger text-white mb-4">
                    <div class="card-body">
                        <b>Pending Orders</b> 
                        <h2><b>{{ $pending }}</b></h2>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card bg-success text-white mb-4">
                    <div class="card-body">
                        <b>Completed Orders</b> 
                        <h2><b>{{ $complete }}</b></h2>
                    </div>
                </div>
            </div>

        </div>


        <div class="row">

            <div class="col-xl-3 col-md-6">
                <div class="card bg-primary text-white mb-4">
                    <div class="card-body">
                        <b>Total Orders</b> 
                        <h2><b>{{ $orders }}</b></h2>
                    </div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a href="{{ url('orders') }}" class="small text-white stretched-link ">
                            <b><u>View Details</u>
                            <div class="medium text-white"><i class="fa fa-angle-right"></i></b>
                        </a>
                    </div>
                    </div>
                </div>
            </div>


            <div class="col-xl-3 col-md-6">
                <div class="card bg-info text-white mb-4">
                    <div class="card-body">
                        <b>Total Users</b> 
                        <h2><b>{{ $users }}</b></h2>
                    </div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a href="{{ url('users') }}" class="small text-white stretched-link ">
                            <b><u>View Details</u>
                            <div class="small text-white"><i class="fa fa-angle-right"></i></b>
                        </a>
                    </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card bg-secondary text-white mb-4">
                    <div class="card-body">
                        <b>Total Category</b>
                        <h2><b>{{ $category }}</b></h2>
                    </div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a href="{{ url('categories') }}" class="small text-white stretched-link ">
                            <b><u>View Details</u>
                            <div class="small text-white"><i class="fa fa-angle-right"></i></b>
                        </a>
                    </div>
                    </div>
                </div>
            </div>

            <div class="col-xl-3 col-md-6">
                <div class="card bg-dark text-white mb-4">
                    <div class="card-body">
                        <b>Total Products</b>
                        <h2><b>{{ $products }}</b></h2>
                    </div>
                    <div class="card-footer d-flex align-items-center justify-content-between">
                        <a href="{{ url('products') }}" class="small text-white stretched-link ">
                            <b><u>View Details</u>
                            <div class="small text-white"><i class="fa fa-angle-right"></i></b>
                        </a>
                    </div>
                    </div>
                </div>
            </div>


        </div>
    </div>



    @include('layouts.inc.adminfooter')


    
@endsection




