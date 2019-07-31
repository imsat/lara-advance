@extends('master')
@section('title')
    View User
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>View User</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('users.index')}}">Users</a></li>
                        <li class="breadcrumb-item active">View Users</li>
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
                <div class="card">
                    <div class="card-header">
                        <h3 class="card-title float-left">View Users
                        </h3>
                        @can('user-access')
                            <a href="#" class="btn mx-2 btn-primary btn-sm float-right">Access User</a>
                        @endcan
                        @can('user-create')
                            <a href="#" class="btn mx-2 btn-secondary btn-sm float-right">Create User</a>
                        @endcan
                        @can('user-show')
                            <a href="#" class="btn mx-2 btn-warning btn-sm float-right">Show User</a>
                        @endcan
                        @can('user-update')
                            <a href="#" class="btn mx-2 btn-info btn-sm float-right">Update User</a>
                        @endcan
                        @can('user-delete')
                            <a href="#" class="btn mx-2 btn-danger btn-sm float-right">Delete User</a>
                        @endcan
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table table-borderless text-center">
                            <tr>
                                <th>Full Name: </th>
                                <td>{{$user->fullName}}</td>
                            </tr>
                            <tr>
                                <th>User Avatar: </th>
                                <td><img src="{{asset('storage/'.$user->avatar)}}" class="img-thumbnail" alt="" ></td>
                            </tr>
                        </table>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
    </section>
@endsection
@section('script')
    <script>
        $(function () {
            $("#example1").DataTable();
        });
    </script>
@endsection
