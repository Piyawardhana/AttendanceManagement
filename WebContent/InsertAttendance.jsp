<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Attendance</title>

<style>
.topnav {
  overflow: hidden;
  background-color: DarkCyan;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 24px 40px;
  text-decoration: none;
  font-size: 20px;
}

.topnav a:hover{
  background-color: #ddd;
  color: black;
}

.active {
  background-color: #ddd;
}

button {
 	background-color: DarkCyan;
  	color: white;
	padding: 14px 20px;
 	margin: 8px 0;
 	border: none;
  	cursor: pointer;
  	width: 50%; 
  	transform: translate(50%);
}

button:hover {
  	opacity: 0.8;
}

.container {
  	padding: 16px;
}

body {
  background-image: url("Images/background.jpg");
  background-color: #cccccc;
  font-family: Arial, Helvetica, sans-serif;
}
input,select{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}
.modal-content {
  background-color: white;
  margin: 5% auto 15% auto; 
  border: 1px solid #888;
  width: 80%; 
}


</style>
</head>
<body>

	<div class="topnav">
	  <a href="Home.jsp">Home</a>
      <a href="#home">My Profile</a>
      <a class="active" href="InsertAttendance.jsp">Attendance</a>
      <a href="#home">Leaves</a>
  	  <a href="#home">Salary</a>
    </div>

	<div class="modal-content animate">
		
		<h1 align ="center"> Attendance </h1>
		
		<div class="container">
		
	<form action="InsertAttendanceServlet" method="post">
		
		Employee ID <input type="text" name="empID"><br>
		Date <input type="text" name="date"><br>
		In-Time <input type="text" name="inTime"><br>
		Out-Time <input type="text" name="outTime"><br>
		Status <input type="text" name="status" value="Pending" readonly><br>
		
		<button type="submit" name="submit"> Add Attendance </button> 
	</form>
	</div>
	</div>

</body>
</html>