@extends('master')
@section('title')
    Users
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Users</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active">Users</li>
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
                        <h3 class="card-title float-left">All Users
                        </h3>
                        <a href="{{route('users.create')}}" class="btn btn-primary float-right btn-sm"> <i class="fa fa-plus"></i> Add New</a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped text-center">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Roles</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php($i = 1)
                            @forelse($users as $user)
                                <tr>
                                    <td>{{$i++}}</td>
                                    {{--<td>{{$user->fullName}}</td>--}}
                                    <td>{{$user->full_name}}</td>
                                    <td>{{$user->email}}</td>
                                    <td>
                                        @php($j=0)
                                        @foreach($user->roles as $key => $role)
                                            {{$j++ ? ', ': ''}} {{$role->name}}
                                        @endforeach
                                    </td>
                                    <td>{{$user->created_at}}</td>
                                    <td>
                                        @can('user-show')
                                        <a href="{{route('users.show', $user->id)}}" class="btn btn-sm btn-info"><i class="fa fa-search-plus"></i></a>
                                        @endcan
                                        @can('user-update')
                                        <a href="{{route('users.edit', $user->id)}}" class="btn btn-sm btn-success"><i class="fa fa-edit"></i></a>
                                        @endcan
                                        @can('user-delete')
                                        {{Form::open(['route'=>['users.destroy', $user->id], 'method'=>'DELETE', 'class' => 'd-inline'])}}
                                        <button type="submit" onclick="return confirm('Are you sure to delete!!!')" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></button>
                                        {{Form::close()}}
                                        @endcan
                                    </td>
                                </tr>
                            @empty
                                <p class="text-center">No User yet</p>
                            @endforelse
                            </tbody>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Email</th>
                                <th>Roles</th>
                                <th>Created</th>
                                <th>Action</th>
                            </tr>
                            </tfoot>
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
