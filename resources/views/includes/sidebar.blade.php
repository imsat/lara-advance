<aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="{{route('home')}}" class="brand-link">
        <img src="{{asset('/')}}admin-lte-3/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
             style="opacity: .8">
        <span class="brand-text font-weight-light">Lara Advance</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
        <!-- Sidebar Menu -->
        <nav class="mt-2">
            <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                <!-- Add icons to the links using the .nav-icon class
                     with font-awesome or any other icon font library -->

                <li class="nav-item">
                    {{--{{ Route::is('home') ? 'active' : '' }}--}}
                    <a href="{{route('home')}}" class="nav-link ">
                        <i class="nav-icon fas fa-tachometer-alt"></i>
                        <p>
                            @lang('home.dashboard')
                        </p>
                    </a>
                </li>
                <li class="nav-item has-treeview">
                    <a href="#" class="nav-link">
                        <i class="nav-icon fas fa-users"></i>
                        <p>
                            @lang('home.user_management')
                            <i class="right fas fa-angle-left"></i>
                        </p>
                    </a>
                    <ul class="nav nav-treeview">
                        <li class="nav-item">
                            <a href="{{route('permissions.index')}}" class="nav-link ">
                                <i class="far fa-circle nav-icon"></i>
                                <p>@lang('home.permission')</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('roles.index')}}" class="nav-link ">
                                <i class="far fa-circle nav-icon"></i>
                                <p>@lang('home.role')</p>
                            </a>
                        </li>
                        <li class="nav-item">
                            <a href="{{route('users.index')}}" class="nav-link">
                                <i class="far fa-circle nav-icon"></i>
                                <p>@lang('home.user')</p>
                            </a>
                        </li>
                    </ul>
                </li>
                @can('post-access')
                <li class="nav-item">
                    <a href="{{route('posts.index')}}" class="nav-link ">
                        <i class="nav-icon fas fa-tablet"></i>
                        <p>
                            @lang('home.post')
                        </p>
                    </a>
                </li>
                @endcan
                @can('post-publish')
                <li class="nav-item">
                    <a href="{{route('posts.publish')}}" class="nav-link ">
                        <i class="nav-icon fas fa-table"></i>
                        <p>
                            @lang('home.publish_post')
                        </p>
                    </a>
                </li>
                @endcan
                @can('post-publish')
                <li class="nav-item">
                    <a href="{{route('posts.unpublish')}}" class="nav-link ">
                        <i class="nav-icon fas fa-tablet-alt"></i>
                        <p>
                            @lang('home.unpublish_post')
                        </p>
                    </a>
                </li>
                @endcan
                <li class="nav-item">
                    <a href="{{route('tasks.index')}}" class="nav-link ">
                        <i class="nav-icon fas fa-tasks"></i>
                        <p>
                            @lang('home.tasks')
                        </p>
                    </a>
                </li>
                <li class="nav-item">
                    <a href="{{route('charts.index')}}" class="nav-link ">
                        <i class="nav-icon fas fa-chart-pie"></i>
                        <p>
                            @lang('home.charts')
                        </p>
                    </a>
                </li>
            </ul>
        </nav>
        <!-- /.sidebar-menu -->
    </div>
    <!-- /.sidebar -->
</aside>
