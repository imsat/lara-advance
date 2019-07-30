<?php

namespace App\Http\Controllers;

use App\Jobs\NewTasktNotification;
use App\Jobs\NewTasktNotificationJob;
use App\Mail\NewTaskEmail;
use App\Models\Task;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Mail;

class TaskController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $tasks = Task::with('users')->latest('deadline_at')->get();
        return view('task.task-index', compact('tasks'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $users = User::latest()->get();
        return view('task.task-create', compact('users'));
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
           'name' => 'required|string',
           'deadline_at' => 'required'
        ]);

        $data = $request->except('users');
        $task = Task::create($data);

        if($request->has('users')){
            $users = $request->users;
            $task->assignTask($users);

            foreach ($users as $u){
                $user =  User::findOrFail($u);
                NewTasktNotificationJob::dispatch($user, $task);
//                Mail::to($user)->send(new NewTaskEmail($user, $task));
            }
        }

        return redirect('/tasks')->with('success', 'New task created successfully.');


    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function show(Task $task)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function edit(Task $task)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Task $task)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Task  $task
     * @return \Illuminate\Http\Response
     */
    public function destroy(Task $task)
    {
        $task->delete();
        return redirect('/tasks')->with('success', 'Tasks deleted successfully.');
    }
}
