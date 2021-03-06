<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.Billing"%>
<%
	if (session.getAttribute("username") != null) {
		response.sendRedirect("login.jsp");
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>

    <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/style2.css" />
    <script src="Components/jquery-3.2.1.min.js"></script>
    <script src="Components/bill.js"></script>
    <!--Stylesheet-->
    <style media="screen">
    
.container{
	position: relative;
	width: 100%;
	height: 100%;
	display: flex;
	justify-content: center;
	align-items: center;
	padding: 20px 100px;
}

.container:after{
	content: '';
	position: absolute;
	width: 100%;
	height: 100%;
	left: 0;
	top: 0;
	background: url("images/eg.jpg") no-repeat center;
	background-size: cover;
	filter: blur(0px);
	z-index: -1;
}


</style>
</head>
<body>

 <div class="container">
   <div class="card">   
    <form id="formLogin">
        <h3>Login</h3>

        <label for="username">Username</label>
        <input type="text" placeholder="Email or Phone" id="username" name="username">

        <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password" name="password">

        <button id="btnLogin" name="btnLogin">Log In</button>
        <div id="alertError" class="alert alert-danger"></div>
        
    </form>
    </div></div>
</body>
</html>
