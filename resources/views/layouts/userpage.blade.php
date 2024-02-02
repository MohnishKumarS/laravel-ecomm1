<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>
    {{-- --- links -- --}}
    @include('links.css')
    <!-- Favi-icon -->
    <link rel="shortcut icon" href="{{ asset('image/shirtinc-logo.png') }}" type="image/x-icon">

    <link rel="canonical" href="https://shirt-inc.com/">
    <meta name="robots" content="index, follow, all">
    <meta name="googlebot" content="index, follow">
    <meta name="coverage" content="India">
    <meta name="distribution" content="Global">
    <meta name="audience" content="all">
    <meta name="document-type" content="Public">
    <!-- Primary Meta Tags -->

    <title>Online Shopping for Men & Women Clothing</title>
    <meta name="title" content="Online Shopping for Men & Women Clothing" />
    <meta name="description"
        content="Shop for t-shirts for men and women online at Shirt-Inc the one-stop destination for all official merchandise of superheroes and movies" />

    <!-- Open Graph / Facebook -->

    <meta property="og:type" content="website" />
    <meta property="og:url" content="https://www.shirt-inc.com/" />
    <meta property="og:title" content="Online Shopping for Men & Women Clothing" />
    <meta property="og:description"
        content="Shop for t-shirts for men and women online at Shirt-Inc the one-stop destination for all official merchandise of superheroes and movies" />
    <meta property="og:image" content="https://metatags.io/images/meta-tags.png" />

    <!-- Twitter -->

    <meta property="twitter:card" content="summary_large_image" />
    <meta property="twitter:url" content="https://www.shirt-inc.com/" />
    <meta property="twitter:title" content="Online Shopping for Men & Women Clothing" />
    <meta property="twitter:description"
        content="Shop for t-shirts for men and women online at Shirt-Inc the one-stop destination for all official merchandise of superheroes and movies" />
    <meta property="twitter:image" content="https://metatags.io/images/meta-tags.png" />

    @stack('styles')
</head>

<body>
    <!-- ---------------------------------------------
        ^^^^^^^^^^^^^ ~~ preloading    ~~  ^^^^^^^^^^^^^^
         --------------------------------------------- -->

    {{-- <div class="preloader" id="preloader">
          <div class="loader">
            <span></span>
            <span></span>
            <span></span>
            <span></span>
          </div>
        </div> --}}

    {{-- ---- space top ------ --}}

    <div class="space-top"></div>

    <!-- ---------------------------------------------
        ^^^^^^^^^^^^^ ~~ header   ~~  ^^^^^^^^^^^^^^
         --------------------------------------------- -->
    @include('navbar')


    <!-- ---------------------------------------------
        ^^^^^^^^^^^^^ ~~ content   ~~  ^^^^^^^^^^^^^^
         --------------------------------------------- -->

    @yield('content')



    <style>
        .chat a img {
            width: 70px;
            position: fixed;
            bottom: 15px;
            left: 10px;
            z-index: 1;

        }
    </style>

    {{-- ----------- live chat ------------- --}}
    <div class="chat">
        <a href="https://wa.me/+917418667102?text=What can I do for you?" target="_blank">
            <img src="{{ asset('image/whatsapp.webp') }}" alt="link">
        </a>
    </div>

    {{-- ---------------  showpopup add ------------ --}}

    <!-- Button trigger modal -->
    <div class="popup">
        <div class="contentBox">
            <div class="close"></div>
            <div class="imgBox">
                <img src="{{ asset('image/offer/gift.png') }}" alt="">
            </div>
            <div class="content">
                <div>
                    <h3>Special offer</h3>
                    <h2>80<sup>%</sup><span>off</span></h2>
                    <p>Avail Best Offers & Discounts from Flipkart on Mobile Phones, Laptops, TVs , Furniture, Books
                        ....</p>
                    <a href="">Get The Deal</a>
                </div>

            </div>
        </div>


    </div>




    <!-- ---------------------------------------------
        ^^^^^^^^^^^^^ ~~ footer   ~~  ^^^^^^^^^^^^^^
         --------------------------------------------- -->

    @include('footer')


    <!-- ---------------------------------------------
        ^^^^^^^^^^^^^ ~~ js include   ~~  ^^^^^^^^^^^^^^
         --------------------------------------------- -->

    @include('links.js')


    @yield('scripts')

</body>

</html>
