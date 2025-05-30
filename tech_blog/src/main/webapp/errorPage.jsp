<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Error Found</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<style>
    body {
        background-color: #f5f7fa;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    .error-container {
        margin-top: 100px;
        background-color: white;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 30px rgba(0, 0, 0, 0.1);
    }

    .btn-home {
        background-color: #82b1ff;
        color: white;
        border: 2px solid #2b4eff;
        padding: 10px 30px;
        border-radius: 30px;
        transition: all 0.3s ease-in-out;
        font-weight: 500;
    }

    .btn-home:hover {
        background-color: #2b4eff;
        box-shadow: 0 6px 20px rgba(43, 78, 255, 0.4);
        color: white;
        transform: scale(1.05);
    }

    .error-img {
        width: 200px;
        margin-bottom: 20px;
        animation: float 2s ease-in-out infinite;
    }

    @keyframes float {
        0% { transform: translateY(0); }
        50% { transform: translateY(-10px); }
        100% { transform: translateY(0); }
    }
</style>
</head>
<body>
    <div class="container d-flex justify-content-center">
        <div class="error-container text-center">
            <img src="images/error.png" alt="Error" class="img-fluid error-img">
            <h3 class="mt-3 text-danger">Oops! Something went wrong 😢</h3>
            
            <p class="text-muted">We couldn't process your request at the moment. Please try again later.</p>
            <a href="index.jsp">
                <button class="btn-home">Back to Home</button>
            </a>
        </div>
    </div>
</body>
</html>
