<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
   <meta charset="UTF-8" />
   <meta http-equiv="X-UA-Compatible" content="IE=edge" />
   <meta name="viewport" content="width=device-width, initial-scale=1.0" />
   <link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
   <meta name="viewport" content="width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
  
   <link rel="stylesheet" href="./css/style.css" />
<title>Insert Details</title>

<style>
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
	background: url("images/af.png") no-repeat center;
	background-size: cover;
	filter: blur(30px);
	z-index: -1;
}

h1{
  color: white;
  font-weight: bold;
  }
  
.a1{
 color: white;
 align: center;
 margin-top: 10px;
 margin-below: 10px;
 }

.contact-box{
	max-width: 600px;
	display: grid;
	
	justify-content: center;
	align-items: center;
	text-align: center;
	background-color: #fff;
	box-shadow: 0px 0px 19px 5px rgba(0,0,0,0.19);
}

.field{
	width: 70%;
	border: 2px solid rgba(0, 0, 0, 0);
	outline: none;
	background-color: rgba(230, 230, 230, 0.6);
	padding: 0.5rem 1rem;
	font-size: 1.1rem;
	margin-bottom: 22px;
	margin-top: 10px;
	transition: .3s;
}
 
</style>
</head>
<body>

<nav class="navbar">
     <!-- LOGO -->
     <div class="logo"> <a href="#"><img src="images/logo1.jpg" width="130px" height="57px"></a></div>
     
     <!-- NAVIGATION MENU -->
     <ul class="nav-links">
      
       <div class="menu">
         <li><a href="/">Home</a></li>
         <li><a href="/">Dashboard</a></li>
         <li><a href="/">Profile</a></li>
         <li><a href="/">Contact</a></li>
         <li><a href="/">Logout</a></li>
         
       </div>
     </ul>
   </nav><br>
   
    <div class="container">
    <div class="contact-box">
    
   
    <h2>Insert Details</h2> <br><br><br>
    
     <form action="insert" method ="post" onsubmit="return InsertValidation()">
	   
	  
       
       <input type="text" class="field" placeholder="Full Name" id="name" name="name">
	   <input type="text" class="field" placeholder="Account Number" id="add1" name="add1">
	   <input type="text" class="field" placeholder="Service Address" id="add2" name="add2">
	   <input type="text" class="field" placeholder="Due Date" id="postalCode" name="postalCode">
	   <input type="text" class="field" placeholder="Units Used" id="region" name="region">
	   <input type="text" class="field" placeholder="Amount" id="city" name="city">
	   
	 
	   
	    <input type="submit" name="submit" value="Submit" class="btn" >
		</form>
</div></div>
</div><br>
<footer>
  <div class="footer-bottom">  
  
    <h1>ElectroGrid (EG) Services</h1><br>
   <div class="a1">Foolish Developer is a dev company which develops programs <br>and releases the final output and source code. </div>
    
     
    <ul class="socials">
    <li><a href="#"><i class="fa fa-facebook"></i></a></li>
    <li><a href="#"><i class="fa fa-twitter"></i></a></li>
    <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
    <li><a href="#"><i class="fa fa-youtube"></i></a></li>
    <li><a href="#"><i class="fa fa-linkedin-square"></i></a></li> 
 </ul>   
 
 
   <p>copyright &copy;2022 <a href="#">electroGrid</a></p>   
</div>

</footer>
</body>
</html>