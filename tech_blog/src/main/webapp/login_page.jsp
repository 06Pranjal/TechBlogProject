<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>
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
            min-height: calc(100vh - 56px); /* Account for navbar height */
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
        }

        .card {
            width: 100%;
            max-width: 400px;
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

        .register-link {
            color: #007bff;
            text-decoration: none;
        }

        .register-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <%@include file="header.jsp" %>

    <!-- Centered Login Form -->
    <div class="main-container">
        <div class="card">
            <h3 class="text-center mb-4"><i class="fas fa-user-circle"></i> Login to Blog World</h3>
            <form action="LoginServlet" method="post">
                <div class="mb-3">
                    <label for="email" class="form-label">Email address</label>
                    <input type="email" name="email" required class="form-control" id="email" placeholder="Enter email">
                </div>
                <div class="mb-3">
                    <label for="password" class="form-label">Password</label>
                    <input type="password" name="password" required class="form-control" id="password" placeholder="Password">
                </div>
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Login</button>
                </div>
                <p class="text-center mt-3">
                    <small>Don't have an account? <a href="Register.jsp" class="register-link">Register here</a></small>
                </p>
            </form>
        </div>
    </div>

    <!-- Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
