<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style> 
body {
  background-image: url("Images/background.jpg");
  background-color: #cccccc;
  font-family: Arial, Helvetica, sans-serif;

}

/* The navbar */
.topnav {
  overflow: hidden;
  background-color: DarkCyan;
}

/* Navbar links */
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

</style>
</head>
<body>
    <div class="topnav">
      <a href="Home.jsp">Home</a>
      <a href="#home">My Profile</a>
      <a href="InsertAttendance.jsp">Attendance</a>
      <a href="#home">Leaves</a>
  	  <a href="#home">Salary</a>
    </div>
  

</body>
</html>