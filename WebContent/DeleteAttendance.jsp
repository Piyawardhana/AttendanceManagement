<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Attendance</title>
	<style>
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
input, select{
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

table {
  border-collapse: collapse;
  width: 100%;
}

td {
  text-align: left;
  padding: 8px;
}

tr {
  background-color: LightGrey
  }
</style>
</head>
<body>

	<div class="modal-content animate">
		
		<h1 align ="center"> Delete My Attendance </h1>
		      	
	<div class="container">	

	<%
		String attID = request.getParameter("attID");
		String empID = request.getParameter("empID");
		String date = request.getParameter("date");
		String inTime = request.getParameter("inTime");
		String outTime = request.getParameter("outTime");
		String status = request.getParameter("status");
	%>
		
	<form action="DeleteAttendanceServlet" method="post">
	<table>
		<tr>
		<td>Attendance ID</td>
			<td><input type="text" name="attID" value="<%= attID %>" readonly></td>
		</tr>
		<tr>
		<tr>
			<td>Employee ID</td>
			<td><input type="text" name="empID" value="<%= empID %>" readonly></td>
		</tr>
		<tr>
			<td>Date</td>
			<td><input type="text" name="date" value="<%= date %>" readonly></td>
		</tr>
		<tr>
			<td>In-Time</td>
			<td><input type="text" name="inTime" value="<%= inTime %>" readonly></td>
		</tr>

		<tr>
			<td>Out-Time</td>
			<td><input type="text" name="outTime" value="<%= outTime %>" readonly></td>
		</tr>
		<tr>
			<td>Status</td>
			<td><input type="text" name="status" value="<%= status %>" readonly></td>
		</tr>		
	</table>
	<br>
	
	<button type="submit" name="submit">Delete My Attendance</button>
	
	</form>
	</div>
	</div>

</body>
</html>