@extends('master')
@section('title')
    Task
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Task</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active">Tasks</li>
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
                        <h3 class="card-title float-left">All Tasks</h3>
                        <a href="{{route('tasks.create')}}" class="btn btn-primary float-right btn-sm"> <i class="fa fa-plus"></i> Add New</a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped text-center">
                            <thead>
                            <tr>
                                <th style="width: 5%">No</th>
                                <th style="width: 30%">Name</th>
                                <th style="width: 10%">Deadline</th>
                                <th style="width: 40%"> Assign Users</th>
                                <th style="width: 15%">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php($i = 1)
                            @forelse($tasks as $task)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$task->name}}</td>
                                    <td>{{$task->deadline_at}}</td>
                                    <td>
                                        @php($j=0)
                                        @forelse($task->users as $user)
                                            {{$j++ ? ', ': ''}} {{$user->fullName}}
                                        @empty
                                        No user assigned yet
                                        @endforelse
                                    </td>

                                    <td>
                                        <a href="#" class="btn btn-sm btn-success" title="Edit"><i class="fa fa-edit"></i></a>
                                        {{Form::open(['route' => ['tasks.destroy', $task->id], 'method'=>'DELETE', 'class' => 'd-inline'])}}
                                        <button type="submit" title="Delete" onclick="return confirm('Are you sure to delete!!!')" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></button>
                                        {{Form::close()}}
                                    </td>
                                </tr>
                            @empty
                                <p class="text-center">No Task yet</p>
                            @endforelse
                            </tbody>
                            </tfoot>
                            <tr>
                                <th style="width: 5%">No</th>
                                <th style="width: 30%">Name</th>
                                <th style="width: 10%">Deadline</th>
                                <th style="width: 40%"> Assign Users</th>
                                <th style="width: 15%">Action</th>
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
