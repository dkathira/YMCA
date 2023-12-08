<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<html>
<head>
<link href="../css/Styles.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script type="text/javascript">

</script>
<title>Programs</title>

<style>
* {
	box-sizing: border-box;
}

body {
	font-family: sans-serif;
	background-color: white;
}

form.example input[type=text] {
	padding: 10px;
	font-size: 17px;
	border: 1px solid grey;
	float: left;
	width: 80%;
	background: #f1f1f1;
}

form.example button {
	float: left;
	width: 20%;
	padding: 10px;
	background: #3090c7;
	color: white;
	font-size: 17px;
	border: 1px solid grey;
	border-left: none;
	cursor: pointer;
}

form.example button:hover {
	background: #0b7dda;
}

form.example::after {
	content: "";
	clear: both;
	display: table;
}

.row::after {
	content: "";
	clear: both;
	display: table;
}

[class*="col-"] {
	float: left;
	padding: 15px;
	height: 10px;
}

.col-0 {
	width: 2.33%;
}

.col-1 {
	width: 8.33%;
}

.col-2 {
	width: 16.66%;
}

.col-25 {
	width: 20%;
}

.col-3 {
	width: 25%;
}

.col-4 {
	width: 33.33%;
}

.col-5 {
	width: 41.66%;
}

.col-6 {
	width: 50%;
}

.col-7 {
	width: 58.33%;
}

.col-8 {
	width: 66.66%;
}

.col-9 {
	width: 75%;
}

.col-10 {
	width: 83.33%;
}

.col-11 {
	width: 91.66%;
}

.col-12 {
	width: 100%;
}

.menu ul {
	list-style-type: none;
	margin: 0;
	padding: 0;
}

.button1 {
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
	background-color: #33b5e5;
	color: white;
	width: 120px;
	height: 40px;
}

.button1:hover {
	background-color: #0099cc;
}

.menu li {
	padding: 8px;
	margin-bottom: 7px;
	background-color: #33b5e5;
	color: #ffffff;
	box-shadow: 0 1px 3px rgba(0, 0, 0, 0.12), 0 1px 2px rgba(0, 0, 0, 0.24);
}

.menu li:hover {
	background-color: #0099cc;
}

#divElement {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
	text-align: center;
	min-height: 100vh;
}

label l1 {
	text-align: right;
}

label l2 {
	text-align: right;
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
	height: 600px;
	overflow: auto;
}

hr.solid {
	border-top: 3px solid #3090c7;
}

.container {
	border-radius: 5px;
	background-color: white;
	padding: 20px;
	height: auto;
}

.innercontainer {
	padding: 16px;
	background-color: white;
	height: auto;
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
​
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
	<%String Uname = (String)session.getAttribute("uniqueusername"); 
	if(Uname == null)
	{
		  ServletContext sc = getServletContext();
	String uniqID= (String)sc.getAttribute("uniqueusername");
	session.setAttribute("uniqueusername",(String)request.getAttribute("UserID"));
	Uname = uniqID;
	}
	if(Uname.endsWith("M")) {
	pageContext.setAttribute("test", "Correct");
	}
	else
	pageContext.setAttribute("test", "Wrong");%>

	<div class="innercontainer">
		<div class="sidebar">
			<a href="StaffLogin.jsp">Home</a> <a class="active"
				href="Programs.jsp">Programs</a> <a href="Members.jsp">Members</a> <a
				href="Helppage.jsp">Help</a>
		</div>
		<div class="content">


			<input id="inp" type="button"
				style="float: right; display: inline-block; border-radius: 4px; color: #FFFFFF; background-color: #4caf50; text-align: center; width: 200px; height: 30px;"
				value="Add Program" onclick="location.href='AddProgram.jsp';" />
			<!-- <form class="example" action="ProgramSearch.jsp"
					style="margin: auto; width: 300px">
					<input type="text" id ="searchim" placeholder="Search.." name="searchim"
						style="width: 200px; height: 39px">
						<%
						String text = (String)request.getParameter("searchim");
						session.setAttribute("searchim", text); %>
					<button type="submit">
						<i class="fa fa-search"></i>
					</button>
				</form> -->


			<script>
		function myFunction(x) {
		      alert("Row index is: " + x.rowIndex);
		  
		//window.transfer("Programs.jsp");
		  //var x = document.getElementById("mydiv");
		   // x.style.display = "block";
		  }
</script>
			<script>
		$(document).on("click", "#table tr", function(e) {
    alert(this.id);
});
</script>
			<!-- <form method = "post" action = "<%=request.getContextPath()%>/RegisterServlet"> -->


			<div class="container">
				<%
				try {
					Connection connection = null;
					Statement statement = null;
					ResultSet resultset = null;
					Statement statement2 = null;
					ResultSet resultset2 = null;
					Statement statement3 = null;
					ResultSet resultset3 = null;
					String Final = "";
					try {
						Class.forName("com.mysql.cj.jdbc.Driver");
					} catch (ClassNotFoundException e) {
						e.printStackTrace();
					}

					connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/ymca_program?user=root&password=root123");

					statement = connection.createStatement();
					String sql = "select * from ymca_program.program";
					resultset = statement.executeQuery(sql);
					while (resultset.next()) {
						int pid = resultset.getInt("ProgramID");
						int activestatus = resultset.getInt("ActiveStatus");
						if (Uname != null && activestatus != 0) {
					if (Uname.endsWith("S")) {
						statement2 = connection.createStatement();
						String sql2 = "select UserID from ymca_program.joined_programs where ProgramID =" + pid;
						resultset2 = statement2.executeQuery(sql2);
						Final = "";
						while (resultset2.next()) {
							String u = resultset2.getString("UserID");
							statement3 = connection.createStatement();
							String sql3 = "select FirstName,LastName from ymca_program.users where UserID =" + u;
							resultset3 = statement3.executeQuery(sql3);
							if (resultset3 != null) {
								while (resultset3.next()) {
									String FName = resultset3.getString("FirstName");
									String LName = resultset3.getString("LastName");
									Final = Final + " " + FName + LName + ",";
								}
							}
						}
					}
					System.out.println(pid);
					System.out.println(Uname);
				%>

				<div class="row"
					style="background-color: #f1f1f1; height: 220px; max-width: 100%">
					<input type="hidden" id="programid" name="programid"
						value=<%=resultset.getInt("ProgramID")%> /> <input type="hidden"
						id="uniqueuser" name="uniqueuser" value=<%=Uname%> />

					<div class="col-8">
						<table style="float: left; width: 80%">
							<tr>
								<td><b>Program : </b></td>
								<td><%=resultset.getString("ProgramName")%></td>
							</tr>
							<tr>
								<td><b> Date : </b></td>
								<td><%=resultset.getString("StartDate")%></td>
								<td style="width: 147px;"><b> to </b></td>
								<td><%=resultset.getString("EndDate")%></td>
							</tr>
							<tr>
								<td><b>From : </b></td>
								<td><%=resultset.getString("StartTime")%></td>
								<td style="width: 42px;"><b> to </b></td>
								<td><%=resultset.getString("EndTime")%></td>
							</tr>
							<tr>
								<td><b>Days : </b></td>
								<td><%=resultset.getString("Days")%></td>
								<td style="width: 35px;"><b>Slots</b></td>
								<td style="width: 32px;"><%=resultset.getString("RemainingSlots")%></td>
								<td><b>/</b></td>
								<td style="width: 32px;"><%=resultset.getString("TotalCapacity")%></td>
							</tr>
							<tr>
								<td><b>Location : </b></td>
								<td><%=resultset.getString("Location")%></td>
							</tr>

							<tr>
								<td><b>Member Fees : </b></td>
								<td><%=resultset.getString("MemberFee")%></td>
							</tr>
							<tr>
								<td><b>Non Member Fees : </b></td>
								<td><%=resultset.getString("NonMemberFee")%></td>
							</tr>
							<tr>
								<td><b>Participants : </b></td>
								<td><%=Final%></td>
							</tr>
						</table>
					</div>
					<div class="col-2 menu">

						<button type="submit" class="button1" value="Edit" id="Edit">Edit</button>
						<form method="post" action="<%=request.getContextPath()%>/Program"
							id="deleteform">
							<button type="submit" class="button1" value="Delete" id="Delete"
								form="deleteform">Delete</button>
							<input type="hidden" id="deleteid" name="deleteid"
								value=<%=resultset.getInt("ProgramID")%> />
						</form>
					</div>

				</div>
				<div class="row" style="background-color: #white; height: 50px;">
				</div>

				<%
				}
				}
				} catch (Exception e) {
				e.printStackTrace();
				}
				%>
			</div>
		</div>
		<!--<input id="inp" type="button" value="Join" onclick="location.href='MemberLogin';" />-->
		<!-- <input id="inp" type="button" value="Edit" onclick="location.href='StaffLogin.jsp';" />-->
		<!--<input id="inp" type="button" value="Edit" onclick="location.href='StaffLogin.jsp';" />-->
	</div>


	<div class="footer">
		<hr class="solid">
	</div>
</body>
</html>
