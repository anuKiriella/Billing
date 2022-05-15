<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>

<link rel="stylesheet" href="./css/home.css" />
<style>
.banner{
	width: 100%;
	height: 100vh;
	background-image: linear-gradient(rgba(0,0,0,0.75),rgba(0,0,0,0.75)),url("images/af.png");
	background-size: cover;
	background-position: center;
}
</style>

</head>
<body>

    <div class="banner">
    <div class="navbar">
    <img src="images/home.png" class="logo">
    <ul>
        <li><a href="./index.jsp">Home</a></li>
        <li><a href="#">About</a></li>
        <li><a href="./register.jsp">Sign up</a></li>
        <li><a href="./login.jsp">Login</a></li>
        <li><a href="#">Contact Us</a></li>
    </ul>
    </div>
      <div class="content">
       <h1>ElectroGrid Services</h1>
        <p>We provide and maintains the electricity power of Sri Lanka.<br> Monitor the power consumption of users and generate electricity bills.</p>
        
        
        <div>
        <button type="button"><span></span>More News</button>
        <button type="button"><span></span>More Info</button>
        </div>
        </div>
</div>
</body>
</html>