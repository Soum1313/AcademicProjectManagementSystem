<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
      <meta charset="utf-8">
      <title>Academic Project Management System</title>
      <link rel="stylesheet" href="viewallfaculty.css">
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


<center>

<div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col col-sm-3 col-xs-12">
                                <h4 class="title">Faculty<span>List</span></h4>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
<th>ID</th>
<th>Name</th>

<th>Gender</th>

<th>Department</th>
<th>Designation</th>
<th>Salary</th>
<th>Location</th>
<th>Mail ID</th>
<th>User Name</th>
<th>Contact No</th>
<th> Action</th>
 
                                </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${facultylist}" var="faculty">
    
    <tr>
    
<td> <c:out value="${faculty.fid}"></c:out>   </td>
<td> <c:out value="${faculty.fname}"></c:out>   </td>
<td> <c:out value="${faculty.fgender}"></c:out>   </td>

<td> <c:out value="${faculty.fdepartment}"></c:out>   </td>

<td> <c:out value="${faculty.fdesignation}"></c:out>   </td>

<td> <c:out value="${faculty.fsalary}"></c:out>   </td>

<td> <c:out value="${faculty.flocation}"></c:out>   </td>
<td> <c:out value="${faculty.fmailid}"></c:out>   </td>
<td> <c:out value="${faculty.fusername}"></c:out>   </td>
<td> <c:out value="${faculty.fcontactno}"></c:out>   </td>

    
   
<td>

<a href='<c:url value='deletefaculty?id=${faculty.fid}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewfacultybyid?id=${faculty.fid}'></c:url>'>View</a>&nbsp;&nbsp;


</td>
    
    </tr>
    </c:forEach>

                            </tbody>
                        </table>
                    </div>

                </div>
            </div>
        </div>
    </div>
    </center>
</body>
</html>