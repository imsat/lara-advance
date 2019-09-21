{{--<!--<vue-navbar :user="{{Auth::user()}}" :locale="{{config('app.locale')}}"></vue-navbar>-->--}}
<vue-navbar :user="{{Auth::user()}}" :locale="{{json_encode(config('app.locale'))}}"></vue-navbar>

