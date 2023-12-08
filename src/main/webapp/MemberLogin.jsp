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
<%
String message = (String) request.getAttribute("message");
System.out.println(message);
if (message != null) {
%>
<script>
    var msg = "<%=message%>
	";
	alert(msg);
</script>
<%
}
%>
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
			<a class="active" href="MemberLogin.jsp">Home</a> <a
				href="UserPrograms.jsp">Programs</a> <a href="Enrollments.jsp">Enrollments</a>
			<a href="Helppage.jsp">Help</a>
		</div>
		<div class="content">
			<%
			String uniqID = (String) request.getAttribute("UserID");
			session.setAttribute("uniqueusername", (String) request.getAttribute("UserID"));
			%>

			<input type=hidden id="uniqueusername" name="uniqueusername"
				value=<%=(String) request.getAttribute("UserID")%>>
			<div class="cent">
				<h1>Welcome!</h1>
			</div>

			<p1>${param.message}</p1>
		</div>

	</div>
	<form method="post" action="<%=request.getContextPath()%>/Program">

	</form>
	<div class="footer">
		<hr class="solid">
	</div>
</body>
</html>


