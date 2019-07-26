@extends('master')
@section('title')
    Role Update
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Role Create</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('roles.index')}}">Roles</a></li>
                        <li class="breadcrumb-item active">Update New Role</li>
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
                        <h3 class="card-title">Update Role</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    {{Form::open(['route' => ['roles.update', $role->id], 'method' => 'PUT'])}}
                    <!-- text input -->
                        <div class="form-group">
                            <label>Role Name</label>
                            <input type="text" name="name" value="{{$role->name}}" class="form-control" placeholder="Enter Role Name">
                            <span class="text-danger ">{{$errors->has('name') ? $errors->first('name') : ''}}</span>
                        </div>
                        <div class="form-group">
                            <label>Description</label>
                            <textarea name="description" id="description" rows="3" class="form-control" placeholder="Enter Description">{!! $role->description !!}</textarea>

                            <span class="text-danger ">{{$errors->has('description') ? $errors->first('description') : ''}}</span>
                        </div>
                        <div class="form-group row">
                            <div class="col-4">
                                <div class="form-group ">
                                    <label class="control-label">User Permission </label>
                                    @foreach($permissions as $permission)
                                        @if($permission->for === 'User')
                                            <div class="form-check">
                                                <input
                                                class="form-check-input"
                                                name="permission_id[]"
                                                value="{{$permission->id}}"
                                                type="checkbox"
                                                id="{{$permission->id}}"
                                                @foreach($role->permissions as $val)
                                                    {{$val->id == $permission->id ? 'checked': ''}}
                                                @endforeach
                                                >
                                                <label class="form-check-label" for="{{$permission->id}}">{{$permission->name}}</label>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <label class="control-label">Posts Permission </label>
                                    @foreach($permissions as $permission)
                                        @if($permission->for === 'Post')
                                            <div class="form-check">
                                                <input
                                                class="form-check-input"
                                                name="permission_id[]"
                                                value="{{$permission->id}}"
                                                type="checkbox"
                                                id="{{$permission->id}}"
                                                @foreach($role->permissions as $val)
                                                {{$val->id == $permission->id ? 'checked': ''}}
                                                @endforeach
                                                >
                                                <label class="form-check-label" for="{{$permission->id}}">{{$permission->name}}</label>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-4">
                                <div class="form-group">
                                    <label class="control-label">Other Permission </label>
                                    @foreach($permissions as $permission)
                                        @if($permission->for === 'Other')
                                            <div class="form-check">
                                                <input
                                                class="form-check-input"
                                                name="permission_id[]"
                                                value="{{$permission->id}}"
                                                type="checkbox"
                                                id="{{$permission->id}}"
                                                @foreach($role->permissions as $val)
                                                {{$val->id == $permission->id ? 'checked': ''}}
                                                @endforeach
                                                >
                                                <label class="form-check-label" for="{{$permission->id}}">{{$permission->name}}</label>
                                            </div>
                                        @endif
                                    @endforeach
                                </div>
                            </div>
                            <div class="col-12 text-center p-1">
                                <label for="checkAll"><input type="checkbox" class="form-check-input" id="checkAll">Check All</label>
                            </div>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-info">Update</button>
                            <a href="{{route('roles.index')}}" class="btn btn-default float-right">Cancel</a>
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
@section('script')
    <script>
        $("#checkAll").click(function () {
            $('input:checkbox').not(this).prop('checked', this.checked);
        });
    </script>
@endsection
