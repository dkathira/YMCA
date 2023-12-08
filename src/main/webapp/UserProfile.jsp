<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="../css/Styles.css" rel="stylesheet" type="text/css">
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
body {
	font-family: sans-serif;
	background-color: white;
}

cent {
	left: 10px;
	bottom: 0;
	width: 100%;
	height: 50px;
	background-color: white;
	color: #3090c7;
	text-align: centre;
	float: none;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 10px;
	margin-left: 210px;
	height: 500px;
}

.col-25 {
	float: left;
	width: 25%;
	margin-top: 6px;
}

.col-50 {
	float: right;
	width: 50%;
	margin-top: 6px;
}

.col-75 {
	float: left;
	width: 75%;
	margin-top: 6px;
}

.col-20 {
	float: left;
	width: 20%;
	margin-top: 6px;
}

.col-5 {
	float: left;
	width: 5%;
	margin-top: 6px;
}

.buttonw {
	background-color: #3090c7;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 25px;
	margin: 10px 4px;
	cursor: pointer;
}

table {
	width: 100%;
}

td, th {
	text-align: left;
}

.awesome {
	text-align: right;
	padding-right: 20px;
	vertical-align: top;
	padding-top: 20px;
}

#prostorzaobrazec {
	vertical-align: top;
	padding-top: 20px;
}

.buttonw {
	background-color: #3090c7;
	border: none;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 25px;
	margin: 10px 4px;
	cursor: pointer;
}

* {
	box-sizing: border-box;
}

hr.solid {
	border-top: 3px solid #3090c7;
}

h1 {
	color: #3090c7;
	font-size: 35px;
	text-decoration: none;
	display: inline-block;
}

header {
	position: fixed;
	top: 0px;
	left: 0px;
	height: 200px;
	right: 0px;
	overflow: hidden;
	padding: 10px 0;
	color: #3090c7;
	text-align: left;
	background-color: white;
}

footer {
	position: fixed;
	bottom: 0px;
	height: 200px;
	left: 0px;
	right: 0px;
	overflow: hidden;
}

.sidebar {
	margin: 0;
	padding: 0;
	width: 200px;
	background-color: #f1f1f1;
	position: fixed;
	height: auto;
	overflow: auto;
}

.sidebar a {
	display: block;
	color: black;
	padding: 16px;
	text-decoration: none;
}

.sidebar a.active {
	background-color: #3090c7;
	color: white;
}

.sidebar a:hover:not(.active) {
	background-color: #E6E6FA;
	color: black;
}

div.content {
	margin-left: 200px;
	padding: 1px 16px;
	height: auto;
}

.innercontainer {
	padding: 16px;
	background-color: white;
	height: 600px;
	top: 200px;
	bottom: 200px;
	left: 200px;
	right: 0px;
}

input[type=text], select, textarea {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	font-family: verdana;
	font-size: 15px;
}

input[type=password] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	font-family: verdana;
	font-size: 15px;
}

input[type=date] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	font-family: verdana;
	font-size: 15px;
}

label {
	padding: 12px 12px 12px 0;
	display: inline-block;
	font-family: verdana;
	font-size: 15px;
}

input[type=submit] {
	width: 25%;
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	float: right;
	font-family: verdana;
	font-size: 20px;
}

* {
	box-sizing: border-box;
}

input[type=submit]:hover {
	background-color: #45a049;
}

@media screen and (max-width: 700px) {
	.sidebar {
		width: 100%;
		height: auto;
		position: relative;
	}
	.sidebar a {
		float: left;
	}
	div.content {
		margin-left: 0;
	}
}

@media screen and (max-width: 400px) {
	.sidebar a {
		text-align: center;
		float: none;
	}
}
</style>
</head>
<body>
	<div class="header">
		<div></div>
		<a href=index.jsp><img src="images/LaCrosseY.PNG"
			style="width: 225px; height: 50px; object-fit: cover;" alt='Home'></a>
		<button
			style="font-size: 24px; color: #01a490; background-color: white; border: none; float: right"
			onclick="location.href='index.jsp';">
			Logout <i class="fa fa-sign-out"></i>
		</button>
		<hr class="solid">
	</div>
	<div class="innercontainer">
		<div class="sidebar">
			<a href="MemberLogin.jsp">Home</a> <a href="UserPrograms.jsp">Programs</a>
			<a class="active" href="UserProfile.jsp">Profile</a> <a
				href="Helppage.jsp">Help</a>
		</div>

		<div class="container">
			<div class="row">
				<div class="col-20">
					<label for="fname">First Name</label>
				</div>
				<div class="col-25">
					<input type="text" id="fname" name="firstname">
				</div>
				<div class="col-5"></div>
				<div class="col-20">
					<label for="lname">Last Name</label>
				</div>
				<div class="col-25">
					<input type="text" id="lname" name="lastname">
				</div>
			</div>
			<div class="row">
				<div class="col-20">
					<label for="gender">Gender</label>
				</div>
				<div class="col-25">
					<input type="text" id="dob" name="dob">
				</div>
				<div class="col-5"></div>
				<div class="col-20">
					<label for="dob">Date of Birth</label>
				</div>
				<div class="col-25">
					<input type="text" id="dob" name="dob">
				</div>
			</div>

			<div class="row">
				<div class="col-20">
					<label for="pno">Phone Number</label>
				</div>
				<div class="col-25">
					<input type="text" id="pno" name="pno">
				</div>
				<div class="col-5"></div>
				<div class="col-20">
					<label for="mailid">Mail ID</label>
				</div>
				<div class="col-25">
					<input type="text" id="mailid" name="mailid">
				</div>
			</div>

			<div class="row">
				<div class="col-20">
					<label for="address1">Address</label>
				</div>
				<div class="col-75">
					<input type="text" id="address1" name="address1">
				</div>
			</div>

			<div class="row">
				<div class="col-20">
					<label for="address2">Address Line 2</label>
				</div>
				<div class="col-25">
					<input type="text" id="address2" name="address2">
				</div>
				<div class="col-5"></div>
				<div class="col-20">
					<label for="pin">Pincode</label>
				</div>
				<div class="col-25">
					<input type="text" id="pin" name="pin">
				</div>
			</div>

			<div class="row">
				<div class="col-20">
					<label for="econtact">Emergency Contact</label>
				</div>
				<div class="col-25">
					<input type="text" id="econtact" name="econtact">
				</div>
				<div class="col-5"></div>
				<div class="col-20">
					<label for="ephone">Emergency Contact Number</label>
				</div>
				<div class="col-25">
					<input type="text" id="ephone" name="ephone">
				</div>
			</div>


			<div class="row">
				<div class="col-75"></div>
			</div>
			<div class="row">
				<div class="col-50">
					<input type="submit" value="Save">
				</div>
			</div>

		</div>

		<div class="footer">
			<hr class="solid">
		</div>
</body>
</html>