$(document).ready(function()

		{
	if ($("#alertSuccess").text().trim() == "")
	{
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
});


$(document).on("click", "#btnLogin", function(event)
{
// Clear alerts---------------------
 $("#alertError").text("");
 $("#alertError").hide();
// Form validation-------------------
var status = validateLoginForm();
if (status != true)
 {
 $("#alertError").text(status);
 $("#alertError").show();
 return;
 }
 // If valid------------------------
 $.ajax(
 {
 url : "BillAPI",
 type : "POST",
 data : $("#formLogin").serialize(),
 dataType : "text",
 complete : function(response, status)
 {
 onLoginComplete(response.responseText, status);
 }
 });
});

function onLoginComplete(response, status)
{
if (status == "success")
 {
 var resultSet = JSON.parse(response);
 if (resultSet.status.trim() == "success")
 {
 // Redirect the valid user-----------------

		if ($("#username").val().match("admin")) {
			document.location = "retrieve.jsp";
		}
		else{
 document.location = "login.jsp";
		}
 }
 else if (resultSet.status.trim() == "error")
 {
 $("#alertError").text(resultSet.data);
 $("#alertError").show();
 }
 } else if (status == "error")
 {
 $("#alertError").text("Error while login.");
 $("#alertError").show();
 } else
 {
 $("#alertError").text("Unknown error while login.");
 $("#alertError").show();
 }
 $("#hidItemIDSave").val("");
 $("#formItem")[0].reset();
}

function validateLoginForm()
{
// USERNAME
if ($("#username").val().trim() == "")
 {
 return "Insert Username.";
 }
// PASSWORD
if ($("#password").val().trim() == "")
 {
 return "Insert Password.";
 }
return true;
}

$(document).on("click", "#btnLogout", function(event)
		{
		 $.ajax(
		 {
		 url : "BillAPI",
		 type : "DELETE",
		 data : "",
		 dataType : "text",
		 complete : function(response, status)
		 {
		 onLogoutComplete(response.responseText, status);
		 }
	 });
});

function onLogoutComplete(response, status)
		{
		if (status == "success")
		 {
		 if (response.trim() == "success")
		 {
		 //Redirect to login------------------
		 document.location = "login.jsp";
		 }
		 }
}

 // SAVE ============================================
   
$(document).on("click", "#btnSave", function(event)
	{
		
		// Clear alerts---------------------
		
		 $("#alertSuccess").text("");
		 $("#alertSuccess").hide();
		 $("#alertError").text("");
		 $("#alertError").hide();
		 
		// Form validation-------------------
	
		var status = validateBillForm();
		if (status != true)
	  {
		 $("#alertError").text(status);
		 $("#alertError").show();
		 return;
	   }
	
		
	var type = ($("#hidebillIDSave").val().trim() == "") ? "POST" : "PUT";
	console.log(`\n\n\n>>>> FORM SUBMIT METHOD = ${type}\n\n\n`);
	$.ajax( 
			{ 
				 url : "billAPI", 
				 type : type, 
				 data : $("#formbill").serialize(), 
				 dataType : "text",
				 complete : function(response, status)
				 { 
				 	console.log(`>>>> RES ${response}`);
					 onBillSaveComplete(response.responseText, status); 
				 } 
			}
		);
		
	});
	

//Billsavecomplefunction
	

	function onBillSaveComplete(response, status) 
	{ 
	  if (status == "success") 
	   { 
				 var resultSet = JSON.parse(response); 
				 
				 if (resultSet.status.trim() == "success") 
				 
				 { 
					 $("#alertSuccess").text("Successfully saved."); 
					 $("#alertSuccess").show(); 
					 $("#divItemsGrid").html(resultSet.data); 
					 
				 } else if (resultSet.status.trim() == "error") 
				 
				 { 
					 $("#alertError").text(resultSet.data); 
					 $("#alertError").show();
					  
				 } 
		 
		 } else if (status == "error") 
		 
		 { 
			 $("#alertError").text("Error while saving."); 
			 $("#alertError").show(); 
			 
		 } else
		 
		 { 
			 $("#alertError").text("Unknown error while saving.."); 
			 $("#alertError").show(); 
			 
		 } 
		
	
		 $("#hidepayIDSave").val(""); 
		 $("#formPayment")[0].reset(); 
	}
	



	   
	
	$(document).on("click", ".btnUpdate", function(event) 
	{ 
		  
		 $("#hidebillIDSave").val($(this).closest("tr").find('td:eq(0)').text());
		 $("#name").val($(this).closest("tr").find('td:eq(1)').text()); 
		 $("#accountNumber").val($(this).closest("tr").find('td:eq(2)').text()); 
		 $("#serviceAddress").val($(this).closest("tr").find('td:eq(3)').text()); 
		 $("#dueDate").val($(this).closest("tr").find('td:eq(4)').text()); 
		 $("#unitsUsed").val($(this).closest("tr").find('td:eq(5)').text()); 
		 $("#amount").val($(this).closest("tr").find('td:eq(6)').text()); 
			
		
	});

//delete
	
$(document).on("click", ".btnRemove", function(event) 
	{ 
		 $.ajax( 
			 { 
					 url : "billAPI", 
					 type : "DELETE", 
					 data : "id=" + $(this).data("id"),
					 dataType : "text", 
					 complete : function(response, status) 
				 { 
			     onBillDeleteComplete(response.responseText, status); 
			     } 
		 }); 
	});
	

//deletecompletion

function onBillDeleteComplete(response, status) 
{ 
	  if (status == "success") 
	 { 
		 var resultSet = JSON.parse(response); 
		 
			 if (resultSet.status.trim() == "success") 
				 { 
					 $("#alertSuccess").text("Successfully deleted."); 
					 $("#alertSuccess").show(); 
					 
					 $("#divItemsGrid").html(resultSet.data); 
			 } else if (resultSet.status.trim() == "error") 
				 
			 { 
				 $("#alertError").text(resultSet.data); 
				 $("#alertError").show(); 
			 } 
			 
	} else if (status == "error") 
			 
	{ 
	     $("#alertError").text("Error while deleting."); 
		 $("#alertError").show(); 
	} else
			 
	 { 
	     $("#alertError").text("Unknown error while deleting.."); 
		 $("#alertError").show(); 
	 } 
		
		
	}	

// CLIENT-MODEL================================================================
	
	function validateBillForm()
	{
	
	 
		
		if ($("#name").val().trim() == "")
		 {
			 return "Insert Full Name.";
		 }
	 
		
		if ($("#accountNumber").val().trim() == "")
		 {
		 	return "Insert Account Number.";
		 }
		 
		
		if ($("#serviceAddress").val().trim() == "")
		 {
			 return "Insert Service Address.";
		 }
		 
		 if ($("#dueDate").val().trim() == "")
		 {
		 	return "Insert Due Date.";
		 }
		 
		 
		  if ($("#unitsUsed").val().trim() == "")
		 {
		 	return "Insert Units Used.";
		 }
		 
		  if ($("#amount").val().trim() == "")
		 {
		 	return "Insert Amount.";
		 }
		 
		 
		 		return true;
		


}

		
		
		
		
		