<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>feedback_user</title>


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
	<style type="text/css">
	
	.c1{
	position: absolute;
	top: 50%;
	left: 50%;
	transform:translate(-50%,-50%);
	width:628px;
	border-radius:10px;
	background: aqua;
	text-align: center;

	
	}
.l1{
display:block;
padding-right: 4px;
margin-left: 222px;
}
	body{
	background: silver;
	
	}
	
	
	
	</style>
</head>
<body>
<div class="c1 " >
<form action="addfeedback.jsp" method="post" >
<label>Name:</label>
<input type="text" name="name" class="l1" ><br>
<label>Email(Optional):</label>
<input type="email" name="email"class="l1"><br>
<label>Location</label> <select name="location"
						id="location" required="required">
						<option value="">Select</option>
						<option value="Alappuzha">Alappuzha</option>
						<option value="Ernakulam">Ernakulam</option>
						<option value="Trissur">Trissur</option>
						<option value="Palakkad">Palakkad</option>
						<option value="Trivandrum">Trivandrum</option>
						<option value="Kollam">Kollam</option>
						<option value="Kozhikode">Kozhikode</option>
					</select>

<h3><b>Add Your Feedback</b></h3>
<label for="comments"><b>Further comments:</b></label>
<textarea rows="2" cols="30" id="comments" name="comments"></textarea><br>

<button class="btn btn-success">Submit</button>
<p><h4><b>Thank You Visit Again!!</b></h4></p>







</form>

</div>











</body>
</html>