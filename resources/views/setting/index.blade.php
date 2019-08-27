@extends('master')
@section('title')
    Settings
@endsection
@section('content')
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Setting</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{route('home')}}">Home</a></li>
                        <li class="breadcrumb-item active">Settings</li>
                    </ol>
                </div>
            </div>
        </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-12">
                <!-- /.card -->

                <div class="card card-warning">
                    <div class="card-header">
                        <h3 class="card-title">General Settings</h3>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body">
                    {{Form::open(['route' => 'settings.store', 'method' => 'POST' ])}}
                            <!-- text input -->
                            <div class="form-group">
                                <label>App Name</label>
                                <input type="text" name="app_name" class="form-control" placeholder="Enter App Name">
                            </div>
                        <div class="form-group">
                            <label class="control-label col-md-4">Time Format</label>
                            <div class="col-md-8 radio">
                                <label class="mr-5"><input type="radio" {{$settings[2]->value == 'H:s' ? 'checked' : ''}} name="time_format" value="H:s"/> 24h</label>
                                <label><input type="radio" {{$settings[2]->value == 'g:i A' ? 'checked' : ''}} name="time_format" value="g:i A"/> 12 h</label>
                            </div>
                        </div>
                        {{--<div class="form-group">--}}
                            {{--<label>Time Format</label>--}}
                            {{--<div class="row no-gutters">--}}
                                {{--<div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">--}}
                                    {{--<input type="checkbox" name="time_format" value="g:i A" class="custom-control-input" id="12-h">--}}
                                    {{--<label class="custom-control-label" for="12-h">12h</label>--}}
                                {{--</div>--}}
                                {{--<div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">--}}
                                    {{--<input type="checkbox" class="custom-control-input" id="24-h">--}}
                                    {{--<label class="custom-control-label" for="24-h">24h</label>--}}
                                {{--</div>--}}
                            {{--</div>--}}
                        {{--</div>--}}
                        <!-- select -->
                        <div class="form-group">
                            <label>Date Format</label>
                            <select class="form-control" name="date_format">
                                <option value="d/m/Y">DD/MM/YY</option>
                                <option value="m/d/Y">MM/DD/YY</option>
                                <option value="Y/m/d">YY/MM/DD</option>
                                <option value="d-m-Y">DD-MM-YY</option>
                                <option value="m-d-Y">MM-DD-YY</option>
                                <option value="Y-m-d">YY-MM-DD</option>
                                <option value="d.m.Y">DD.MM.YY</option>
                                <option value="m.d.Y">MM.DD.YY</option>
                                <option value="Y.m.d">YY.MM.DD</option>
                                <option value="d-m-Y">DD-MM-YY</option>
                                <option value="m-d-Y">MM-DD-YY</option>
                                <option value="Y-m-d">YY-MM-DD</option>

                            </select>
                        </div>
                            <div class="form-group">
                                <label>Text Disabled</label>
                                <input type="text" class="form-control" placeholder="Enter ..." disabled>
                            </div>

                            <!-- textarea -->
                            <div class="form-group">
                                <label>Textarea</label>
                                <textarea class="form-control" rows="3" placeholder="Enter ..."></textarea>
                            </div>
                            <div class="form-group">
                                <label>Textarea Disabled</label>
                                <textarea class="form-control" rows="3" placeholder="Enter ..." disabled></textarea>
                            </div>

                            <!-- input states -->
                            <div class="form-group">
                                <label class="control-label" for="inputSuccess"><i class="fas fa-check"></i> Input with
                                    success</label>
                                <input type="text" class="form-control is-valid" id="inputSuccess" placeholder="Enter ...">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="inputWarning"><i class="far fa-bell"></i> Input with
                                    warning</label>
                                <input type="text" class="form-control is-warning" id="inputWarning" placeholder="Enter ...">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="inputError"><i class="far fa-times-circle"></i> Input with
                                    error</label>
                                <input type="text" class="form-control is-invalid" id="inputError" placeholder="Enter ...">
                            </div>

                            <!-- checkbox -->
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="option1">
                                    <label class="form-check-label">Checkbox</label>
                                </div>

                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="option1" disabled>
                                    <label class="form-check-label">Checkbox disabled</label>
                                </div>
                            </div>

                            <!-- radio -->
                            <div class="form-group">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="option1">
                                    <label class="form-check-label">Radio</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" value="option1" disabled>
                                    <label class="form-check-label">Radio disabled</label>
                                </div>
                            </div>


                            <div class="form-group">
                                <label>Select Disabled</label>
                                <select class="form-control" disabled>
                                    <option>option 1</option>
                                    <option>option 2</option>
                                    <option>option 3</option>
                                    <option>option 4</option>
                                    <option>option 5</option>
                                </select>
                            </div>

                            <!-- Select multiple-->
                            <div class="form-group">
                                <label>Select Multiple</label>
                                <select multiple class="form-control">
                                    <option>option 1</option>
                                    <option>option 2</option>
                                    <option>option 3</option>
                                    <option>option 4</option>
                                    <option>option 5</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Select Multiple Disabled</label>
                                <select multiple class="form-control" disabled>
                                    <option>option 1</option>
                                    <option>option 2</option>
                                    <option>option 3</option>
                                    <option>option 4</option>
                                    <option>option 5</option>
                                </select>
                            </div>

                            <div class="form-group">
                                <div class="custom-control custom-switch">
                                    <input type="checkbox" class="custom-control-input" id="customSwitch1">
                                    <label class="custom-control-label" for="customSwitch1">Toggle this switch element</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-switch custom-switch-off-danger custom-switch-on-success">
                                    <input type="checkbox" class="custom-control-input" id="customSwitch3">
                                    <label class="custom-control-label" for="customSwitch3">Toggle this switch element with Custom Colors danger/success</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="custom-control custom-switch">
                                    <input type="checkbox" class="custom-control-input" disabled id="customSwitch2">
                                    <label class="custom-control-label" for="customSwitch2">Disabled switch element</label>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="customRange1">Example range</label>
                                <input type="range" class="custom-range" id="customRange1">
                            </div>
                            <div class="form-group">
                                <label for="customRange1">Example range (custom-range-danger)</label>
                                <input type="range" class="custom-range custom-range-danger" id="customRange1">
                            </div>
                            <div class="form-group">
                                <label for="customRange1">Example range (custom-range-teal)</label>
                                <input type="range" class="custom-range custom-range-teal" id="customRange1">
                            </div>
                        <div class="form-group">
                            <button type="submit" class="bt btn-success">Submit</button>
                        </div>
                        {{Form::open(['route' => 'settings.store', 'method' => 'POST' ])}}
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
            </div>
        </div>
    </section>
@endsection
