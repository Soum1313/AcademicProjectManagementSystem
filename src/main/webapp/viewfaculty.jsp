<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
</head>
<body>

<h1 align=center>Academic Project Management</h1>

<br>

<ul>
  <li><a href="facultyhome">Home</a></li>
  <li><a class="active" href="viewfaculty">View Profile</a></li>
  <li><a href="fchangepwd">Change Password</a></li>
   <li><a href="login">Logout</a></li>
</ul>

<br>

<h3 align=right>Welcome&nbsp;<c:out value="${funame}"></c:out></h3>

<br>

<table align=center>

<tr><th>ID:</th>&nbsp;<td>${faculty.fid}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${faculty.fname}</td></tr>

<tr><th>Date of Birth:</th>&nbsp;<td>${faculty.fgender}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${faculty.fdepartment}</td></tr>
<tr><th>Designation:</th>&nbsp;<td>${faculty.fdesignation}</td></tr>
<tr><th>Salary:</th>&nbsp;<td>${faculty.fsalary}</td></tr>
<tr><th>Location:</th>&nbsp;<td>${faculty.flocation}</td></tr>
<tr><th>Mail ID:</th>&nbsp;<td>${faculty.fmailid}</td></tr>
<tr><th>Username:</th>&nbsp;<td>${faculty.fusername}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${faculty.fcontactno}</td></tr>



</table>

<br><br>
<center>
    <button>  <a href="fchangepwd">Change Password</a>&nbsp;&nbsp;</button>
</center>



</body>
</html>

 
