<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="model.Billing"%>
<%@page import="com.BillAPI"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register here</title>


     <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/style3.css" />
    <script src="Components/jquery-3.2.1.min.js"></script>
    <script src="Components/bill.js"></script>
    <script src="Components/user.js"></script>
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
  
    <form id="formItem" name="formItem">
        <h3>Register</h3>

        <label for="name">Full Name</label>
        <input type="text" placeholder="Full Name" id="name">

        <label for="address">Address</label>
        <input type="text" placeholder="Address" id="address">
        
         <label for="phone">Phone Number</label>
        <input type="text" placeholder="Phone" id="phone">
        
         <label for="email">Email</label>
        <input type="text" placeholder="Email" id="email">
        
         <label for="username">Username</label>
        <input type="text" placeholder="Username" id="username">
        
         <label for="password">Password</label>
        <input type="password" placeholder="Password" id="password">

        <button id="btnSave" name="btnSave" >Register</button>
        
        <input type="hidden" id="hidIDSave" name="hidIDSave" value="">
        
    </form>
    
                <div id="alertSuccess" class="alert alert-success"></div>
				<div id="alertError" class="alert alert-danger"></div>
    </div>
</body>
</html>
