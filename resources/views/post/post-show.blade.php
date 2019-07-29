@extends('master')
@section('title')
    View Post
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>View Post</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item"><a href="{{route('posts.index')}}">Posts</a></li>
                        <li class="breadcrumb-item active">View Posts</li>
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
                        <h3 class="card-title float-left">View Posts
                        </h3>
                        @can('post-create', $post)
                        <a href="#" class="btn mx-2 btn-secondary btn-sm float-right">Create Post</a>
                        @endcan
                        @can('post-show')
                        <a href="#" class="btn mx-2 btn-warning btn-sm float-right">Show Post</a>
                        @endcan
                        @can('post-update')
                        <a href="#" class="btn mx-2 btn-info btn-sm float-right">Update Post</a>
                        @endcan
                        @can('post-delete')
                        <a href="#" class="btn mx-2 btn-danger btn-sm float-right">Delete Post</a>
                        @endcan
                        @can('post-publish')
                        <a href="#" class="btn mx-2 btn-primary btn-sm float-right">Publish Post</a>
                        @endcan


                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table class="table table-borderless text-center">
                          <tr>
                              <th>Title: </th>
                              <td>{{$post->title}}</td>
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
