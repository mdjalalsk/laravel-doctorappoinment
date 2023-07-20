@extends('layouts.templete')
@section('content')
<div class="page-banner overlay-dark bg-image" style="background-image: url({{asset('assets/img/bg_image_1.jpg')}});">
	<div class="banner-section">
		<div class="container text-center wow fadeInUp">
			<nav aria-label="Breadcrumb">
				<ol class="breadcrumb breadcrumb-dark bg-transparent justify-content-center py-0 mb-2">
					<li class="breadcrumb-item"><a href="">Home</a></li>
					<li class="breadcrumb-item active" aria-current="page">Doctors</li>
				</ol>
			</nav>
			<h1 class="font-weight-normal">Our Doctors</h1>
		</div> <!-- .container -->
	</div> <!-- .banner-section -->
</div>
 <!-- .page-banner -->

<div class="page-section bg-light">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-10">

				<div class="row">
					{{-- Show  Dynamic information start  --}}
					<div class="col-md-6 col-lg-4 py-3 wow zoomIn">
						<div class="card-doctor">
							<div class="header">
								<img src="{{asset('assets/img/doctors/doctor_1.jpg')}}" alt="">
								<div class="meta">
									<a href="#"><span class="mai-call"></span></a>
									<a href="#"><span class="mai-logo-whatsapp"></span></a>
								</div>
							</div>
							<div class="body">
								<p class="text-xl mb-0">Dr. Stein Albert</p>
								<span class="text-sm text-grey">Cardiology</span>
							</div>
						</div>
					</div>
					{{-- Show  Dynamic information end  --}}
	
					

				</div>

			</div>
		</div>
	</div> <!-- .container -->
</div>
 <!-- .page-section -->

<div class="page-section">
	<div class="container">
		<h1 class="text-center wow fadeInUp">Make an Appointment</h1>

		<form class="main-form">
			<div class="row mt-5 ">
				<div class="col-12 col-sm-6 py-2 wow fadeInLeft">
					<input type="text" class="form-control" placeholder="Full name">
				</div>
				<div class="col-12 col-sm-6 py-2 wow fadeInRight">
					<input type="text" class="form-control" placeholder="Email address..">
				</div>
				<div class="col-12 col-sm-6 py-2 wow fadeInLeft">
					<input type="number" class="form-control" placeholder="Phone Number">
				</div>
				
{{-- Add extra field for doctor name start --}}

				<div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
					<select name="doctorname" id="doctorname" class="custom-select">
						<option value="general">Doctor Name</option>
						<option value="cardiology">MD Mohim</option>
						<option value="dental">Md Jalal S K</option>
						<option value="neurology">Ismail</option>
						<option value="orthopaedics">Orthopaedics</option>
					</select>
				</div>
				
				<div class="col-12 col-sm-6 py-2 wow fadeInLeft" data-wow-delay="300ms">
					<input type="date" class="form-control">
				</div>
				<div class="col-12 col-sm-6 py-2 wow fadeInRight" data-wow-delay="300ms">
					<select name="departement" id="departement" class="custom-select">
						<option value="general">General Health</option>
						<option value="cardiology">Cardiology</option>
						<option value="dental">Dental</option>
						<option value="neurology">Neurology</option>
						<option value="orthopaedics">Orthopaedics</option>
					</select>
				</div>
				
				<div class="col-12 py-2 wow fadeInUp" data-wow-delay="300ms">
					<textarea name="message" id="message" class="form-control" rows="6" placeholder="Enter message.."></textarea>
				</div>
				
			</div>

			<button type="submit" class="btn btn-primary mt-3 wow zoomIn">Submit Request</button>
		</form>
	</div> <!-- .container -->
</div>
 <!-- .page-section -->

@endsection