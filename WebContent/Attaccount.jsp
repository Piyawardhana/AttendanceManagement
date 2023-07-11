<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Account</title>

<style>
button {
 	background-color: DarkCyan;
  	color: white;
	padding: 10px 15px;
 	margin: 3px 0;
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
  width: 90%; 
}

table {
  border-collapse: collapse;
  width: 100%;
}

td {
  text-align: left;
  padding: 8px;
}

table{
  background-color: LightGrey;
  
}
tr:nth-child(1){
  background-color: DarkCyan;
}
</style>

</head>
<body>

	<h1 style="margin:40px" >Success</h1>
	
	<div class="modal-content animate">
		
		<h1 align ="center"> My Attendance Details </h1>
		
	<div class="container">

	<table>
	<tr>
		<td> Attendance ID </td>
		<td> Employee ID </td>
		<td> Date </td>
		<td> In-Time </td>
		<td> Out-Time </td>
		<td> Status </td>
		<td> Edit </td>
		<td> Delete </td>
	</tr>
	
	<c:forEach var="att" items="${attDetails}">
	
	<c:set var="attID" value="${att.attID}"/>
	<c:set var="empID" value="${att.empID}"/>
	<c:set var="date" value="${att.date}"/>
	<c:set var="inTime" value="${att.inTime}"/>
	<c:set var="outTime" value="${att.outTime}"/>
	<c:set var="status" value="${att.status}"/>
	
	<c:url value="UpdateAttendance.jsp" var="attUpdate">
		<c:param name="attID" value="${attID}"/>
		<c:param name="empID" value="${empID}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="inTime" value="${inTime}"/>
		<c:param name="outTime" value="${outTime}"/>
		<c:param name="status" value="${status}"/>
	</c:url>
	
	<c:url value="DeleteAttendance.jsp" var="attDelete">
		<c:param name="attID" value="${attID}"/>
		<c:param name="empID" value="${empID}"/>
		<c:param name="date" value="${date}"/>
		<c:param name="inTime" value="${inTime}"/>
		<c:param name="outTime" value="${outTime}"/>
		<c:param name="status" value="${status}"/>
	</c:url>
	
	<tr>
		<td>${att.attID}</td>
		<td>${att.empID}</td>
		<td>${att.date}</td>
		<td>${att.inTime}</td>
		<td>${att.outTime}</td>
		<td>${att.status}</td>
		<td> 
			<a href="${attUpdate}"><button> E </button></a>
		</td>
		<td> 
			<a href="${attDelete}"><button> D </button></a>
		</td>
	</tr>

	</c:forEach>
	</table>
	
	</div>
	</div>
	
</body>
</html>