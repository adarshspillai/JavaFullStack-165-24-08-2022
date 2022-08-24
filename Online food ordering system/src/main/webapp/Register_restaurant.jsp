<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Register_restaurant</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script type="text/javascript">

   function validate(){
	   var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
	    var email = document.getElementById("email");
	    var address = document.getElementById("address");
	    var location = document.getElementById("location");
	    
	if (!email_valid.test(email.value) || email.value == "") {
		alert("Enter valid email..!")
		return false;
		}
	if (address.value == null || address.value == "") {
		alert("Select a valid Address!");
		return false;
		}
	if (location.value == null || location.value == "") {
		alert("Select your Location..!");
		return false;
		}
	var a=document.getElementById("name").value;
	if(a==null || a==""){
		document.getElementById("Message").innerHTML="** Name can't be blank";
		return false;
	}
	var b=document.getElementById("passwords").value;
	if(b == null || b.length < 6){
		document.getElementById("messages").innerHTML="** Password must be 6 characters or long..!";
		return false;
		}
	var firstpassword=document.myform.passwords.value;
	var secondpassword=document.myform.password2.value;
	
	if(firstpassword == secondpassword) {
			return true;
		} else {
			alert("password must be same");
			return false;
		}
   }

	

		

</script>
<style type="text/css">
body{
background: #790947;
}
div.form{
	background:gray;
	width: 100%;
	padding: 10px 20px;
	border-radius: 10px;
}
label{
	color:white;
	width: 140px;
	display: inline-block;
	margin: 0.2cm;
	font-size: 16px;
	font-weight: bold;
}
.center{
	position: absolute;
	top: 50%;
	left: 50%;
	transform:translate(-50%,-50%);
	width: 400px;
	border-radius: 10px;
	
}
p{
color:white;}
.l1{
color: white;}

</style>

</head>
<body>

<div class="center">
<p style="color:black;">
<%

if(request.getAttribute("successMsg")!=null){
	out.println(request.getAttribute("successMsg"));
}

%>
</p>

		<div class="form">
			<form action="rest_database.jsp" method="post" name="myform" onsubmit="return validate()">
				<label>Restaurant Name</label> <input type="text" name="name" id="name" value="" placeholder="Enter Restaurant Name"><span id="Message"></span><br> 
					<label>Password</label>
			<input	type="password" name="password"  id="passwords" value=""><span id="messages"></span><br>
				<label> Confirm Password</label>
				<input type="password"name="password2" id="password2"><br> 
				<label>Email</label>
				<input type="text" name="email" id="email"
					placeholder="Enter Restaurant Email"><br>
				<label class="l1">Location</label> <select name="location"
						id="location" >
						<option value="">Select</option>
						<option value="Alappuzha">Alappuzha</option>
						<option value="Ernakulam">Ernakulam</option>
						<option value="Trissur">Trissur</option>
						<option value="Palakkad">Palakkad</option>
						<option value="Trivandrum">Trivandrum</option>
						<option value="Kollam">Kollam</option>
						<option value="Kozhikode">Kozhikode</option>
					</select>
				<br>
				<label for="address">Address</label>
				<textarea name="address" id="address" cols="30" rows="2"placeholder="Add Address"></textarea><br>			 
				 <p><input type="checkbox" required="required">I understand and agree with the <a href="">Terms&Conditions</a> and <a href="">Privacy Policy.</a></p>
				<button class="btn btn-success btn-block" name="btn_rest" value="rest">Register</button>

			</form>

		</div>
	</div>





<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

</body>
</html>
