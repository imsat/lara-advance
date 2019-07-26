@extends('master')
@section('title')
    Permission Create
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Permission Create</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('permissions.index')}}">Permissions</a></li>
                        <li class="breadcrumb-item active">Create New Permission</li>
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
                        <h3 class="card-title">Create New Permission</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    {{Form::open(['route' => 'permissions.store', 'method' => 'POST'])}}
                    <!-- text input -->
                        <div class="form-group">
                            <label>Permission Name</label>
                            <input type="text" name="name" value="{{old('name')}}" class="form-control" placeholder="Enter Permission Name">
                            <span class="text-danger ">{{$errors->has('name') ? $errors->first('name') : ''}}</span>
                        </div>
                        <div class="form-group">
                            <label for="for">Permission For</label>
                            <select class="form-control" name="for" id="for">
                                <option selected  disabled>{{ __('Select Permission for') }}</option>
                                <option value="user">{{ __('User') }}</option>
                                <option value="post">{{ __('Post') }}</option>
                                <option value="other">{{ __('Other') }}</option>
                            </select>
                            <span class="text-danger ">{{$errors->has('for') ? $errors->first('for') : ''}}</span>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" id="description" rows="3" class="form-control" placeholder="Enter Description">{!! old('description') !!}</textarea>

                            <span class="text-danger ">{{$errors->has('description') ? $errors->first('description') : ''}}</span>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-info">Create Permission</button>
                            <a href="{{route('permissions.index')}}" class="btn btn-default float-right">Cancel</a>
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
