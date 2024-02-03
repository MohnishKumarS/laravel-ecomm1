{{-- ------------- top promo status ---------- --}}
@if ($appsetting->promo_status !== null)
    <div class="top-marq">
        <marquee behavior="alternate">{{ $appsetting->promo_status }}</marquee>
    </div>
@endif
{{-- ------------- navbar ------------------- --}}

<header id="header_nav">

    <div class="container-fluid sticky-top p-0 navbar-container header">

        <nav class="navbar navbar-expand-lg container ">
            <div class="container-fluid">
                <div class="d-flex align-items-center justify-content-center me-3">
                    <a class="navbar-brand" href="{{ url('/') }}">
                        <img src="{{ asset('image/shirtinc-logo.png') }}" alt="shirtInc-logo" class="logo"
                            loading="lazy">
                    </a>
                    <h1 class="nav-head"></h1>
                </div>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                    aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between" id="navbarNav">
                    <ul class="navbar-nav m-auto">

                        <li class="nav-item mt-3 mt-lg-0">
                            <form action="{{ url('search-product') }}" method="post"
                                class=" nav-form d-flex justify-content-start align-items-center me-1">
                                @csrf
                                <div class="search ">

                                    <input type="text" class="form-control" placeholder="search here"
                                        id="search-product-list" name="search_item">
                                    <button class="navsearch-btn" type="submit" name="" value="search"> <i
                                            class="fa fa-search"></i>
                                    </button>
                                </div>
                            </form>
                        </li>


                    </ul>

                    <ul class="navbar-nav d-lg-navbar-nav ">


                        <li class="nav-item">
                            <a class="tooltip-link nav-link icon-nav-link" href="{{ url('/wishlist') }}">
                                <div class="nav-wishlist">
                                    <i class="fa-solid fa-heart"></i>
                                    {{-- <sup class=" cart-count wishlist-counts"></sup> --}}
                                </div>
                                <span class="tooltiptext"> wishlist</span>
                            </a>
                        </li>

                        <li class="nav-item me-1">
                            <a class=" tooltip-link nav-link icon-nav-link" href="{{ url('/my-cart') }}">
                                <div>
                                    <i class="fa-solid fa-cart-shopping"></i>
                                    <sup class="cart-count cart-counts"></sup>
                                </div>
                                <span class="tooltiptext"> cart</span>
                            </a>
                        </li>

                        @guest
                            <li class="nav-item">
                                <a href="{{ url('acc/signin') }}" class="btn-glow p-2"><i
                                        class="fa-solid fa-paper-plane me-1"></i> Login</a>
                            </li>
                        @endguest

                        @auth

                            <li class="nav-item" style="cursor: pointer">
                                <div class="dropdown ">
                                    <div class="nav-link " data-bs-toggle="dropdown" aria-expanded="false">
                                        <div>
                                            <i class="fa-solid fa-circle-user"></i> Account
                                        </div>

                                    </div>
                                    <ul class="dropdown-menu dropdown-menu-lg-end">

                                        <li><a class="dropdown-item" href="{{ url('/profile') }}">
                                                <i class="fa-solid fa-user me-1"></i> Profile</a></li>

                                        <li>
                                        <li><a class="dropdown-item" href="{{ url('/my-order') }}">
                                                <i class="fa-solid fa-bag-shopping me-1"></i> Orders</a></li>

                                        <li>
                                        <li><a class="dropdown-item" href="{{ url('/my-order') }}">
                                                <i class="fa-solid fa-gift me-1"></i> Offers Zone</a></li>

                                        <li>
                                        <li><a class="dropdown-item" href="{{ url('/my-order') }}">
                                                <i class="fa-solid fa-circle-question me-1"></i> FAQs</a></li>

                                        <li>
                                            <a href="{{ route('logout') }}" class="btn btn-danger dropdown-item"
                                                onclick="event.preventDefault();
                                             document.getElementById('logout-form').submit();">
                                                <i class="fa-solid fa-arrow-right-to-bracket me-1"></i>
                                                <span class="d-sm-inline d-none">Logout</span>
                                            </a>
                                        </li>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                            class="d-none">
                                            @csrf
                                        </form>


                                    </ul>
                                </div>
                            </li>
                        @endauth
                    </ul>

                    {{-- ------- mobile - view -------  --}}

                    <ul class="navbar-nav d-md-navbar-nav ">

                        <li class="nav-item">
                            <a class="nav-link " href="{{ url('/collections') }}">
                                Collections <i class="fa-solid fa-gift"></i>

                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="{{ url('/new-arrival') }}">
                                New Arrival
                                <img src="{{ asset('image/gif/gif4.gif') }}" alt="new-collection" width="30"
                                    loading="lazy">
                                {{-- <i class="fa-regular fa-newspaper"></i> --}}
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link " href="{{ url('/wishlist') }}">
                                wishlist <i class="fa-solid fa-heart"></i>
                                <sup class=" cart-count wishlist-counts"></sup>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link nav-wishlist" href="{{ url('/my-cart') }}">
                                cart <i class="fa-solid fa-cart-shopping"></i>
                                <sup class=" cart-count cart-counts"></sup>
                            </a>
                        </li>
                        <li class="nav-item">

                            <div class="dropdown ">
                                <div class="nav-link " data-bs-toggle="dropdown" style="cursor: pointer">
                                    <div>
                                        Account <i class="fa-solid fa-user"></i>
                                    </div>
                                </div>
                                <ul class="dropdown-menu dropdown-menu-lg-end">
                                    @guest
                                        <li><a class="dropdown-item" href="{{ url('acc/signin') }}"><i
                                                    class="fa-regular fa-face-smile me-1"></i> Login</a></li>
                                        <li><a class="dropdown-item" href="{{ url('acc/signup') }}"><i
                                                    class="fa-regular fa-registered me-1"></i> Register</a></li>
                                    @endguest
                                    @auth
                                        <li><a class="dropdown-item" href="{{ url('my-order') }}">
                                                <i class="fa-solid fa-bag-shopping me-1"></i> Orders</a></li>
                                        <li>
                                            <a href="{{ route('logout') }}" class=" dropdown-item"
                                                onclick="event.preventDefault();
                                         document.getElementById('logout-form').submit();">
                                                <i class="fa-solid fa-arrow-right-to-bracket me-1"></i>
                                                <span class="d-sm-inline d-none">Logout</span>
                                            </a>
                                        </li>
                                        <form id="logout-form" action="{{ route('logout') }}" method="POST"
                                        class="d-none">
                                        @csrf
                                    </form>
                                    @endauth
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
    </div>


</header>

@php
    use App\Models\Category;
    $category = Category::where('status', 1)
        ->latest()
        ->first();
@endphp
{{-- ------- navbar bottom --------------  --}}
<div class="nav-bottom d-none d-lg-block">
    <div class="container">
        <ul class="nav-bottom__ul">
            <li class="menu-item ">
                <a href="{{ url('/') }}">Home</a>
            </li>

            @auth
                @if (Auth::user()->role)
                    <li class="menu-item ">
                        <a href="{{ url('/dashboard') }}">Dashboard</a>
                    </li>
                @endif
            @endauth
            <li class="menu-item {{ Request::is('collections') ? 'active' : '' }}">
                <a href="{{ url('/collections') }}">Collections</a>

            </li>
            <li class="menu-item">
                <a style="cursor:pointer">Category <span class="ms-1"><i
                            class="fa-solid fa-angle-down"></i></span></a>

                <div class="menu-subs menu-mega menu-column-4">
                    <div class="list-item">
                        <h4 class="title">Men's Fashion</h4>
                        <ul>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                        </ul>
                        <h4 class="title">Season's Hottest Looks</h4>
                        <ul>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                        </ul>
                    </div>
                    <div class="list-item">
                        <h4 class="title">Men's Fashion</h4>
                        <ul>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                        </ul>
                        <h4 class="title">T-shirt Treasures</h4>
                        <ul>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                        </ul>
                    </div>
                    <div class="list-item">
                        <h4 class="title"> New Arrival Tees</h4>
                        <ul>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                            <li><a href="#">Product List</a></li>
                        </ul>
                    </div>
                    <div class="list-item">
                        <h4 class="title">Trendy Tees</h4>
                        <img src="{{ asset('image/Badass tshirt-01.png') }}" class="responsive" alt="Shop Product"
                            loading="lazy" />
                    </div>
                </div>
            </li>

            <li class="menu-item {{ Request::is('new-arrival') ? 'active' : '' }}">
                <a href="{{ url('/new-arrival') }}">New Arrival</a>

            </li>

            @if ($category)
                <li class="menu-item {{ Request::is('category/' . $category->slug) ? 'active' : '' }}">
                    <a href="{{ url('category/' . $category->slug) }}">{{ $category->slug }} <span
                            class='align-middle'>
                            <img src="{{ asset('image/gif/gif3.gif') }}" width="18" style="object-fit: contain"
                                alt="new-trendy" loading="lazy">
                        </span></a>

                </li>
            @endif

            <!-- <li class="menu-item">
        <a href="" >Home</a>
        <div class="menu-subs menu-column-1">
            <ul>
                <li><a href="#">Article One</a></li>
                <li><a href="#">Article Two</a></li>
                <li><a href="#">Article Three</a></li>
                <li><a href="#">Article Four</a></li>
            </ul>
        </div>
    </li> -->
        </ul>
    </div>
</div>
