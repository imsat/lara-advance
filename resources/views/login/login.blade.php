<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Lara-Advance | Log in</title>
    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <!-- icheck bootstrap -->
    <link rel="stylesheet" href="{{asset('/')}}admin-lte-3/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="{{asset('/')}}admin-lte-3/dist/css/adminlte.min.css">
    <!-- Google Font: Source Sans Pro -->
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
</head>
<body class="hold-transition login-page">
<div class="login-box">
    <div class="login-logo">
        <a href="{{route('home')}}"><b>Lara Advance</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="card">
        <div class="card-body login-card-body">
            <p class="login-box-msg">Sign in to start your session</p>

            {{Form::open(['route'=>'login', 'method'=> 'POST'])}}
               <div class="form-group row mb-3">
                   <div class="input-group ">
                       <input type="text" value="{{old('email')}}" name="email" class="form-control" placeholder="Email">
                       <div class="input-group-append input-group-text ">
                           <span class="fas fa-envelope"></span>
                       </div>
                   </div>
                   <span class="text-danger ">{{$errors->has('email') ? $errors->first('email') : ''}}</span>
               </div>
                <div class="form-group row mb-3">
                    <div class="input-group">
                        <input type="password" name="password" class="form-control" placeholder="Password">
                        <div class="input-group-append input-group-text">
                            <span class="fas fa-lock"></span>
                        </div>
                    </div>
                    <span class="text-danger ">{{$errors->has('password') ? $errors->first('password') : ''}}</span>
                </div>

                <div class="row">
                    <div class="col-8">
                        <div class="icheck-primary">
                            <input type="checkbox" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>
                            <label for="remember">
                                Remember Me
                            </label>
                        </div>
                    </div>
                    <!-- /.col -->
                    <div class="col-4">
                        <button type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                    </div>
                    <!-- /.col -->
                </div>
            {{Form::close()}}
            <!-- /.social-auth-links -->

            {{--<p class="mb-1">--}}
                {{--<a href="#">I forgot my password</a>--}}
            {{--</p> --}}
            <hr>
            <p class="mb-1">
                <span>
                    <b>Email:</b> admin@admin.com
                </span>
            </p>
            <p class="mb-1">
                <span>
                    <b>password:</b> 123456
                </span>
            </p>
        </div>
        <!-- /.login-card-body -->
    </div>
</div>
<!-- /.login-box -->

<!-- jQuery -->
<script src="{{asset('/')}}admin-lte-3/plugins/jquery/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="{{asset('/')}}admin-lte-3/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>

</body>
</html>
