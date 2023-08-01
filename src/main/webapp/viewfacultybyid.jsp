<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
	 <meta charset="utf-8">
      <title>Academic Project Management System</title>
      <link rel="stylesheet" href="studenthomestyle.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
 <nav>
         <label class="logo">ProMent</label>
         <ul>
            <li><a class="active" href="facultyhome">Home</a></li>
			<li><a href="viewfacultyproject">View Projects</a></li>
            <li><a href="viewfacultybyid?id=${facid}">View Profile</a></li>
            <li><a href="facultylogin">Logout</a></li>
         </ul>
      </nav>

<br>


<h3 align=right>Welcome&nbsp;<c:out value="${funame}"></c:out></h3>

            <div class="course">
                 <div class="row">
                    <div class="course-col">
                        <table align=center>
                        <tr><th>ID:</th>&nbsp;<td>${faculty.fid}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${faculty.fname}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${faculty.fdepartment}</td></tr>
<tr><th>Designation:</th>&nbsp;<td>${faculty.fdesignation}</td></tr>
<tr><th>DSalary:</th>&nbsp;<td>${faculty.fsalary}</td></tr>

<tr><th>EMail ID:</th>&nbsp;<td>${faculty.fmailid}</td></tr>
<tr><th>Username:</th>&nbsp;<td>${faculty.fusername}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${faculty.fcontactno}</td></tr>



</table>
                        

                    </div>
                </div>
            </div>


</body>
</html>

 
