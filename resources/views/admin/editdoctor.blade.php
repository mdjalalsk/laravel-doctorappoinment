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
                  {{session()->get('message')}}
                </div>
                    
                @endif

                <form action="{{ url('updatedoctor',$doctor->id) }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <fieldset>
                        <legend>Add Doctor</legend>
                        <div style="padding: 15px;">
                            <label for="">Doctor Name:</label>
                            <input type="text" style="color: black;" name="name" value="{{$doctor->name}}">
                        </div>
                        <div style="padding: 15px;">
                            <label for="">Phone Number:</label>
                            <input type="text" style="color: black;" name="phone" value="{{$doctor->phone}}">
                        </div>
                        <div style="padding: 15px;">
                            <label for="">Speciality:</label>
                            <input type="text" name="speciality"  id="speciality" value="{{$doctor->speciality}}" style="color: black; width:200px;">
                           
                        </div>
                        {{-- <div style="padding: 15px;">
                            <label for="">Speciality:</label>
                            <select name="speciality" id="speciality" style="color: black; width:200px;">
                              
                                <option value="{{$doctor->speciality}}">{{$doctor->speciality}}</option>
                                <option value="skin">Skin</option>
                                <option value="hart">Hart</option>
                                <option value="eye">Eye</option>
                                <option value="nose">Nose</option>
                            </select>
                        </div> --}}
                        <div style="padding: 15px;">
                            <label for="">Room Number:</label>
                            <input type="text" style="color: black;" name="room_number"
                               value="{{$doctor->room_number}}">
                        </div>
                        <div style="padding: 15px;">
                            <label for="">Achievement : </label>
                            <input type="text" style="color: black;" name="achievement"
																												value="{{$doctor->achievement}}">
                        </div>
                        <div style="padding: 15px;">
                            <label for="">Institute : </label>
                            <input type="text" style="color: black;" name="institute" value="{{$doctor->institute}}">
                        </div>
                        <div style="padding: 15px;">
                            <label for="">Doctor Details : </label>
                            <input type="text" style="color: black;" name="doctor_details"
																												value="{{$doctor->doctor_details}}">
                        </div>

                        <div style="padding: 15px;">
                            <label for="">Old Doctor Image:</label>
                            <img src="{{asset('doctorimage/'.$doctor->image)}}" height="100px" width="100px"  alt="img not found">
                        </div>
                        <div style="padding: 15px;">
                            <label for="">New Doctor Image:</label>
                            <input type="file" name="file">
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
