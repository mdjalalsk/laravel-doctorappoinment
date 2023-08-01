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
																					<th style="padding:10px; margin-right:5px;">Doctor Name</th>
																					<th style="padding:10px; margin-right:5px;">Prescription</th>
																					<th style="padding:10px; margin-right:5px;">Action</th>
																				</tr>
																				<tr>
																					<td>{{ $patient->name }}</td>
																					<td>{{ $doctor->name }}</td> 
																					<td>{{ $appointment->prescription }}</td> 
																					<td>
																									<!-- Your action buttons here -->
																					</td>
																	</tr>

																
													</table>
									</div>

					</div>
					@include('admin.script');


</body>

</html>
