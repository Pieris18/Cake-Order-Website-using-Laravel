@extends('layouts.front')

@section('title')
    Welcome to Emmy Cakes
@endsection

@section('content')
@include('layouts.inc.slider')

@include('layouts.mid.about')

<br><br>

    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Featured Products</h2>
                <div class="owl-carousel featured-carousel owl-theme">
                        @foreach ($featured_products as $prod)
                        <div class="item">
                                <div class="card">
                                    <img src="{{ asset('assets/uploads/products/'.$prod->image) }}" alt="Product image" width="150" height="400">
                                    <div class="card-body">
                                        <h5>{{ $prod->name }}</h5>
                                        <span class="float-start">{{ $prod->selling_price }}</span>
                                        <span class="float-end"><s>{{ $prod->original_price }}</s></span>
                                    </div>
                                </div>
                            </div>
                        @endforeach
                </div>
            </div>
        </div>
    </div>


    <div class="py-5">
        <div class="container">
            <div class="row">
                <h2>Tranding Categories</h2>
                <div class="owl-carousel featured-carousel owl-theme">
                        @foreach ($trending_category as $tcategory)
                        <div class="item">
                            <a href="{{ url('view-category/'.$tcategory->slug) }}">
                                <div class="card">
                                    <img src="{{ asset('assets/uploads/category/'.$tcategory->image) }}" alt="Product image" width="150" height="400">
                                    <div class="card-body">
                                        <h5>{{ $tcategory->name }}</h5>
                                    </div>
                                </div>
                            </a>
                            </div>
                        @endforeach
                </div>

            </div>
        </div>
    </div>
</div>




@include('layouts.mid.testimonitals')

<br><br>

@include('layouts.mid.gallery')



@include('layouts.inc.scrollup')

@include('layouts.inc.frontfooter')


@endsection

@section('scripts')
<script>
    $('.featured-carousel').owlCarousel({
    loop:true,
    margin:10,
    nav:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:3
        },
        1000:{
            items:3
        }
    }
})
</script>
@endsection