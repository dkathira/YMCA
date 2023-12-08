<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="/YMCALogo.jpg">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width = device width, initial scale =1.0">
<title>YMCA Program Registration</title>
<style>
body {
	height: 100%;
	width: 100% body{
  font-family: sans-serif;
}

}
h1 {
	color: #3090c7;
	font-size: 35px;
	text-decoration: none;
	display: inline-block;
}

p {
	color: #3090c7;
	font-size: 20px;
	text-decoration: none;
	display: inline-block;
}

l1 {
	color: #3090c7;
	font-size: 22px;
	text-align: left;
	text-decoration: none;
	display: inline-block;
}

l2 {
	color: #3090c7;
	font-size: 22px;
	text-align: right;
	text-decoration: none;
	display: inline-block;
}

.errorLabel {
	color: red;
	font-size: 15px;
	text-decoration: none;
	display: inline-block;
}

content {
	position: absolute;
	top: 200px;
	bottom: 200px;
	left: 0px;
	right: 0px;
	overflow: auto;
}

header {
	position: absolute;
	top: 0px;
	left: 0px;
	height: 200px;
	right: 0px;
	overflow: hidden;
	padding: 10px 0;
	color: #3090c7;
	text-align: left;
}

footer {
	position: absolute;
	bottom: 0px;
	height: 150px;
	left: 0px;
	right: 0px;
	overflow: hidden;
}

.container {
	width: 100%;
	margin: 0 auto;
	background: 3090c7;
}

.button {
	display: inline-block;
	border-radius: 4px;
	border: none;
	color: #FFFFFF;
	text-align: center;
	font-size: 20px;
	padding: 10px 10px;
	transition: all 0.5s;
	cursor: pointer;
	margin: 4px 4px;
}

.button1 {
	background-color: #3090c7;
	width: 100px;
}

.button2 {
	background-color: #4caf50;
	width: 231px;
}

* {
	box-sizing: border-box;
}

.column {
	float: left;
	padding: 10px;
	height: 600px;
}

.borderspace {
	width: 5%;
}

.left {
	width: 30%;
	position: relative;
	display: table;
	margin-right: auto;
	margin-left: auto;
}

.right {
	width: 65%;
}

.row:after {
	content: "";
	display: table;
	clear: both;
}

hr.solid {
	border-top: 3px solid #3090c7;
}
</style>

</head>
<body>
	<div class="header">
		<div></div>
		<a href=index.jsp><img src="images/LaCrosseY.PNG"
			style="width: 225px; height: 50px; object-fit: cover;" alt='Home'></a>
		<hr class="solid">
	</div>
	<div class="content">
		<div class="row">
			<div></div>
			<div class="column borderspace"></div>
			<div class="column left" style="background-color: #fff;">
				<div style="height: 100px;"></div>
				<div>
					<h1>Welcome to YMCA</h1>
				</div>
				<form method="post" action="<%=request.getContextPath()%>/Login">
					<table>
						<tr>
							<td></td>
							<td style="width: 100px; font-family: verdana;">User Name</td>
							<td><input type="text" name="Username"
								placeholder="Username"
								style="border: 2px solid grey; border-radius: 4px;"></td>
						</tr>
						<tr>
							<td></td>
							<td style="width: 100px; font-family: verdana;">Password</td>
							<td><input type="password" name="Password"
								placeholder="Password"
								style="border: 2px solid grey; border-radius: 4px;"></td>
						</tr>
						<tr>
							<td></td>
							<td></td>
							<td><button class="button button1" value="Login">Login</button></td>
						</tr>
					</table>
				</form>
				<label class="errorLabel">${param.message}</label>
			</div>
			<div class="column right">
				<input type="image" src="images/exer.jpg"
					style="max-width: 100%; max-height: 100%; width: 100%; height: 650px; object-fit: cover; margin: auto; display: block;"></input>
			</div>
		</div>
	</div>
	<div class="footer">
		<hr class="solid">
	</div>
</body>
</html>
