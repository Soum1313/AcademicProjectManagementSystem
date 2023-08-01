<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
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
      <section>

            <div class="course">
                 <div class="row">
                    <div class="course-col">
                        <table align=center>
                        <tr><th>ID:</th>&nbsp;<td>${student.sid}</td></tr>
<tr><th>Name:</th>&nbsp;<td>${student.sname}</td></tr>

<tr><th>Date of Birth:</th>&nbsp;<td>${student.dob}</td></tr>
<tr><th>Department:</th>&nbsp;<td>${student.sdept}</td></tr>


<tr><th>Email ID:</th>&nbsp;<td>${student.smailid}</td></tr>
<tr><th>User Name:</th>&nbsp;<td>${student.susername}</td></tr>
<tr><th>Contact No:</th>&nbsp;<td>${student.scontactno}</td></tr>
<img src="displaystudentimage?id=<c:out value='${student.sid}' ></c:out>" width="50%"/>


</table>
                        

                    </div>
                </div>
            </div>

      </section>
   	




</body>
</html>