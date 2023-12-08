<!DOCTYPE html>
<html>
<head>
<link href="../css/Styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
	font-family: sans-serif;
	background-color: white;
}

* {
	box-sizing: border-box;
}
/* Add padding to containers */
.outercontainer {
	padding: 16px;
	background-color: white;
}

cont {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}
/* Full-width input fields */
input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Overwrite default styles of hr */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* Set a style for the submit button */
.registerbtn {
	background-color: #3090C7;
	color: white;
	padding: 16px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

.registerbtn:hover {
	opacity: 1;
}

/* Add a blue text color to links */
a {
	color: #3090C7;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
	background-color: #f1f1f1;
	text-align: center;
}

* {
	box-sizing: border-box;
}

hr.solid {
	border-top: 3px solid #3090c7;
}

.container {
	border-radius: 5px;
	background-color: #f2f2f2;
	padding: 20px;
}

.col-25 {
	float: left;
	width: 25%;
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

.row:after {
	content: "";
	display: table;
	clear: both;
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

input[type=date] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	font-family: verdana;
	font-size: 15px;
}

input[type=checkbox] {
	width: 3%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: horizontal;
	font-family: verdana;
	font-size: 15px;
}

input[type=time] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	resize: vertical;
	font-family: verdana;
	font-size: 15px;
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
	header {
		position: sticky;
		top: 0px;
		left: 0px;
		height: 200px;
		right: 0px;
		overflow: hidden;
		padding: 10px 0;
		color: #3090c7;
		text-align: left;
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
	<form method="post" action="<%=request.getContextPath()%>/Program">
		<div class="sidebar">
			<a href="#home">Home</a> <a class="active" href="#news">Programs</a>
			<a href="#about">Members</a> <a href="Helppage.jsp">Help</a>
		</div>

		<div class="content">


			<div class="outercontainer">
				<div class="container">

					<div class="row">
						<div class="col-20">
							<label for="programname">Program Name</label>
						</div>
						<div class="col-75">
							<input type="text" name="programname" id="programname" required>
						</div>
					</div>

					<div class="row">
						<div class="col-20">
							<label for="StartDate">Start Date</label>
						</div>
						<div class="col-25">
							<input type="date" id="startdate" placeholder="yyyy-mm-dd"
								value="" min="2020-10-21" max="2030-12-31" name="startdate"
								required>
						</div>
						<div class="col-5"></div>
						<div class="col-20">
							<label for="EndDate">End Date </label>
						</div>
						<div class="col-25">
							<input type="date" id="enddate" placeholder="yyyy-mm-dd" value=""
								min="2020-10-20" max="2030-12-31" name="enddate" required>
						</div>
					</div>

					<div class="row">
						<div class="col-20">
							<label for="Days">Days Offered </label>
						</div>
						<div class="col-75">
							<input type="checkbox" name="days" value="Sunday">Sunday
							<input type="checkbox" name="days" value="Monday">Monday
							<input type="checkbox" name="days" value="Tuesday">Tuesday
							<input type="checkbox" name="days" value="Wednesday">Wednesday
							<input type="checkbox" name="days" value="Thursday">Thursday
							<input type="checkbox" name="days" value="Friday">Friday
							<input type="checkbox" name="days" value="Saturday">Saturday
						</div>

					</div>

					<div class="row">
						<div class="col-20">
							<label for="Start time"> Start Time </label>
						</div>
						<div class="col-25">
							<input type="time" id="starttime" placeholder="HH:MM::SS"
								name="starttime" required>
						</div>
						<div class="col-5"></div>
						<div class="col-20">
							<label for="EndTime"> End Time </label>
						</div>
						<div class="col-25">
							<input type="time" id="endtime" placeholder="HH:MM::SS"
								name="endtime" required>
						</div>
					</div>

					<div class="row">
						<div class="col-20">
							<label for="location"> Location </label>
						</div>
						<div class="col-25">
							<input type="text" name="location" id="location" required>
						</div>
						<div class="col-5"></div>
						<div class="col-20">
							<label for="limit"> Limit </label>
						</div>
						<div class="col-25">
							<input type="text" name="limit" id="limit" required>
						</div>
					</div>

					<div class="row">
						<div class="col-20">
							<label for="memberfee"> Member Fee </label>
						</div>
						<div class="col-25">
							<input type="text" name="memberfee" id="memberfee" required>
						</div>
						<div class="col-5"></div>
						<div class="col-20">
							<label for="nonmemberfee"> Non Member fee </label>
						</div>
						<div class="col-25">
							<input type="text" name="nonmemberfee" id="nonmemberfee" required>
						</div>
					</div>

					<div class="row">
						<div class="col-20">
							<label for="requirements"> Requirements </label>
						</div>
						<div class="col-75">
							<textarea id="requirements" name="requirements"
								style="height: 100px"></textarea>
						</div>
					</div>
					<div class="row">
						<div style="height: 30px;"></div>
						<input type="submit" value="Add">
					</div>
				</div>
			</div>
		</div>
	</form>
	<div class="footer">
		<hr class="solid">
	</div>
</body>
</html>
