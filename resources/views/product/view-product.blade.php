@extends('layouts.userpage')

@section('title', 'Products')

@section('content')

    <section>
        <link rel="stylesheet" href="{{ asset('exzoom/jquery.exzoom.css') }}">
        <div class="container pb-5 pt-4">

            <!-- ----------- breadcrumb ------- -->
            <div class="">
                <nav aria-label="breadcrumb">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="{{ url('/') }}">Home</a></li>
                        <li class="breadcrumb-item"><a
                                href="{{ url('category/' . $product->category->slug) }}">{{ $product->category->name }}</a>
                        </li>
                        <li class="breadcrumb-item active" aria-current="page">{{ $product->name }}</li>
                    </ol>
                </nav>
            </div>


            {{-- <div class="row product-data">
        <div class="col-lg-6 col-md-12">
            <div class="border-end border-2">
                <img src="/image/product/{{$product->image}}" alt="" class="img-fluid">
            </div>
        </div>
        <div class="col-lg-6 col-md-12">
            <div>
                <div>
                @if ($product->trending == '1')
                <label for="" class="float-end badge bg-danger">Trending</label>
                @endif
                   
                </div>
                <h3 class="mt-3">{{$product->desc}}</h3>
                <h1 class="mt-3">₹ {{$product->selling_price}}  <span class="text-secondary fs-4 ms-3"><s>₹ {{$product->original_price}}</s></span> <span class="text-success ms-2 fs-5">(11% off)</span></h1>
                <div>
                  
                   <span>
                    @php
                        $rate_num = number_format($rating_value);
                    @endphp
                    @for ($i = 1; $i <= $rate_num; $i++)
                    <i class="fa-solid fa-star star-checked"></i>
                    @endfor
                    @for ($j = $rate_num + 1; $j <= 5; $j++)
                    <i class="fa-solid fa-star"></i>
                    @endfor
                 
                   
             
             </span> 
             <span class="ms-2">
             @if ($rating_value > 0)
             ({{$rating->count()}} Ratings)
             @else
                No Ratings
             @endif
                </span>
                </div>

                <div class="mt-3">
                    @if ($product->quantity > 0)
                    <label for="" class="badge bg-success">In stock</label>
                
                @else
                    <label for="" class="badge bg-danger">Out of stock</label>
                
                @endif
                </div>

        

                <div class="row mt-3">
                    <div class="col-lg-3">
                        <input type="hidden" class="product_id" value="{{$product['id']}}">
                        <label for="">Quantity</label>
                        <div class="input-group">
                            <span class="input-group-text decrement-btn" style="cursor: pointer">-</span>
                            <input type="text" class="form-control qty-value" name="quantity" value="1">
                            <span class="input-group-text increment-btn" style="cursor: pointer">+</span>
                          </div>
                    </div>

                    <div class="col-lg-5 offset-lg-3">
                        <button type="button" class="btn btn-sm btn-info mt-3" data-bs-toggle="modal" data-bs-target="#exampleModal">
                            Rate this product
                          </button>
                    </div>
                </div>
                <div class="mt-2">
                    <label for="" class="text-danger ms-2">@if ($product->quantity < 5 && $product->quantity >= 1)
                        Hurry up! only  {{$product->quantity}} items left...
                        @endif </label>
                </div>
               
                <div class="mt-5">
                    <div class="row">

                            @if ($product->quantity > 0)
                               <div class="col-lg-6">
                                <button class="btn btn-warning w-100 addToCart" ><i class="bi bi-cart-fill me-2"></i>Add to Cart</button>
                               </div>
                            
                            @endif

                        <div class="col-lg-6">
                          <a class="btn btn-primary w-100 addtoWishlist"><i class="bi bi-balloon-heart-fill me-2"></i>Add to WishList</a>
                      </div>
                    </div>
                </div>
                <hr>
                <div class="mt-4">
                    <div>
                        <h4 class="fw-bold">Review this product</h4>
                        <p class="text-muted">Share your thoughts with other customers</p>

                        <div>
                            <a href="{{url('add-review/'.$product->slug.'/user-review')}}"  class="btn btn-outline-secondary">Write a product review</a>
                        </div>
                    </div>
                </div>
                <hr>
                {{-- -------------- all comments ------------------ --}}
            {{-- <div class="comments">
                    
                    @foreach ($review as $all)
                  
                    <div> 
                        <img src="{{asset('image/avatar.jpg')}}" alt="" width="35">
                        <span class="text-muted"> {{$all->users->name}} </span>
                        @if ($all->user_id == Auth::id())
                        <a href="{{url('edit-review/'.$all->product->slug.'/user-review')}}" class="btn btn-danger badge badge-danger float-end">edit</a>
                        @endif
                      
                    </div>
                    
                    <div>
                        @php
                            $rating = App\Models\Rating::where('user_id',$all->users->id)->where('product_id',$all->product_id)->first();
                        @endphp
                        @if ($rating)
                        @php $user_rated = $rating->star_rate;   @endphp
                        <div class="star-rating">

                            @for ($i = 1; $i <= $user_rated; $i++)
                                <i class='fa fa-star star-checked'></i>
                            @endfor
                            @for ($j = $user_rated + 1; $j <= 5; $j++)
                            <i class='fa fa-star'></i>
                            @endfor
                        
                       
                     
                            
                        @endif
                        <small class="ms-2 text-muted">posted on <span>{{$all->created_at->format('d F Y')}}</span></small>
                    </div>
                        <p class="mt-3">{{$all->user_review}}</p>
                    </div>
                    <div>
                        <button class="border bg-white shadow-sm px-3 rounded">Helpful <i class="fa-regular fa-thumbs-up"></i></button>
                    </div>

                    <hr>
                    @endforeach
                  
               
                    
                </div>
            </div>
        </div>
    </div>  --}}


            <!-- ---------------------------------------------
                            ^^^^^^^^^^^^^ ~~ single product list page ~~  ^^^^^^^^^^^^^^
                                  --------------------------------------------- -->

            <div class="p-0">
                @php

                    $img = explode(',', $product->image);
                    $freq_img = explode(',', $freq_boug->image);
                    //  echo '<pre>';
                    //  print_r($img);
                @endphp

                <!-- --------- single product ----------- -->
                <div class="container product-data p-0">
                    <div class="single-product">
                        <div class="row ">
                            <div class="col-lg-6 ">
                                <div>
                                    <div class="">
                                        <div class="big-img">
                                            <img src="{{ asset('image/product/' . $img[0]) }}" alt="shirtinc-products"
                                                class="img-fluid" loading="lazy">
                                        </div>
                                        <div class="small-images">
                                            {{-- ---- all img getting in database ------- --}}
                                            @foreach ($img as $val)
                                                <div class="small-img">
                                                    <img src="{{ asset('image/product/' . $val) }}" alt="shirtinc-products"
                                                        onclick="showImg(this.src)" loading="lazy">
                                                </div>
                                            @endforeach


                                        </div>
                                    </div>
                                    <style>
                                        .exzoom .exzoom_img_box {
                                            background: #fff;
                                        }

                                        .exzoom_img_ul_outer {
                                            border: none !important;
                                        }

                                        .exzoom_img_box,
                                        .exzoom_zoom_outer,
                                        .exzoom_img_ul_outer {
                                            width: 100% !important;
                                            height: 500px !important;
                                            text-align: center;
                                        }

                                        .exzoom_img_ul_outer ul li {
                                            height: 500px;
                                        }

                                        .exzoom_img_ul_outer ul li img {
                                            width: 100%;
                                            height: 100%;
                                            object-fit: contain;
                                        }
                                    </style>
                                    {{-- ---- images --- --}}
                                    <div class="exzoom d-none d-none" id="exzoom">
                                        <!-- Images -->
                                        <div class="exzoom_img_box">
                                            <ul class='exzoom_img_ul'>
                                                @foreach ($img as $val)
                                                    <li><img src="{{ asset('image/product/' . $val) }}"
                                                            alt="shirtinc-products" loading="lazy" /></li>
                                                @endforeach



                                            </ul>
                                        </div>
                                        <!-- <a href="https://www.jqueryscript.net/tags.php?/Thumbnail/">Thumbnail</a> Nav-->
                                        <div class="exzoom_nav"></div>
                                        <!-- Nav Buttons -->
                                        <p class="exzoom_btn">
                                            <a href="javascript:void(0);" class="exzoom_prev_btn">
                                                < </a>
                                                    <a href="javascript:void(0);" class="exzoom_next_btn"> > </a>
                                        </p>
                                    </div>


                                    <div class="mt-5 product-policy">
                                        <div class="row">
                                            <div class="col">
                                                <div class="text-center">
                                                    <img src="../../image/products/icons/x1.webp" width="50"
                                                        alt="shirtinc-icons" loading="lazy">
                                                    <h6 class="text-sm-bold">Cash on Delivery</h6>
                                                    <p>Available</p>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="text-center">
                                                    <img src="../../image/products/icons/x2.webp" width="50"
                                                        alt="shirtinc-icons" loading="lazy">
                                                    <h6 class="text-sm-bold">7 Days</h6>
                                                    <p>Exchange & Return</p>
                                                </div>
                                            </div>
                                            <div class="col">
                                                <div class="text-center">
                                                    <img src="../../image/products/icons/x3.webp" width="50"
                                                        alt="shirtinc-icons" loading="lazy">
                                                    <h6 class="text-sm-bold">Premium Quality</h6>
                                                    <p>Available</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </div>

                            </div>

                            {{-- ---------- right side view -------------- --}}
                            @php
                                // ------ discount percentage ------
                                $dis = $product->original_price - $product->selling_price;
                                $dis_count = round(($dis / $product->original_price) * 100);
                            @endphp
                            <div class="col-lg-6 col-sin-2">
                                <div class="single-product-detail mt-3 mt-lg-0">
                                    <div>
                                        <h2 class="spd-title">{{ $product->name }}</h2>
                                    </div>
                                    <div>
                                        <h6 class="spd-price">₹<span>{{ $product->selling_price }}</span><span
                                                class="spd-selling">MRP
                                                ₹<s>{{ $product->original_price }}</s></span><span class="spd-discount">
                                                ({{ $dis_count }}% off)</span></h6>
                                    </div>

                                    {{-- ------- star rating ------------- --}}
                                    <div class="star-rate-product">

                                        <span>
                                            @php
                                                $rate_num = number_format($rating_value);
                                            @endphp
                                            @for ($i = 1; $i <= $rate_num; $i++)
                                                <i class="fa-solid fa-star star-checked"></i>
                                            @endfor
                                            @for ($j = $rate_num + 1; $j <= 5; $j++)
                                                <i class="fa-solid fa-star"></i>
                                            @endfor



                                        </span>
                                        <span class="ms-2">
                                            @if ($rating_value > 0)
                                                ({{ $rating->count() }} Ratings)
                                            @else
                                                <small class="text-mute">No Ratings</small>
                                            @endif
                                        </span>
                                    </div>

                                    <div>
                                        @php
                                            $colors = $product->colors ? json_decode($product->colors) : '';
                                            $size = json_decode($product->size_list);
                                            $men_size = $product->couple_men_size ? json_decode($product->couple_men_size) : '';
                                            $women_size = $product->couple_women_size ? json_decode($product->couple_women_size) : '';
                                            // print_r($men_size);
                                            // print_r(gettype($men_size))
                                        @endphp
                                        <label for="" class="spd-label-title">size*</label>
                                        @if ($men_size && $women_size)
                                            {{-- -------- couples size -------- --}}
                                            <div class="row">
                                                <div class="col-lg-6 col-md-6 col-8">
                                                    <select class="form-select men_size" required>
                                                        <option selected value="">Select Men's size</option>
                                                        {{-- ---- size get in database --- --}}
                                                        @foreach ($men_size as $val)
                                                            <option value="{{ $val }}">{{ $val }}
                                                            </option>
                                                        @endforeach

                                                    </select>
                                                </div>
                                                <div class="col-lg-6 col-md-6 col-8 mt-3 mt-md-0">
                                                    <select class="form-select women_size" required>
                                                        <option selected value="">Select Women's size</option>
                                                        {{-- ---- size get in database --- --}}
                                                        @foreach ($women_size as $val)
                                                            <option value="{{ $val }}">{{ $val }}
                                                            </option>
                                                        @endforeach

                                                    </select>
                                                </div>
                                            </div>
                                        @else
                                            {{-- -------- common size -------- --}}
                                            <div class="row">
                                                <div class="col-lg-6 col-md-4 col-sm-6">

                                                    <select class="form-select com_size" required>
                                                        <option selected value="">Choose your size</option>
                                                        {{-- ---- size get in database --- --}}
                                                        @foreach ($size as $val)
                                                            <option value="{{ $val }}">{{ $val }}
                                                            </option>
                                                        @endforeach

                                                    </select>

                                                </div>
                                            </div>
                                        @endif
                                        <div class="error text-danger"></div>

                                    </div>

                                    {{-- --- ----- colors --------- --}}
                                    
                                    <div>
                                        <label for="" class="spd-label-title">colors*</label>
                                        <input type="hidden" class="product_id" value="{{ $product['id'] }}">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-4 col-sm-6">

                                                <select class="form-select" id="colors" required>
                                                    <option selected value="">Choose your colors</option>
                                                    {{-- ---- size get in database --- --}}
                                                    @foreach ($colors as $key => $val)
                                                        <option value="{{ $key }}">{{ $val }}
                                                        </option>
                                                    @endforeach

                                                </select>

                                            </div>
                                        </div>
                                    </div>

                                    <script>
                                        $getImg = {!! json_encode($img) !!};
                                        console.log($getImg);
                                        $color = document.getElementById('colors');
                                        $color.addEventListener('change', function() {
                                            $getColor = $color.value;
                                            $('.big-img img').attr('src','../../image/product/'+$getImg[$getColor])
                                        })
                                    </script>

                                    {{-- --------- quantity ------------ --}}
                                    <div>
                                        <label for="" class="spd-label-title">quantity*</label>
                                        <input type="hidden" class="product_id" value="{{ $product['id'] }}">
                                        <div class="row">
                                            <div class="col-xl-3 col-lg-4 col-md-3 col-sm-4">
                                                <div class="input-group">
                                                    <span class="input-group-text decrement-btn"
                                                        style="cursor: pointer">-</span>
                                                    <input type="text" class="form-control qty-value text-center"
                                                        name="quantity" value="1">
                                                    <span class="input-group-text increment-btn"
                                                        style="cursor: pointer">+</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    {{-- ------- out of stock --------- --}}

                                    @if ($product->quantity < 1)
                                        <div class="mt-3">
                                            <label for="" class="badge bg-danger">Out of stock</label>
                                        </div>
                                    @endif


                                    @if ($product->quantity <= 5 && $product->quantity >= 1)
                                        <div class="mt-2">
                                            <label for="" class="text-danger ms-2">Hurry up ! only
                                                {{ $product->quantity }} items left... </label>
                                        </div>
                                    @endif

                                    <div class="my-5">
                                        <div class="row">
                                            <div class="col-lg-6 col-md-6">
                                                <div class="mb-3"><button class="btn-prime w-100 addToCart"
                                                        role="button"><i class="fa-solid fa-bag-shopping me-2"></i>Add to
                                                        basket</button>
                                                </div>
                                            </div>
                                            <div class="col-lg-6 col-md-6">
                                                <div class="mb-3"><button class="btn-glow w-100 addtoWishlist"><i
                                                            class="fa-solid fa-heart me-2"></i>Add to favourite</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    {{-- -- deliver date ---- --}}
                                    <div class="mb-4">
                                        <label for="" class="spd-label-title">delivery*</label>
                                        <div class="listing-delivery-date">
                                            <div class="row px-3">
                                                <div class="col p-0">
                                                    {{--   -- delivery time ---- --}}
                                                    @php
                                                        $cur_date = date('d M');
                                                        $disp_date = date('d M', strtotime('+2 days'));
                                                        $deli_date1 = date('d', strtotime('+5 days'));
                                                        $deli_date2 = date('d M', strtotime('+7 days'));
                                                        $est_date1 = date('l,M d', strtotime('+5 days'));
                                                        $est_date2 = date('l,M d', strtotime('+7 days'));
                                                        // echo $cur_date;
                                                    @endphp
                                                    <div>
                                                        <div class="timeline-date">
                                                            <div><span class="icon-circle">
                                                                    {{-- <i class="fa-solid fa-bag-shopping"></i> --}}
                                                                    <img width="70" height="70"
                                                                        src="https://img.icons8.com/clouds/100/shopping-basket-success.png"
                                                                        alt="shopping-basket-success" loading="lazy" />
                                                                </span>
                                                            </div>
                                                            <div class="flex-grow-1 ps-1">
                                                                <div class="border-line"></div>
                                                            </div>
                                                        </div>
                                                        <div class="timeline-details">
                                                            <h4 class="text-sm-bold">{{ $cur_date }}</h4>
                                                            <p>Ordered</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col p-0">
                                                    <div>
                                                        <div class="timeline-date">
                                                            <div class="flex-grow-1 ">
                                                                <div class="border-line"></div>
                                                            </div>
                                                            <div class="px-2"><span class="icon-circle ">
                                                                    {{-- <i
                                                                    class="fa-solid fa-truck-fast"></i> --}}
                                                                    <img width="70" height="70"
                                                                        src="https://img.icons8.com/clouds/100/truck.png"
                                                                        alt="truck" loading="lazy" />
                                                                </span>
                                                            </div>
                                                            <div class="flex-grow-1 ">
                                                                <div class="border-line"></div>
                                                            </div>
                                                        </div>
                                                        <div class="timeline-details text-center">
                                                            <h4 class="text-sm-bold">{{ $disp_date }}</h4>
                                                            <p>dispatches</p>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col p-0">
                                                    <div>
                                                        <div class="timeline-date">
                                                            <div class="flex-grow-1 pe-1">
                                                                <div class="border-line"></div>
                                                            </div>
                                                            <div><span class="icon-circle">
                                                                    {{-- <i class="fa-solid fa-gift"></i> --}}
                                                                    <img width="70" height="70"
                                                                        src="https://img.icons8.com/clouds/100/gift.png"
                                                                        alt="gift" loading="lazy" />
                                                                </span></div>
                                                        </div>
                                                        <div class="timeline-details text-end">
                                                            <h4 class="text-sm-bold">
                                                                {{ $deli_date1 . ' - ' . $deli_date2 }}
                                                            </h4>
                                                            <p>Delivered!</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div>
                                                <p class="text-sm">Estimated arrival on :
                                                    <span class="text-sm-bold" style="color: #212529">
                                                        {{ $est_date1 . ' - ' . $est_date2 }} </span>
                                                </p>
                                            </div>
                                        </div>
                                    </div>
                                    <div>
                                        <label for="" class="spd-label-title">details*</label>
                                        <!-- --- accordion -------------- -->
                                        <div class="accordion" id="accordionPanelsStayOpenExample">
                                            <div class="accordion-item">
                                                <h1 class="accordion-header">
                                                    <button class="accordion-button" type="button"
                                                        data-bs-toggle="collapse"
                                                        data-bs-target="#panelsStayOpen-collapseOne" aria-expanded="true"
                                                        aria-controls="panelsStayOpen-collapseOne">
                                                        Know your size
                                                    </button>
                                                </h1>
                                                <div id="panelsStayOpen-collapseOne" class="accordion-collapse collapse ">
                                                    <div class="accordion-body">
                                                        <div>
                                                            <img src="../../image/products/sizechart.webp"
                                                                class="img-fluid w-100" alt="sizechart" loading="lazy">
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="accordion-item">
                                                <h1 class="accordion-header">
                                                    <button class="accordion-button collapsed" type="button"
                                                        data-bs-toggle="collapse"
                                                        data-bs-target="#panelsStayOpen-collapseTwo" aria-expanded="false"
                                                        aria-controls="panelsStayOpen-collapseTwo">
                                                        Product Details
                                                    </button>
                                                </h1>
                                                <div id="panelsStayOpen-collapseTwo" class="accordion-collapse collapse">
                                                    <div class="accordion-body">
                                                        <div>
                                                            <div><b>Material & Care: <br></b> Premium Heavy Gauge Fabric<br>
                                                                100% Cotton&nbsp;<br>Machine Wash<br><span><br><b>Country of
                                                                        Origin:</b></span>&nbsp;India (and
                                                                proud)<br><span><br><b>Manufactured &amp; Sold
                                                                        By:</b></span><br>Shirt-Inc Pvt. Ltd.<br>224, Tantia
                                                                Jogani Industrial Premises<br>J.R. Boricha Marg<br>Lower
                                                                Parel
                                                                (E)<br>Chennai - 11<br><a target="_blank"
                                                                    rel="noopener noreferrer"><u>connect@shirt-inc.com</u></a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="accordion-item">
                                                <h1 class="accordion-header">
                                                    <button class="accordion-button collapsed" type="button"
                                                        data-bs-toggle="collapse"
                                                        data-bs-target="#panelsStayOpen-collapseThree"
                                                        aria-expanded="false"
                                                        aria-controls="panelsStayOpen-collapseThree">
                                                        Product Description
                                                    </button>
                                                </h1>
                                                <div id="panelsStayOpen-collapseThree"
                                                    class="accordion-collapse collapse">
                                                    <div class="accordion-body">
                                                        Lorem ipsum dolor sit amet consectetur adipisicing elit.
                                                        Perspiciatis,
                                                        neque? Neque voluptas illum sequi ducimus fugiat optio repudiandae
                                                        non
                                                        sed.
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="mt-5">
                                            <nav>
                                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                    <button class="nav-link active" id="nav-home-tab"
                                                        data-bs-toggle="tab" data-bs-target="#nav-home" type="button"
                                                        role="tab" aria-controls="nav-home"
                                                        aria-selected="true">Returns</button>
                                                    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-profile" type="button" role="tab"
                                                        aria-controls="nav-profile" aria-selected="false">our
                                                        promise</button>

                                                    <button class="nav-link" id="nav-profile-tab" data-bs-toggle="tab"
                                                        data-bs-target="#nav-profile2" type="button" role="tab"
                                                        aria-controls="nav-profile" aria-selected="false">Customer
                                                        Rating</button>

                                                </div>
                                            </nav>
                                            <div class="tab-content mt-3 px-2" id="nav-tabContent">
                                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel"
                                                    aria-labelledby="nav-home-tab" tabindex="0">
                                                    Raise a return or exchange through the customerdiv on your profile
                                                    or go to my order page. <br>

                                                    Items are picked up within 2-3 working days and refund initiates within
                                                    5-7
                                                    working days after the item has been picked up. <br>

                                                    In case of an exchange - the replacement item will be shipped to your
                                                    address at no additional cost.
                                                </div>
                                                <div class="tab-pane fade" id="nav-profile" role="tabpanel"
                                                    aria-labelledby="nav-profile-tab" tabindex="0">
                                                    We assure the authenticity and quality of our products
                                                </div>

                                                <div class="tab-pane fade" id="nav-profile2" role="tabpanel"
                                                    aria-labelledby="nav-profile-tab" tabindex="0">
                                                    <div class="">
                                                        <button type="button" class="btn-slide mt-3"
                                                            data-bs-toggle="modal" data-bs-target="#exampleModal">
                                                            Rate this product
                                                        </button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div> <!-- end of single product   -->

                        <!-- -----------  frequently - bought ----------- -->
                        @if (!($product->name == $freq_boug->name))
                            <div>

                                <h4 class="sec-title center">
                                    <span>Frequently Bought Together</span>
                                </h4>
                                <div class="freq-product px-3 mb-4">
                                    {{-- -------- first product ----------- --}}
                                    <input type="hidden" class="first_pro_id" value="{{ $product['id'] }}">

                                    {{-- -------- freq product ----------- --}}
                                    <input type="hidden" class="freq_pro_id" value="{{ $freq_boug['id'] }}">

                                    <div class="row ">
                                        <div class="col-lg-3 col-md-5">
                                            <div class="fq-image">
                                                <img src="{{ asset('image/product/' . $img[0]) }}" alt="popular-product"
                                                    class="img-fluid" loading="lazy">
                                            </div>
                                        </div>
                                        <div class="col-lg-1 col-md-2 ">
                                            <div class="d-flex align-items-center h-100 justify-content-center">
                                                <div class="icon-circle  my-4 my-lg-0"><i class="fa-solid fa-plus"></i>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-3 col-md-5">
                                            <div class="fq-image">
                                                <img src="{{ asset('image/product/' . $freq_img[0]) }}"
                                                    alt="popular-product" class="img-fluid" loading="lazy">
                                            </div>
                                        </div>
                                        <div class="col-lg-4 col-md-12 d-flex align-items-center justify-content-center">
                                            <div class="mt-3 mt-lg-0">
                                                <h5 class="text-sm-bold">total price : <span class="fq-selling">₹
                                                        {{ $product->original_price + $freq_boug->original_price }}</span><span
                                                        class="fq-price">₹
                                                        {{ $product->selling_price + $freq_boug->selling_price }}</span>
                                                </h5>
                                                <div class="mt-3 ">
                                                    <button class="btn-glow freq_both_to_cart">add both to cart</button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="fq-details mt-4 px-3">
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" role="switch" checked
                                                disabled>
                                            <label><span class="fq-this text-sm-bold">This item
                                                    :</span><span class="fq-title"> {{ $product->name }} --</span>
                                                <span class="fq-selling">₹{{ $product->original_price }}</span><span
                                                    class="fq-price">₹{{ $product->selling_price }}</span></label>
                                        </div>
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" role="switch" checked
                                                disabled>
                                            <label><span class="fq-this text-sm-bold">new arrived
                                                    :</span><span class="fq-title"><a
                                                        href="{{ url('category/' . $freq_boug->category->slug . '/' . $freq_boug->slug) }}">{{ $freq_boug->name }}
                                                        --</a></span>
                                                <span class="fq-selling">₹ {{ $freq_boug->original_price }}</span><span
                                                    class="fq-price">₹ {{ $freq_boug->selling_price }}</span></label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        @endif


                    </div>



                    <div class="related-product-section">

                        {{-- ----------- related products ----------- --}}
                        @if (count($related_product) > 0)
                            <div class="similar-product">
                                <div class="rel-pro">

                                    <div class="row">
                                        <h4 class="sec-title center mt-3">
                                            <span>Related Products</span>
                                        </h4>
                                        <div class="owl-carousel owl-theme">
                                            @foreach ($related_product as $item)
                                                @php
                                                    $popular_img = explode(',', $item->image);
                                                    // ------ discount percentage ------
                                                    $dis = $item->original_price - $item->selling_price;
                                                    $dis_count = round(($dis / $item->original_price) * 100);
                                                @endphp
                                                <div class="item product-data">
                                                    <input type="hidden" class="product_id"
                                                        value="{{ $item['id'] }}">
                                                    <input type="hidden" class="qty-value" value="1">
                                                    <div class="rp-details text-center">
                                                        <div class="rp-img">
                                                            <img src="{{ asset('image/product/' . $popular_img[0]) }}"
                                                                alt="similar-products" class="img-fluid" loading="lazy">
                                                        </div>
                                                        <div class="rp-content">
                                                            <div class="rp-cat"><a
                                                                    href="{{ url('category/' . $item->category->slug) }}">{{ $item->category->name }}</a>
                                                            </div>
                                                            <h6 class="rp-title"><a
                                                                    href="{{ url('category/' . $item->category->slug . '/' . $item->slug) }}">
                                                                    {{ $item->name }}</a></h6>
                                                            <div class="rp-price">₹{{ $item->selling_price }} <span
                                                                    class="rp-selling">₹{{ $item->original_price }}</span><span
                                                                    class="rp-discount">({{ $dis_count }}% off)</span>
                                                            </div>
                                                        </div>
                                                        <div class="mt-3"><a class="btn-float addToCart">Add to cart</a>
                                                        </div>

                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>


                                    </div>
                                </div>
                            </div>
                        @endif



                        {{-- --------------- popular products ------------------ --}}
                        @if (count($popular_product) > 0)
                            <div class="similar-product">
                                <div class="rel-pro">

                                    <div class="row">
                                        <h4 class="sec-title center mt-3">
                                            <span>You may also like</span>
                                        </h4>
                                        <div class="owl-carousel owl-theme">
                                            @foreach ($popular_product as $item)
                                                @php
                                                    $popular_img = explode(',', $item->image);
                                                    // ------ discount percentage ------
                                                    $dis = $item->original_price - $item->selling_price;
                                                    $dis_count = round(($dis / $item->original_price) * 100);
                                                @endphp
                                                <div class="item product-data">
                                                    <input type="hidden" class="product_id"
                                                        value="{{ $item['id'] }}">
                                                    <input type="hidden" class="qty-value" value="1">
                                                    <div class="rp-details text-center">
                                                        <div class="rp-img">
                                                            <img src="{{ asset('image/product/' . $popular_img[0]) }}"
                                                                alt="similar-products" class="img-fluid" loading="lazy">
                                                        </div>
                                                        <div class="rp-content">
                                                            <div class="rp-cat"><a
                                                                    href="{{ url('category/' . $item->category->slug) }}">{{ $item->category->name }}</a>
                                                            </div>
                                                            <h6 class="rp-title"><a
                                                                    href="{{ url('category/' . $item->category->slug . '/' . $item->slug) }}">
                                                                    {{ $item->name }}</a></h6>
                                                            <div class="rp-price">₹{{ $item->selling_price }} <span
                                                                    class="rp-selling">₹{{ $item->original_price }}</span><span
                                                                    class="rp-discount">({{ $dis_count }}% off)</span>
                                                            </div>
                                                        </div>
                                                        <div class="mt-3"><a class="btn-float addToCart">Add to cart</a>
                                                        </div>

                                                    </div>
                                                </div>
                                            @endforeach
                                        </div>


                                    </div>
                                </div>
                            </div>
                        @endif


                    </div>
                </div>
            </div>
    </section>

@endsection


<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form action="{{ url('/add-rating') }}" method="post">
                @csrf
                <input type="hidden" name="product_id" value="{{ $product->id }}">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalLabel">Rate {{ $product->name }}</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    {{-- ------------------ star rating --------------- --}}

                    <div class="rating-css">
                        <div class="star-icon">

                            @if ($user_rate)

                                @for ($i = 1; $i <= $user_rate->star_rate; $i++)
                                    <input type="radio" value="{{ $i }}" name="product_rating" checked
                                        id="rating{{ $i }}">
                                    <label for="rating{{ $i }}" class="fa fa-star"></label>
                                @endfor
                                @for ($j = $user_rate->star_rate + 1; $j <= 5; $j++)
                                    <input type="radio" value="{{ $j }}" name="product_rating"
                                        id="rating{{ $j }}">
                                    <label for="rating{{ $j }}" class="fa fa-star"></label>
                                @endfor
                            @else
                                <input type="radio" value="1" name="product_rating" checked id="rating1">
                                <label for="rating1" class="fa fa-star"></label>
                                <input type="radio" value="2" name="product_rating" id="rating2">
                                <label for="rating2" class="fa fa-star"></label>
                                <input type="radio" value="3" name="product_rating" id="rating3">
                                <label for="rating3" class="fa fa-star"></label>
                                <input type="radio" value="4" name="product_rating" id="rating4">
                                <label for="rating4" class="fa fa-star"></label>
                                <input type="radio" value="5" name="product_rating" id="rating5">
                                <label for="rating5" class="fa fa-star"></label>

                            @endif

                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn-blue">Submit</button>
                </div>
            </form>
        </div>
    </div>
</div>


@section('scripts')
    <script src="{{ asset('exzoom/jquery.exzoom.js') }}"></script>

    <script>
        $(function() {

            $("#exzoom").exzoom({

                // thumbnail nav options
                "navWidth": 70,
                "navHeight": 70,
                "navItemNum": 5,
                "navItemMargin": 7,
                "navBorder": 1,

                // autoplay
                "autoPlay": false,

                // autoplay interval in milliseconds
                "autoPlayTimeout": 3000

            });

        });
        // -----------small img hover change -----------------

        let bigImg = document.querySelector('.big-img img');

        function showImg(pic) {
            // console.log(pic);
            bigImg.src = pic
        }
    </script>

@endsection
