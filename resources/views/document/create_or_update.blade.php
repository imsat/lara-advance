@extends('master')
@section('title')
    Document Create
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Document Create</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('document.index')}}">Documents</a></li>
                        <li class="breadcrumb-item active">Create New Document</li>
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
                        <h3 class="card-title">{{isset($document->id) ? 'Update' : 'Create New'}} Document</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    @if(isset($document->id))
                    {{Form::open(['route' => ['document.update', $document->id], 'method' => 'PUT'])}}
                    @else
                    {{Form::open(['route' => 'document.store', 'method' => 'POST'])}}
                    @endif
                    <!-- text input -->
                        <div class="form-group">
                            <label>Document Title</label>
                            <input type="text" name="title" value="{{$document->title}}" class="form-control" placeholder="Enter Document Title">
                            <span class="text-danger ">{{$errors->has('title') ? $errors->first('title') : ''}}</span>
                        </div>
                        <div class="form-group">
                            <label>Body</label>
                            <textarea name="body" id="description" rows="3" class="form-control" placeholder="Enter Body">{!! $document->body !!}</textarea>

                            <span class="text-danger ">{{$errors->has('body') ? $errors->first('body') : ''}}</span>
                        </div>
                        <div class="card-footer">
                            <button type="submit" class="btn btn-info">{{isset($document->id) ? 'Update' : 'Create'}} Document</button>
                            <a href="{{route('document.index')}}" class="btn btn-default float-right">Cancel</a>
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
