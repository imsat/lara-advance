<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use App\Models\Role;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class RoleController extends Controller
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
        abort_unless(Gate::allows('role-access'), 403);
        $roles = Role::all();
        return view('role.role-index', compact('roles'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        abort_unless(Gate::allows('role-create'), 403);
        $permissions = Permission::latest()->get();
        return view('role.role-create', compact('permissions'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        abort_unless(Gate::allows('role-create'), 403);
        $this->validate($request, [
           'name' => 'required|string'
        ]);

        $data = $request->except('permission_id');
        $data['slug'] = Str::slug($request->name);
        $role = Role::create($data);

        $role->permissions()->sync($request->permission_id);

        return redirect('/roles')->with('success', 'Role created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function show(Role $role)
    {
        abort_unless(Gate::allows('role-show'), 403);
        return view('role.role-show');
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function edit(Role $role)
    {
        abort_unless(Gate::allows('role-update'), 403);
        $permissions = Permission::latest()->get();
        return view('role.role-update', compact('role', 'permissions'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Role $role)
    {
        abort_unless(Gate::allows('role-update'), 403);
        $this->validate($request, [
            'name' => 'required|string'
        ]);

        $request['slug'] = Str::slug($request->name);
        $role->fill($request->only([
            'name',
            'slug',
            'description'
        ]));
        if($role->isClean() && !$request->has('permission_id')){
            return redirect()->back()->with('error', 'You need to specify a different value to update');
        }
        $role->save();
        $role->permissions()->sync($request->permission_id);

        return redirect('/roles')->with('success', 'Role updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Role  $role
     * @return \Illuminate\Http\Response
     */
    public function destroy(Role $role)
    {
        abort_unless(Gate::allows('role-delete'), 403);
        $role->delete();
        return redirect('/roles')->with('success', 'Role deleted successfully');
    }
}
