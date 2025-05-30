<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>BlogIt</title>
<!-- Bootstrap 5 CDN -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>

	<!-- Navbar -->
	<%@include file="header.jsp"%>


	<!-- Banner -->
	<header class="blog-header text-center">
		<div class="container">
			<h1 class="display-5 fw-bold">Welcome to Blogs World</h1>
			<p>This is a corner of the internet where thoughts are free to
				wander, creativity runs wild, and every post tells a little story.
				Whether it's reflection, inspiration, or raw honesty — it lives
				here.</p>
			<a href="Register.jsp" class="btn btn-outline-light"><span
				class="	fa fa-external-link"></span> Start! Its Free</a> <a
				href="login_page.jsp" class="btn btn-outline-light"><span
				class="	fa fa-edit"></span> Login</a>
		</div>
	</header>


	<!-- Blog Posts Section -->
	<div class="container my-4">
		<div class="row g-4">
			<!-- Blog Post Card 1 -->
			<div class="col-md-6 col-lg-4">
				<div class="card h-100">
					<img src="images/post 1.webp" class="card-img-top" alt="Blog Image">
					<div class="card-body">
						<h5 class="card-title">Post Title 1</h5>
						<p class="card-text">This is a short summary of the first blog
							post. It gives a preview of the content.</p>
						<a href="#" class="btn btn-primary">Read More</a>
					</div>
				</div>
			</div>

			<!-- Blog Post Card 2 -->
			<div class="col-md-6 col-lg-4">
				<div class="card h-100">
					<img src="images/post 1.webp" class="card-img-top" alt="Blog Image">
					<div class="card-body">
						<h5 class="card-title">Post Title 2</h5>
						<p class="card-text">Here is another blog post summary. This
							one is about technology trends in 2025.</p>
						<a href="#" class="btn btn-primary">Read More</a>
					</div>
				</div>
			</div>

			<!-- Blog Post Card 3 -->
			<div class="col-md-6 col-lg-4">
				<div class="card h-100">
					<img src="images/post 1.webp" class="card-img-top" alt="Blog Image">
					<div class="card-body">
						<h5 class="card-title">Post Title 3</h5>
						<p class="card-text">This post talks about productivity tips
							for students and professionals alike.</p>
						<a href="#" class="btn btn-primary">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer -->
	<footer class="bg-dark text-white text-center py-3">
		<p class="mb-0">&copy; 2025 My Blog. All rights reserved.</p>
	</footer>

	<!-- Bootstrap JS -->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>
