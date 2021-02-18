<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width,initial-scale=1" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>My Library</title>
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,400i,600,700,800,900" rel="stylesheet" />

    <link rel="shortcut icon" type="image/x-icon" href="{{ URL::asset('dist-assets/images/page_icon.png')}}" />
    <link rel="stylesheet" href="{{ URL::asset('dist-assets/css/themes/lite-purple.min.css') }}">
    <link rel="stylesheet" href="{{ URL::asset('dist-assets/css/plugins/perfect-scrollbar.min.css') }}">
    <!-- <link rel="stylesheet" href="{{ URL::asset('dist-assets/css/plugins/dropzone.min.css') }}"> -->
</head>

<body class="text-left">
    <div id="app">
    </div>
    <!-- ============ Search UI Start ============= -->
    <!-- ============ Search UI End ============= -->
    <script src="{{URL::asset('dist-assets/js/plugins/jquery-3.3.1.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/plugins/bootstrap.bundle.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/plugins/perfect-scrollbar.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/scripts/script.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/scripts/sidebar-horizontal.script.js')}}"></script>
    <!-- <script src="{{URL::asset('dist-assets/js/plugins/dropzone.min.js')}}"></script>
    <script src="{{URL::asset('dist-assets/js/scripts/dropzone.script.min.js')}}"></script> -->
    <script src="{{ mix('js/app.js') }}" type="text/javascript"></script>
</body>

</html>