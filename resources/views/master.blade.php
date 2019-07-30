<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>@yield('title')</title>

    @include('includes.styles')
</head>
<body class="hold-transition sidebar-mini">
<div class="wrapper" id="app">

    <!-- Navbar -->
    @include('includes.navbar')
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    @include('includes.sidebar')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
       @yield('content')
    </div>
    <!-- /.content-wrapper -->

    <!-- Main Footer -->
    @include('includes.footer')
</div>
<!-- ./wrapper -->

<!-- REQUIRED SCRIPTS -->

@include('includes.scripts')
</body>
</html>
