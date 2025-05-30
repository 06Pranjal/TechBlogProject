<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <!-- Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        body {
            background: linear-gradient(to right, #141e30, #243b55);
            min-height: 100vh;
            font-family: 'Segoe UI', sans-serif;
            margin: 0;
        }

        .main-container {
            min-height: calc(100vh - 56px);
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
        }

        .card {
            width: 100%;
            max-width: 450px;
            padding: 2.5rem;
            background-color: #ffffff;
            border: none;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        .card h3 {
            color: #243b55;
            font-weight: 700;
        }

        .form-label {
            font-weight: 600;
            color: #333;
        }

        .form-control {
            border: 1px solid #ccc;
        }

        .form-control:focus {
            border-color: #007bff;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #007bff;
            border: none;
        }

        .btn-primary:hover {
            background-color: #0056b3;
        }

        .login-link {
            color: #007bff;
            text-decoration: none;
        }

        .login-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <%@include file="header.jsp" %>

    <!-- Centered Register Form -->
    <div class="main-container">
        <div class="card">
            <h3 class="text-center mb-4"><i class="fas fa-user-plus"></i> Create Your Account</h3>
            <form action="RegisterServlet" method="post" id="reg-form">
                <div class="mb-3">
                    <label for="name" class="form-label">Full Name</label>
                    <input type="text" name="name" class="form-control" id="name" placeholder="Enter your name">
                </div>
                <div class="mb-3">
                    <label for="email" class="form-label">Email address</label>
                    <input type="email" name="email" class="form-control" id="email" placeholder="Enter email">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" class="form-control" id="password" placeholder="Create password">
                </div>
                
                
                <div class="mb-3">
    <label class="form-label d-block">Gender</label>

    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="gender" id="genderMale" value="Male">
        <label class="form-check-label" for="genderMale">Male</label>
    </div>

    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="gender" id="genderFemale" value="Female">
        <label class="form-check-label" for="genderFemale">Female</label>
    </div>

    <div class="form-check form-check-inline">
        <input class="form-check-input" type="radio" name="gender" id="genderOther" value="Other">
        <label class="form-check-label" for="genderOther">Other</label>
    </div>
</div>

                <div class="container" id="loader" style="display:none;">
                <span class="fa fa-refresh fa-spin text-center"></span>
                <h3>Please Wait...</h3>
                </div>
                <div class="d-grid">
                    <button id="submit-btn" type="submit" class="btn btn-primary">Register</button>
                </div>
                <p class="text-center mt-3">
                    <small>Already have an account? <a href="login_page.jsp" class="login-link">Login here</a></small>
                </p>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script
  src="https://code.jquery.com/jquery-3.7.1.min.js"
  integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
  crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
    <script>
    $(document).ready(function(){
    	console.log("Loaded....")
    	
    	$('#reg-form').on('submit',function(event){
    		event.preventDefault();
    		
    		let form=new FormData(this);
    		
    		$("#submit-btn").hide();
    		$("#loader").show();
    		
    		//send register servlet
    		$.ajax({
    			url: "RegisterServlet",
    			type:"post",
    			data: form,
    			success: function(data,textStatus,jqHXR){
    				console.log(data)
    				
    				$("#submit-btn").show();
    	    		$("#loader").hide();
    	    		
    	    		if(data.trim()==='done'){
    	    			swal("Registration Successfully..we are redirecting to Login Page.. ")
        	    		.then((value) => {
        	    		  window.location="login_page.jsp"
        	    		});
    	    		}else{
    	    			swal(data);
    	    		}
    	    		
    	    		
    	    		
    			},
    			error:function(jqHXR,textStatus,errorThrown){
    				$("#submit-btn").show();
    	    		$("#loader").hide();
    				swal("Something Went Wrong..")
    	    		
    			},
    			processData:false,
    			contentType:false
    		});
    	});
    	
    });
    </script>
</body>
</html>
