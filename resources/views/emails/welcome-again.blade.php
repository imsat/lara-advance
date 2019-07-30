@component('mail::layout')
{{-- Header --}}
@slot('header')
@component('mail::header', ['url' => config('app.url')])
Header Title
@endcomponent
@endslot
{{-- Body --}}
Welcome Again {!! $user->first_name !!}.
{{-- Subcopy --}}
@isset($subcopy)
@slot('subcopy')
@component('mail::subcopy')
    {{ $subcopy }}
@endcomponent
@endslot
@endisset
{{-- Footer --}}
@slot('footer')
@component('mail::footer')
© {{ date('Y') }} {{ config('app.name') }}. Super FOOTER!
@endcomponent
@endslot
@endcomponent
