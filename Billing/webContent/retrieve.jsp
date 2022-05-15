<%@ page import="com.Billing"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="stylesheet" href="./css/style.css" />
<link rel="stylesheet" href="Views/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Quicksand&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<script src="Componets/jquery-3.2.1.min.js"></script>
   <script src="Componets/bill.js"></script>
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

.contact-box{
	max-width: 90%;
	display: grid;
	
	justify-content: center;
	align-items: center;
	text-align: center;
	background-color: #fff;
	box-shadow: 0px 0px 19px 5px rgba(0,0,0,0.19);
}

.right{
	padding: 25px 40px;
}

.content {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  border-radius: 5px 5px 0 0;
  width: 100%;
  margin: 30px 0;
  margin-left: 30px; 
  margin-right: 30px;
}

.content td, .content th {
  border: 1px solid #ddd;
  padding: 20px;
  text-align: center;
  
}

.content tr:nth-child(even){background-color: #f2f2f2;}

.content tr:hover {background-color: #ddd;}

.content th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #d7702d;
  color: white;
  
}

.btn1{
	width: ;
	padding: 12px;
	background-color: black;
	color: #fff;
	font-size: 1.rem;
	border: none;
	border-radius: 5px;
	outline: none;
	cursor: pointer;
	transition: .3s;
	margin-bottom: 5px;
	margin-top: 5px;
}

.btn1:hover{
    background-color: gray;
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
 

</style>
<title>Billing Details</title>
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
   </nav>
   
    <div class="container">
		<div class="contact-box">
			
				<h2>Billing Details</h2> 
				
				

  <div class="row my-3">
 
		<div class="col-md-12">
				<div id="divItemsGrid">
				 <%
				 Billing billingObj = new Billing();
				 		 out.print(billingObj.readbilldetails());
				 %>
				 </div>
		</div>
 
</div>
</div>
</div>
<footer>
  <div class="footer-bottom">  
  
    <h1>ElectroGrid (EG) Services</h1><br>
   <div class="a1">We provide and maintains the electricity power of Sri Lanka. <br>Monitor the power consumption of users.</div>
    
     
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