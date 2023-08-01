<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>

</head>
<body>

<h1 align=center>Academic Project Management</h1>

<br>



<br>

<h3 align=right>Welcome&nbsp;<c:out value="${suname}"></c:out></h3>

<br>

<table align=center>

<tr><th>ID:</th>&nbsp;<td>${student.sid}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${student.sname}</td></tr>

<tr><th>Date of Birth:</th>&nbsp;<td>${student.dob}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${student.sdept}</td></tr>


<tr><th>Email ID:</th>&nbsp;<td>${student.smailid}</td></tr>
<tr><th>User Name:</th>&nbsp;<td>${student.susername}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${student.scontactno}</td></tr>



</table>
<br><br>

<center>
    <button>  <a href="schangepwd">Change Password</a>&nbsp;&nbsp;</button>
</center>



</body>
</html>

 
