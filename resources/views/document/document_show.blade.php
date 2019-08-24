@extends('master')
@section('title')
    View Document
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>View Document</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('document.index')}}">Documents</a></li>
                        <li class="breadcrumb-item active">View Documents</li>
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
                        <h3 class="card-title">View Document
                            <a href="{{route('document.edit', $document->id)}}" class="btn btn-outline-info float-right btn-sm" title="Edit">Update</a>
                        </h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table table-borderless text-center">
                            <tr>
                                <th>Title: </th>
                                <td>{{$document->title}}</td>
                            </tr>
                            <tr>
                                <th>Body: </th>
                                <td>{{$document->body}}</td>
                            </tr>
                        </table>
                        <hr>
                        <ul class="list-group">
                            @foreach($document->adjustments as $user)
                                <li class="list-group-item">
                                    <span class="text-warning">{{$user->fullName}}</span>
                                    made a modification on
                                    <span class="text-info">{{$user->pivot->updated_at->diffForHumans()}}</span>
                                    <p class="text-bold h6">Before:
                                        @foreach(json_decode($user->pivot->before, true) as $key => $value)
                                            <span class="text-muted text-capitalize">{{ $key }}</span> -
                                            <span class="text-danger">{{ ltrim($value,',') }}</span>,
                                        @endforeach
                                    </p>
                                    <p class="text-bold h6">After:
                                        @foreach(json_decode($user->pivot->after, true) as $key => $value)
                                            <span class="text-muted text-capitalize">{{ $key }}</span> - <span class="text-success">{{ $value }}</span>,
                                        @endforeach
                                    </p>
                                </li>
                            @endforeach
                        </ul>
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
