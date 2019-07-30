@extends('master')
@section('title')
    Task Create
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Task Create</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('tasks.index')}}">Tasks</a></li>
                        <li class="breadcrumb-item active">Create New Task</li>
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
                        <h3 class="card-title">Create New Task</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    {{Form::open(['route' => 'tasks.store', 'method' => 'POST'])}}
                    <!-- text input -->
                        <div class="form-group">
                            <label>Task Name</label>
                            <input type="text" name="name" value="{{old('name')}}" class="form-control" placeholder="Enter Task Name">
                            <span class="text-danger ">{{$errors->has('name') ? $errors->first('name') : ''}}</span>
                        </div>
                        <div class="form-group">
                            <label>Task Deadline</label>
                            <input type="date" name="deadline_at" value="{{old('deadline_at')}}" class="form-control" placeholder="Enter Deadline">
                            <span class="text-danger ">{{$errors->has('deadline_at') ? $errors->first('deadline_at') : ''}}</span>
                        </div>
                        <div class="form-group">
                            <label for="for">Assign User</label>
                            <select class="form-control" name="users[]" multiple>
                                <option selected  disabled>{{ __('Select User') }}</option>
                                @foreach($users as $user)
                                <option value="{{$user->id}}">{{$user->fullName}}</option>
                                @endforeach
                            </select>
                            <span class="text-danger ">{{$errors->has('for') ? $errors->first('for') : ''}}</span>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-info">Create Task</button>
                            <a href="{{route('tasks.index')}}" class="btn btn-default float-right">Cancel</a>
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
