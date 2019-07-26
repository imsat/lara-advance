@extends('master')
@section('title')
    User Create
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>User Create</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('users.index')}}">Users</a></li>
                        <li class="breadcrumb-item active">Create New User</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                <!-- /.card -->
                <div class="card card-info">
                    <div class="card-header">
                        <h3 class="card-title">Create New User</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        {{Form::open(['route' => 'users.store', 'method' => 'POST'])}}
                            <!-- text input -->
                            <div class="form-group">
                                <label>First Name</label>
                                <input type="text" name="first_name" value="{{old('first_name')}}" class="form-control" placeholder="Enter First Name">
                                <span class="text-danger ">{{$errors->has('first_name') ? $errors->first('first_name') : ''}}</span>
                            </div>
                            <div class="form-group">
                                <label>Last Name</label>
                                <input type="text" name="last_name" value="{{old('last_name')}}" class="form-control" placeholder="Enter Last Name">
                                <span class="text-danger ">{{$errors->has('last_name') ? $errors->first('last_name') : ''}}</span>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" name="email" value="{{old('email')}}" class="form-control" placeholder="Enter Email">
                                <span class="text-danger ">{{$errors->has('email') ? $errors->first('email') : ''}}</span>
                            </div>
                            <div class="form-group">
                                <label>Password</label>
                                <input type="password" name="password" class="form-control" placeholder="Enter Password">
                                <span class="text-danger ">{{$errors->has('password') ? $errors->first('password') : ''}}</span>
                            </div>
                            <div class="form-group">
                                <label>Confirm Password</label>
                                <input type="password" name="password_confirmation" class="form-control" placeholder="Confirm Password">
                            </div>
                            {{--<div class="form-group">--}}
                                {{--<select class="form-control" name="role_id">--}}
                                    {{--@foreach($roles as $id=>$role)--}}
                                    {{--<option value="{{$id}}">{{$role}}</option>--}}
                                    {{--@endforeach--}}
                                {{--</select>--}}
                            {{--</div>--}}
                            <div class="form-group">
                                <label class="control-label">Roles </label>
                                <div class="form-group">
                                    @foreach($roles as $id=>$role)
                                        <div class="form-check form-check-inline mr-5">
                                            <input class="form-check-input" name="role_id[]"  value="{{$id}}" type="checkbox" id="{{$id}}">
                                            <label class="form-check-label" for="{{$id}}">{{$role}}</label>
                                        </div>
                                    @endforeach
                                    <p class="text-danger">{{$errors->has('role_id') ? $errors->first('role_id') : ''}}</p>
                                </div>
                            </div>

                            <div class="card-footer">
                                <button type="submit" class="btn btn-info">Create</button>
                                <a href="{{route('users.index')}}" class="btn btn-default float-right">Cancel</a>
                            </div>

                        {{Form::close()}}
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
    </section>
@endsection
