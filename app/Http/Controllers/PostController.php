<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;

class PostController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        abort_unless(Gate::allows('post-access'), 403);
        $posts = Post::with('category', 'user')->latest()->get();
        return view('post.post-index', compact('posts'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function publishPost()
    {
        abort_unless(Gate::allows('post-publish'), 403);
        $posts = Post::with('category', 'user')->latest()->published()->get();
        return view('post.post-publish', compact('posts'));
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function unpublishPost()
    {
        abort_unless(Gate::allows('post-publish'), 403);
        $posts = Post::with('category', 'user')->latest()->unpublished()->get();
        return view('post.post-unpublished', compact('posts'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
//        abort_unless(Gate::allows('post-create'), 403);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        abort_unless(Gate::allows('post-create'), 403);
//        $request->user()->can('update-post');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function show(Post $post)
    {
        abort_unless(Gate::allows('post-show'), 403);
//        if(Gate::denies('show-post', $post)){
//            abort(403, 'Sorry, not sorry.');
//        }



//        Gate::allaws()
//        $this->authorize('show-post', $post);

//        if(Gate::allows('show-post', $post)){
//            return view('post.post-show', compact('post'));
//        }
//        if(Auth::user()->can('update-post', $post)){
//            return 'You can update this.';
//        }
//        if(Gate::denies('update', $post)){
//            abort(403, 'Nope');
//        }

        return view('post.post-show', compact('post'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        abort_unless(Gate::allows('post-update'), 403);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Post $post)
    {
//        abort_unless(Gate::allows('post-update'), 403);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Post  $post
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        abort_unless(Gate::allows('post-delete'), 403);
    }
}
