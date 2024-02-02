<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>
    {{-- --- links -- --}}
    {{-- @include('links.css') --}}
    <!-- Favi-icon -->
    <link rel="shortcut icon" href="{{ asset('image/shirtinc-logo.png') }}" type="image/x-icon">


    @stack('styles')
</head>

<body>

    <!-- ---------------------------------------------
        ^^^^^^^^^^^^^ ~~ header   ~~  ^^^^^^^^^^^^^^
         --------------------------------------------- -->
    @include('navbar')


    <!-- ---------------------------------------------
        ^^^^^^^^^^^^^ ~~ content   ~~  ^^^^^^^^^^^^^^
         --------------------------------------------- -->

    @yield('content')




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
