@extends('master')
@section('title')
    Unpublished Post
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Unpublished Post</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active">Unpublished Posts</li>
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
                        <h3 class="card-title float-left">All Unpublished Posts
                        </h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                        <table id="example1" class="table table-bordered table-striped text-center">
                            <thead>
                            <tr>
                                <th style="width: 5%">No</th>
                                <th style="width: 40%">Title</th>
                                <th style="width: 10%">Category</th>
                                <th style="width: 10%">Status</th>
                                <th style="width: 15%">Published</th>
                                <th style="width: 20%">Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            @php($i = 1)
                            @foreach($posts as $post)
                                <tr>
                                    <td>{{$i++}}</td>
                                    <td>{{$post->title}}</td>
                                    <td>{{$post->category->name}}</td>
                                    <td>{{$post->status == 1 ? 'Published' : 'Unpublished'}}</td>
                                    <td>{{$post->published_at}}</td>
                                    <td>
                                        <a href="#" class="btn btn-sm btn-info" title="View"><i class="fa fa-search-plus"></i></a>
                                        <a href="#" class="btn btn-sm btn-success" title="Edit"><i class="fa fa-edit"></i></a>
                                        <a href="#" class="btn btn-sm btn-danger" title="Delete"><i class="fa fa-trash"></i></a>
                                        {{--{{Form::open(['route' => ['posts.destroy', $post->id], 'method'=>'DELETE', 'class' => 'd-inline'])}}--}}
                                        {{--<button type="submit" title="Delete" onclick="return confirm('Are you sure to delete!!!')" class="btn btn-sm btn-danger"><i class="fa fa-trash"></i></button>--}}
                                        {{--{{Form::close()}}--}}
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                            </tfoot>
                            <tr>
                                <th>No</th>
                                <th>Title</th>
                                <th>Category</th>
                                <th>Status</th>
                                <th style="width: 15%">Published</th>
                                <th style="max-width: 20%">Action</th>
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
