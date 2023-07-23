<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Order;
use App\Models\OrderItem;
use App\Models\Product;
use App\Models\User;
use Illuminate\Http\Request;

class FrontendController extends Controller
{
    public function index()
    {
        $category = Category::count();
        $products = Product::count();
        $orders = Order::count();
        $users = User::count();
        $amount = Order::sum('total_price');
        $pending = Order::where('status','0')->count();
        $complete = Order::where('status','1')->count();

    
        return view('admin.index', compact('category','products','orders','users','amount','pending','complete'));
    }
}
