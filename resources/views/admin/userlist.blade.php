<x-app-layout>
	{{-- <x-slot name="header">
<h2 class="font-semibold text-xl text-gray-800 leading-tight">
{{ __('Dashboard') }}
</h2>
</x-slot> --}}
</x-app-layout>

<hr>
<!DOCTYPE html>
<html lang="en">
	<base href="/public">
<head>
	@include('admin.css')
	<style>
					table, th, td {
	border: 2px rgb(43, 31, 31) solid;
	padding: 2px;
}
			</style>
</head>

<body>
	<div class="container-scroller">

					<!-- partial:partials/_sidebar.html -->
					@include('admin.sidebar')
					<!-- partial -->
					@include('admin.navbar')

					<div class=" page-body-wrapper">

									<div style="text-align:left" style="padding: 80px; ">

													@if (session()->has('message'))
																	<div class="alert alert-success alert-dismissible fade show" role="alert">
																					<p>{{ session()->get('message') }}</p>
																					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
																									<span aria-hidden="true">&times;</span>
																					</button>
																	</div>
													@endif


													<table class="g-5px">
																	<tr style="backgroud-color:balck; gap:5px">
																					<th style="padding:10px; margin-right:5px;">User Name</th>
																					<th style="padding:10px; margin-right:5px;">Email Address</th>
																					<th style="padding:10px; margin-right:5px;">User Role</th>
																					<th style="padding:10px; margin-right:5px;">Action</th>
																				</tr>

																	@foreach ($users as $user)
																					<tr style="background-color:grey; text-align:center; padding:0px 10px  ">
																									<td>{{$user->name }}</td>
																									<td>{{$user->email}}</td>
																									<td>{{$user->role}}</td>
																									<td>
																										<a class="btn btn-primary" href="{{route('user_edit',$user->id)}}">Edit</a>
																										<a class="btn btn-danger" onclick="return confirm('Are you sure this user will delete?')" href="{{route('user_delete',$user->id)}}">Delet</a>
																									</td>
																									</tr>
																	@endforeach

													</table>
									</div>

					</div>
					@include('admin.script');


</body>

</html>
