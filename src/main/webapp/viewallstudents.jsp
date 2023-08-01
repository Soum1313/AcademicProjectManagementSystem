<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    
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



<div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col col-sm-3 col-xs-12">
                                <h4 class="title">Student<span>List</span></h4>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
<th>ID</th>
<th>Name</th>

<th>Date of Birth</th>

<th>Department</th>
<th>Email ID</th>
<th>Username</th>
<th>Contact No</th>
<th>Action</th>

 
                                </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${studentlist}" var="student">
    
    <tr>
<td> <c:out value="${student.sid}"></c:out>   </td>
<td> <c:out value="${student.sname}"></c:out>   </td>
<td> <c:out value="${student.dob}"></c:out>   </td>

<td> <c:out value="${student.sdept}"></c:out>   </td>

<td> <c:out value="${student.smailid}"></c:out>   </td>
<td> <c:out value="${student.susername}"></c:out>   </td>
<td> <c:out value="${student.scontactno}"></c:out>   </td>


    
   
<td>

<a href='<c:url value='deletestudent?id=${student.sid}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewstudentbyid?id=${student.sid}'></c:url>'>View</a>&nbsp;&nbsp;

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

</table>
</body>
</html>