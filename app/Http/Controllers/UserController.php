<?php

namespace App\Http\Controllers;

use App\Events\UserRegistrationSuccessfulEvent;
use App\Http\Requests\UserRequest;
use App\Models\Role;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Gate;

class UserController extends Controller
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
    public function index()
    {
        abort_unless(Gate::allows('user-access'), 403);
//        abort_unless(Gate::allows('user-access'), 403, 'Sorry, not sorry.');
//        if(! Gate::allows('user-access')){
//            abort(403, 'Sorry, not sorry.');
//        }
//          if(Gate::denies('user-access')){
//            abort(403, 'Sorry, not sorry.');
//        }
        $users = User::with('roles')->latest()->get();
        return view('user.user-index', compact('users'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        abort_unless(Gate::allows('user-create'), 403);
        $roles = Role::orderBy('name')->pluck('name', 'id');
        return view('user.user-create', compact('roles'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(UserRequest $request)
    {
        abort_unless(Gate::allows('user-create'), 403);
        $user = User::create([
            'first_name' => $request['first_name'],
            'last_name' => $request['last_name'],
            'email' => $request['email'],
            'password' => bcrypt($request['password']),
        ]);
        $user->roles()->attach($request['role_id']);
        return redirect('/users')->with('success', 'New user created successfully.');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        abort_unless(Gate::allows('user-show'), 403);
        return view('user.user-show', compact('user'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(User $user)
    {
        abort_unless(Gate::allows('user-update'), 403);
        $roles = Role::orderBy('name')->pluck('name', 'id');
        return view('user.user-update', compact('roles','user'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        abort_unless(Gate::allows('user-update'), 403);
        $this->validate($request, [
            'first_name' => ['required', 'string', 'max:255'],
//            'last_name' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255'],
            'role_id' => ['required']
        ]);

        $user->fill($request->only([
            'first_name',
            'first_name',
            'email',
        ]));

        $roles = $request->role_id;

        if($user->isClean() && $user->roles->first()->id == $roles){
            return redirect()->back()->with('error', 'You need to specify a different value to update!!');
        }

        $user->save();
        if($user->roles->first()->id !== $roles){
            $user->roles()->sync($roles);
        }
        return redirect('/users')->with('info', 'User updated successfully.');

    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        abort_unless(Gate::allows('user-delete'), 403);
        $user->delete();
        return redirect('/users')->with('success', 'User Deleted successfully.');
    }
}
