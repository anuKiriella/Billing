<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register here</title>


<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="./css/style3.css" />
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
  
    <form>
        <h3>Register</h3>

        <label for="username">Full Name</label>
        <input type="text" placeholder="Full Name" id="username">

        <label for="password">Address</label>
        <input type="password" placeholder="Address" id="password">
        
         <label for="username">Phone Number</label>
        <input type="text" placeholder="Phone" id="username">
        
         <label for="username">Email</label>
        <input type="text" placeholder="Email" id="username">
        
         <label for="username">Username</label>
        <input type="text" placeholder="Username" id="username">
        
         <label for="username">Password</label>
        <input type="text" placeholder="Password" id="username">

        <button>Register</button>
        
    </form>
    </div>
</body>
</html>