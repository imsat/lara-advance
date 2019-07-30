
<script src="{{ asset('js/app.js') }}"></script>

<!-- DataTables -->
<script src="{{asset('/')}}admin-lte-3/plugins/datatables/jquery.dataTables.js"></script>
<script src="{{asset('/')}}admin-lte-3/plugins/datatables/dataTables.bootstrap4.js"></script>
<!-- FastClick -->
<script src="{{asset('/')}}admin-lte-3/plugins/fastclick/fastclick.js"></script>
<!-- SweetAlert2 -->
<script src="{{asset('/')}}admin-lte-3/plugins/sweetalert2/sweetalert2.min.js"></script>
<!-- Toastr -->
<script src="{{asset('/')}}admin-lte-3/plugins/toastr/toastr.min.js"></script>
<!-- AdminLTE App -->
<script src="{{asset('/')}}admin-lte-3/dist/js/adminlte.min.js" type="text/javascript"></script>
<script type="text/javascript">
    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000
    });

    @if(Session::has('success'))
    Toast.fire({type: 'success',title: `{{Session::get('success')}}`})
    @elseif(Session::has('warning'))
    Toast.fire({type: 'warning',title: `{{Session::get('warning')}}`})
    @elseif(Session::has('error'))
    Toast.fire({type: 'error',title: `{{Session::get('error')}}`})
    @elseif(Session::has('info'))
    Toast.fire({type: 'info',title: `{{Session::get('info')}}`})
    @endif

    {{--@if(Session::has('success'))--}}
    {{--toastr.success('{{Session::get('success')}}')--}}
    {{--@elseif(Session::has('warning'))--}}
    {{--toastr.warning('{{Session::get('warning')}}')--}}
    {{--@elseif(Session::has('error'))--}}
    {{--toastr.error('{{Session::get('error')}}')--}}
    {{--@elseif(Session::has('info'))--}}
    {{--toastr.info('{{Session::get('info')}}')--}}
    {{--@endif--}}


</script>

@yield('script')
<script type="text/javascript" charset="utf-8">

     $(function(){
         var current = location.pathname;
         $('nav li a').each(function(){
             var $this = $(this);
             // if the current path is like this link, make it active

             if($this.attr('href').indexOf(current) !== -1){
                 $this.addClass('active');
             }


             //for treeview

             $('.has-treeview').removeClass('menu-open');
             $('[href$="'+current+'"]').closest('li.has-treeview').addClass("menu-open");
             $this.closest('li.menu-open > a').addClass("active");
         });

        //
        // var url = location.pathname;
        // $('nav li.has-treeview a').each(function(){
        //     var $this = $(this);
        //     // if the current path is like this link, make it active
        //     $this.closest('li.has-treeview > a').addClass("active");
        // });

        // var url = location.pathname;
        // $('nav li.menu-open a').each(function(){
        //     var $this = $(this);
        //     $this.closest('li.menu-open > a').addClass("active");
        // });


    });

</script>
