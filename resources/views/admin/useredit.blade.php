<x-app-layout>

</x-app-layout>

<!DOCTYPE html>
<html lang="en">
<base href="/public">

<head>
    <style type="text/css ">
        label {
            display: inline-block;
            width: 200px;
        }
    </style>
    @include('admin.css')
</head>

<body>
    <div class="container-scroller">

        <!-- partial:partials/_sidebar.html -->
        @include('admin.sidebar')
        <!-- partial -->
        @include('admin.navbar');
        <!-- partial -->
        <div class="container-fluid page-body-wrapper">
            {{-- <h1>Add Doctor</h1>
			<br> --}}

            <div class="container" align="center" style="paddding-top:100px;">
                @if (session()->has('message'))
                    <div class="alert alert-success">
                        <button type="button" class="close" data-dismiss='alert'>x</button>
                        {{ session()->get('message') }}
                    </div>
                @endif

                <form action="{{ route('user_update', $users->id) }}" method="POST">
                    @csrf
                    {{-- @method('PUT') --}}
                    <fieldset>
                        <legend>Add Doctor</legend>
                        <div style="padding: 15px;">
                            <label for="">User Name:</label>
                            <input type="text" style="color: black;" name="name" value="{{ $users->name }}">
                        </div>
                        <div style="padding: 15px;">
                            <label for="">Email Address:</label>
                            <input type="email" style="color: black;" name="email" value="{{ $users->email }}">
                        </div>
                        <div style="padding: 15px;">
                            <label for="">Role : </label>
                            <select name="role" id="role" style="color:black">
                                <option value="{{ $users->role }}">{{ $users->role }}</option>
                                @if ($users->role == 2)
                                    {
                                <option value="1">1</option } @elseif ($users->role == 1) { <option
                                        value="2">2</option>
                                    }
                                @endif


                            </select>

                        </div>
                        <div style="padding: 15px;">
                            <input type="submit" value="Submit" class="btn btn-success">
                        </div>
                    </fieldset>
                </form>
            </div>
        </div>
        <!-- container-scroller -->
        <!-- plugins:js -->
        @include('admin.script');
</body>

</html>
