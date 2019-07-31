@extends('master')
@section('title')
    @lang('home.permission')
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>@lang('home.permission')</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active">@lang('home.permission')</li>
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
                        <h3 class="card-title float-left">All Permissions
                        </h3>
                        <a href="{{route('permissions.create')}}" class="btn btn-primary float-right btn-sm"> <i class="fa fa-plus"></i> Add New</a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped text-center">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Permission For</th>
                                <th>Description</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php($i = 1)
                            @foreach($permissions as $permission)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td class="text-capitalize">{{$permission->name}}</td>
                                    <td>{{$permission->for}}</td>
                                    <td>{{$permission->description}}</td>
                                    <td>
                                        <a href="{{route('permissions.edit', $permission->id)}}" class="btn btn-sm btn-success" title="Edit"><i class="fa fa-edit"></i></a>
                                        {{Form::open(['route' => ['permissions.destroy', $permission->id], 'method'=>'DELETE', 'class' => 'd-inline'])}}
                                        <button type="submit" title="Delete" onclick="return confirm('Are you sure to delete!!!')" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></button>
                                        {{Form::close()}}
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                            <tr>
                                <th>No</th>
                                <th>Name</th>
                                <th>Permission For</th>
                                <th>Description</th>
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
