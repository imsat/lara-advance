@extends('master')
@section('title')
    Documents
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Document</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active">Documents</li>
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
                        <h3 class="card-title float-left">All Documents
                        </h3>
                        <a href="{{route('document.create')}}" class="btn btn-primary float-right btn-sm"> <i class="fa fa-plus"></i> Add New</a>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table table-bordered table-striped text-center">
                            <thead>
                            <tr>
                                <th>No</th>
                                <th>Title</th>
                                <th>Body</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php($i = 1)
                            @foreach($documents as $document)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td class="text-capitalize">{{$document->title}}</td>
                                    <td>{{$document->body}}</td>
                                    <td>
                                        <a href="{{route('document.show', $document->id)}}" class="btn btn-sm btn-info" title="View"><i class="fa fa-search-plus"></i></a>
                                        <a href="{{route('document.edit', $document->id)}}" class="btn btn-sm btn-success" title="Edit"><i class="fa fa-edit"></i></a>
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                            <tr>
                                <th>No</th>
                                <th>Title</th>
                                <th>Body</th>
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
