@component('mail::layout')
    {{-- Header --}}
    @slot('header')
        @component('mail::header', ['url' => config('app.url')])
            Verify Email Address
        @endcomponent
    @endslot
@component('mail::message')
<h3>Hello {!! $user->fullName !!}. Thank you for your registration</h3>

@component('mail::button', ['url' => $url, 'success'])
Verify
@endcomponent

Thanks,<br>
{{ config('app.name') }}

@slot('footer')
    @component('mail::footer')
        © {{ date('Y') }} {{ config('app.name') }}. Super FOOTER!
    @endcomponent
@endslot
@endcomponent
