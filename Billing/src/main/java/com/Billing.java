package com;

import java.sql.*;
import java.util.Base64;

public class Billing {
	 
		//A common method to connect to the DB
		private Connection connect()
		{
			 Connection con = null;
			 
			 try
		{
			 Class.forName("com.mysql.jdbc.Driver");
			
			 //Provide the correct details: DBServer/DBName, username, password
			 con = DriverManager.getConnection("jdbc:mysql://localhost:3306/billingdb", "root", "");
		 }
			 catch (Exception e)
			 {e.printStackTrace();}
			 
			 return con;
	 }
		
		//Insert bill details
		public String insertbilldetails(String name, String accountNumber, String serviceAddress, String dueDate, String unitsUsed, String amount)
		 {
			 String output = "";
			 
			 try
			 {
				 Connection con = connect();
				 
				 if (con == null)
				 {return "Error while connecting to the database for inserting."; }
				 
				 // create a prepared statement
				 String query = " insert into billdetails (`billID`,`name`,`accountNumber`,`serviceAddress`,`dueDate`,`unitsUsed`,`amount`)" + " values (?, ?, ?, ?, ?, ?, ?)";
				 
				 PreparedStatement preparedStmt = con.prepareStatement(query);
				 
				 // binding values
				 preparedStmt.setInt(1, 0);
				 preparedStmt.setString(2, name);
				 preparedStmt.setString(3, accountNumber);
				 preparedStmt.setString(4, serviceAddress);
				 preparedStmt.setString(5, dueDate);
				 preparedStmt.setString(6, unitsUsed);
				 preparedStmt.setString(7, amount);
				 
				 
				 // execute the statement
				 preparedStmt.execute();
				 con.close();
				 
				 String newBill = readbilldetails();
	                output = "{\"status\":\"success\", \"data\": \"" +  newBill + "\"}"; 
			 }
			 catch (Exception e)
			 {
				 output = "{\"status\":\"error\", \"data\": \"Error while inserting the bill details.\"}";
				 System.err.println(e.getMessage());
			 }
			 return output;
		}
		
		//retrieve bill details
		public String readbilldetails()
		{
			 String output = "";
			 
			 try
			 {
				 Connection con = connect();
				 
				 if (con == null)
				 {return "Error while connecting to the database for reading."; }
				 
				 // Prepare the html table to be displayed
				 output = "<table border='1'><tr><th>Bill ID</th><th> Customer Name</th><th>Account Number</th>" +
						 "<th>Service Address</th>" +
						 "<th>Due Date</th>" +
						 "<th>Units</th>" +
						 "<th>Amount</th></tr>";
				
				 String query = "select * from billdetails";
				 Statement stmt = con.createStatement();
				 ResultSet rs = stmt.executeQuery(query);
				 
				 // iterate through the rows in the result set
				 while (rs.next())
				 {
					 String billID = Integer.toString(rs.getInt("billID"));
					 String name = rs.getString("name");
					 String accountNumber = rs.getString("accountNumber");
					 String serviceAddress = rs.getString("serviceAddress");
					 String dueDate = rs.getString("dueDate");
					 String unitsUsed = rs.getString("unitsUsed");
					 String amount = rs.getString("amount");
					 String username = rs.getString("username");
					 String password = rs.getString("password");
					 
					 
					 // Add into the html table
					 output += "<tr><td>" +  billID + "</td>";
					 output += "<td>" + name + "</td>";
					 output += "<td>" + accountNumber + "</td>";
					 output += "<td>" + serviceAddress + "</td>";
					 output += "<td>" + dueDate + "</td>";
					 output += "<td>" + unitsUsed + "</td>";
					 output += "<td>" + amount + "</td>";
					 output += "<td>" + username + "</td>";
					 output += "<td>" + password + "</td>";
					 
					 
					
				 }
				 con.close();
				 // Complete the html table
				 output += "</table>";
			 }
			 catch (Exception e)
			 {
				 output = "Error while reading the billingdetails.";
				 System.err.println(e.getMessage());
			 }
			 return output;
		}
		
		//update bill details
		public String updatebilldetails(String ID, String nameIn, String accountNumberIn, String serviceAddressIn, String dueDateIn, String unitsUsedIn, String amountIn)
		{
			 String output = "";
			 
			 try
			 {
				 Connection con = connect();
				 
				 if (con == null)
				 {return "Error while connecting to the database for updating."; }
				 
				 // create a prepared statement
				 String query = "UPDATE billdetails SET name=?,accountNumber=?,serviceAddress=?,dueDate=?,unitsUsed=?,amount=? WHERE billID=?";
				 
				PreparedStatement preparedStmt = con.prepareStatement(query);
				 
				 // binding values
				 preparedStmt.setString(1, nameIn);
				 preparedStmt.setString(2, accountNumberIn);
				 preparedStmt.setString(3, serviceAddressIn);
				 preparedStmt.setString(4, dueDateIn);
				 preparedStmt.setString(5, unitsUsedIn);
				 preparedStmt.setString(6, amountIn);
				 preparedStmt.setInt(7, Integer.parseInt(ID));
				 
				 
				 // execute the statement
				 preparedStmt.execute();
				 con.close();
				 
				 String newAppointment = readbilldetails();
				 output = "{\"status\":\"success\", \"data\": \"" + newAppointment + "\"}";
			 }
			 catch (Exception e)
			 {
				 output = "{\"status\":\"error\", \"data\": \"Error while updating the bill details. \"}";
				 System.err.println(e.getMessage());
			 }
			 
			 return output;
			 
		}
		
		// delete bill details
		public String deletebilldetails(String billID )
		{
			 String output = "";
			 
			 try
			 {
			 
				 Connection con = connect();
				 
				 if (con == null)
				 {return "Error while connecting to the database for deleting."; }
				 
				 // create a prepared statement
				 String query = "delete from billdetails where billID=?";
				 
				 PreparedStatement preparedStmt = con.prepareStatement(query);
				 
				 // binding values
				 preparedStmt.setInt(1, Integer.parseInt(billID ));
				 
				 // execute the statement
				 preparedStmt.execute();
				 con.close();
				 
				 String newAppointment = readbilldetails();
					output = "{\"status\":\"success\", \"data\": \"" + newAppointment + "\"}";
			 }
			 catch (Exception e)
			 {
				 output = "{\"status\":\"error\", \"data\": \"Error while deleting the bill details. \"}";
				 System.err.println(e.getMessage());
			 }
			 return output;
}
		
		
		
		       
		

        
    
    //login 
	public String login(String username, String password) {



		try {

			Connection con = connect(); 

			if (con == null)    

			{

				return "-----Error while connecting to the database for login --------";

			} 


			String query = "select `username`,`password` from `users` where `username` = ? and `password` = ?";
			PreparedStatement preparedStmt = con.prepareStatement(query);

			//System.out.println(Base64.getEncoder().encodeToString( password.getBytes()));


			preparedStmt.setString(1,username);
			preparedStmt.setString(2, Base64.getEncoder().encodeToString( password.getBytes()));
			//System.out.println("222");


			ResultSet rs = preparedStmt.executeQuery();


			if(rs.next()) {
				con.close();


				return "success" ;
				/*
				 * if(username.equals("admin")) {
				 * 
				 * return "You are now logged in."; } return
				 * "Hi"+" "+username+"."+"You are now successfully logged in.";
				 */
			}
			else {
				con.close();

				if(username.equals("")  )
				{

					return "username cannot be empty";
				}

				else if( password.equals(""))
				{

					return "password cannot be empty";
				}
				else {
					return  "Incorrect username or password ! ";
				}
			}

		}
		catch(Exception e) 
		{

			System.out.println(e);
			return "Error while connecting to the database for login.";

		}

	}
}



