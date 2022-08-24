<%@  page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>registerform_user</title>
<link rel="stylesheet" type="text/css" href="./reg.css">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<script type="text/javascript">
		function validate(){
		var dob = document.getElementById("dob");
		var address = document.getElementById("address");
		var email_valid = /^[\w\d\.]+\@[a-zA-Z\.]+\.[A-Za-z]{1,4}$/;
		var email = document.getElementById("email");
		if (!email_valid.test(email.value) || email.value == "") {
			alert("Enter valid email..!")
			return false;
			}
		if (dob.value == null || dob.value == "") {
			alert("Select your DOB..!");
			return false;
			}
		
				if (address.value == null || address.value == "") {
			alert("Select a valid Address!");
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

</head>
<body class="c1">


<p style="color:black;">
<%

if(request.getAttribute("successMsg")!=null){
	out.println(request.getAttribute("successMsg"));
}

%>
</p>
<br>

	<div class="center">
		<div class="form">

			<form name="myform" method="post"  onsubmit="return validate()"
				 action="register_database.jsp">
				<label>Name</label> <input type="text" name="name" id="name" value=""
					placeholder="Enter Name">
					<span id="Message"></span><br> 
					<label>Password</label>
				<input type="password" name="password" id="passwords" value=""><span id="messages"></span><br>
				<label> Confirm Password</label>
				 <input type="password"
					name="password2" id="password2"><br> 
					<label>Email</label>
				<input type="text" name="email" id="email"
					placeholder="Enter Email"><br>
				<label for="dob"> Date of birth</label>
				 <input type="date" id="dob" name="date" min='1950-01-01'
max='2004-12-30'><br>
					 <label for="address">Address</label>
				<textarea name="address" id="address" cols="30" rows="2"
					placeholder="Add Address"></textarea>
				<br>
				 <label>Gender</label> 
				 <input type="radio" value="Male"
					name="gender" id="gender" checked="checked">Male 
					<input type="radio"
					value="Female" name="gender" id="gender">Female
					<input type="radio"
					value="other" name="gender" id="gender">Other<br>
				<button class="btn btn-success btn-block" name="btn_register" value="register">Register
			</form>

		</div>
	</div>
</body>
</html>