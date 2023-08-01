<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
      <title>Academic Project Management System</title>
      <link rel="stylesheet" href="admindashstyle.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
 <nav>
         <label class="logo">ProMent</label>
         <ul>
          <li><a class="active" href="adminhome"> Home</a></li>
            <li>
               <a href="#">Faculty
               <i class="fas fa-caret-down"></i>
               </a>
               <ul>
                  <li><a href="facultyreg">Add Faculty</a></li>
                  <li><a href="viewallfaculty">View All Faculty</a></li>
               </ul>
            </li>
             <li>
               <a href="#">Student
               <i class="fas fa-caret-down"></i>
               </a>
               <ul>
                  <li><a href="studentreg">Add Student</a></li>
                  <li><a href="adminchangestudentlead">Lead Status</a></li>
                  <li><a href="viewallstudents">View All Students</a></li>
                  
               </ul>
            </li>
            <li><a href="/">Logout</a></li>
         </ul>
      </nav>
      <br><br>
<h3 align=center><u>Student Lead status</u></h3>

<span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>

<br>

<form method="post" action="updatestudentstatus">

<table align=center>


<tr><td></td></tr>

<tr>
<td><label>Student ID</label></td>
<td><input type="text" name="sid" required></td>
</tr>

<tr><td></td></tr>

<tr align=center>

<td colspan="2"><input type="submit" value="Update" class="button"></td>

</tr>

</table>

</form>

</body>
</html>

 
