@component('mail::message')
# Introduction

The body of your message.

@component('mail::button', ['url' => $url, 'color' => 'success'])
<h2>Hi Welcome to Test Mail : {!! $user->fullName !!}</h2>
@endcomponent

Thanks,<br>
{{ config('app.name') }}
@endcomponent
