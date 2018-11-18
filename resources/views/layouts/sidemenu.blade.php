<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link href="{{ asset('public/css/app.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/toastr.css') }}" rel="stylesheet">
    <link href="{{ asset('public/css/custom.css') }}" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" rel="stylesheet">

    <!-- this is for js file  -->
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
    <div id="app">
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">

                    <!-- Collapsed Hamburger -->
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#app-navbar-collapse" aria-expanded="false">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <!-- Branding Image -->
                    <a class="navbar-brand" href="{{ url('/') }}">
                        {{ config('app.name', 'Laravel') }}
                    </a>
                </div>

                <div class="collapse navbar-collapse" id="app-navbar-collapse">
                    <!-- Left Side Of Navbar -->
                    <ul class="nav navbar-nav">
                        &nbsp;
                    </ul>

                    <!-- Right Side Of Navbar -->
                    <ul class="nav navbar-nav navbar-right">
                        <!-- Authentication Links -->
                        @guest
                            <li class="dfd"><a href="{{ route('login') }}">Login</a></li>
                            <li><a href="{{ route('register') }}">Register</a></li>
                            <li><a href="{{url('/subscriberlist')}}">Frontend</a></li>
                        @else
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false" aria-haspopup="true" v-pre>
                                    {{ Auth::user()->name }} <span class="caret"></span>
                                </a>

                                <ul class="dropdown-menu">
                                    <li>
                                        <a href="{{ route('logout') }}"
                                            onclick="event.preventDefault();
                                                     document.getElementById('logout-form').submit();">
                                            Logout
                                        </a>

                                        <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                            {{ csrf_field() }}
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        @endguest
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-3">
                    <div class="nav-side-menu">
                        <div class="brand">Brand Logo</div>
                        <i class="fa fa-bars fa-2x toggle-btn" data-toggle="collapse" data-target="#menu-content"></i>
                      
                            <div class="menu-list">
                      
                                <ul id="menu-content" class="menu-content collapse out">
                                    <li>
                                      <a href="{{ url('/home') }}">
                                      <i class="fa fa-dashboard fa-lg"></i> Dashboard
                                      </a>
                                    </li>
                                    
                                     <!-- this is for product -->
                                    <li data-toggle="collapse" data-target="#service" class="collapsed">
                                      <a href="#"><i class="fa fa-product-hunt" aria-hidden="true"></i>player <span class="arrow"></span></a>
                                    </li>  
                                    <ul class="sub-menu collapse" id="service">
                                      <li><a href="{{url('/admin/playerlist')}}">All player</a></li>
                                      <li><a href="{{url('/admin/categorylist')}}">Catagories</a></li>
                                      <li><a href="{{url('/')}}">Attributes</a></li>
                                    </ul>

                                    <li data-toggle="collapse" data-target="#new" class="collapsed">
                                      <a href="#"><i class="fa fa-car fa-lg"></i> MiddleWare <span class="arrow"></span></a>
                                    </li>
                                    <ul class="sub-menu collapse" id="new">
                                      <li><a href="{{url('/admin/MiddleWare')}}">MiddleWare Check</a></li>
<!--                                      <li><a href="{{url('/admin/comments')}}">Comments</a></li>-->
                              
                                    </ul>

                                    <li  data-toggle="collapse" data-target="#products" class="collapsed active">
                                      <a href="#"><i class="fa fa-gift fa-lg"></i> UI Elements <span class="arrow"></span></a>
                                    </li>
                                    <ul class="sub-menu collapse" id="products">
                                        <li class="active"><a href="#">CSS3 Animation</a></li>
                                        <li><a href="#">General</a></li>
                                        <li><a href="#">Buttons</a></li>
                                        <li><a href="#">Tabs & Accordions</a></li>
                                        <li><a href="#">Typography</a></li>
                                        <li><a href="#">FontAwesome</a></li>
                                        <li><a href="#">Slider</a></li>
                                        <li><a href="#">Panels</a></li>
                                        <li><a href="#">Widgets</a></li>
                                        <li><a href="#">Bootstrap Model</a></li>
                                    </ul>

                                     <li>
                                      <a href="#">
                                      <i class="fa fa-user fa-lg"></i> Profile
                                      </a>
                                      </li>

                                     <li>
                                      <a href="#">
                                      <i class="fa fa-users fa-lg"></i> Users
                                      </a>
                                    </li>
                                    <li>
                                      <a href="{{url('/sub')}}">
                                      <i class="fa fa-users fa-lg"></i> relation
                                      </a>
                                    </li>
                                </ul>
                         </div>
                    </div>
                </div>
                <div class="col-md-9">
                    

                        @yield('content')

                   
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts -->
    <script src="{{ asset('public/js/app.js') }}"></script>
    <script src="{{ asset('public/js/toastr.min.js') }}"></script>
     @yield('js')
</body>
</html>
