<?php

namespace App\Http\Controllers;

use App\Models\Permission;
use Illuminate\Http\Request;
use Illuminate\Support\Str;

class PermissionController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $permissions = Permission::latest()->get();
//        $permissions = Permission::with('roles')->latest()->get();
        return view('permission.permission-index', compact('permissions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('permission.permission-create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|string|unique:permissions',
            'for' => 'required',
            ],
            [
                'for.required' => 'You have to select permission for'
            ]);

        $data = $request->all();
        $data['slug'] = Str::slug($request->name);
        Permission::create($data);

        return redirect('/permissions')->with('success', 'Permission created successfully');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Model\Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function show(Permission $permission)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Model\Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function edit(Permission $permission)
    {
        return view('permission.permission-update', compact('permission'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Model\Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Permission $permission)
    {
        $this->validate($request, [
            'name' => 'required|string',
            'for' => 'required',
            ],
            [
                'for.required' => 'You have to select permission for'
            ]);

        $request['slug'] = Str::slug($request->name);
        $permission->fill($request->only([
            'name',
            'slug',
            'for',
            'description'
        ]));
        if($permission->isClean()){
            return redirect()->back()->with('error', 'You need to specify a different value to update');
        }
        $permission->save();
        return redirect('/permissions')->with('success', 'permission updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Model\Permission  $permission
     * @return \Illuminate\Http\Response
     */
    public function destroy(Permission $permission)
    {
        $permission->delete();
        return redirect('/permissions')->with('success', 'permission deleted successfully');
    }
}
