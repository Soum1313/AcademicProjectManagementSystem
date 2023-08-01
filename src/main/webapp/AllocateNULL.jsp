<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

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
            <li><a class="active" href="studenthome">Home</a></li>
            <li>
               <a href="#">Project
               <i class="fas fa-caret-down"></i>
               </a>
               <ul>
                  <li><a href="projectcreation">Add Project</a></li>
                  <li><a href="viewuserproject">View Project</a></li>
               </ul>
            </li>
            <li><a href="viewstudentbyid?id=${stuid}">View Profile</a></li>
            <li><a href="studentlogin">Logout</a></li>
         </ul>
      </nav>
      
      <br>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>
<br>


<br>


</body>
</html>

 
