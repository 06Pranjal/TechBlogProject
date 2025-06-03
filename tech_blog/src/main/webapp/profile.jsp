<%@page import="com.tech.blog.entities.User" %>
<%@page errorPage="errorPage.jsp" %>
<%

User user=(User)session.getAttribute("currentUser");
if(user==null){
	response.sendRedirect("login.jsp");
	
}


%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Profile Page</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="#"><span class="fa fa-book"></span> TechBlog</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#"><span class="fa fa-home"></span> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><span class="fa fa-book"></span> Posts</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            <span class="fa fa-caret-square-o-down"></span> Categories
          </a>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Programming Languages</a></li>
            <li><a class="dropdown-item" href="#">Projects</a></li>
            <li><a class="dropdown-item" href="#">Data Structures & Algorithm</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" aria-disabled="true" href="#"><span class="fa fa-phone"></span> Contact Us</a>
        </li>
        
      </ul>
      
      
      <ul class="navbar-nav mr-right">
      <li class="nav-item">
          <a class="nav-link" aria-disabled="true" href=""><span class="fa fa-address-card"> </span><%=user.getName() %></a>
        </li>
      <li class="nav-item">
          <a class="nav-link" aria-disabled="true" href="LogoutServlet"><span class="fa fa-share-square"></span> Logout</a>
        </li>
      </ul>
    </div>
  </div>
</nav>



<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.7.1.min.js"
		integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
		crossorigin="anonymous"></script>
	<script type="text/javascript" src="js/script.js"></script>
</body>
</html>