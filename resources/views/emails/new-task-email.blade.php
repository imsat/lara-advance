@component('mail::message')

<h1 style="color:slateblue">Hello, {!! $user->fullName !!}</h1>
<h2 >New project added</h2>
<p style="font-style: italic">Project Name: {{$task->name}}</p>
<p style="font-style: italic">Project Deadline: {{$task->deadline_at}}</p>

@component('mail::button', ['url' => route('tasks.show',$task->id)])
Project
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
