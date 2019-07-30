@component('mail::layout')
    {{-- Header --}}
    @slot('header')
        @component('mail::header', ['url' => config('app.url')])
            Banned Confirmation
        @endcomponent
    @endslot
    {{-- Body --}}
    Notify!! {!! $user->fullName !!} that you have been banned from the site.
    {{-- Subcopy --}}
    @isset($user)
        @slot('subcopy')
            @component('mail::subcopy')
                {{ $user }}
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


