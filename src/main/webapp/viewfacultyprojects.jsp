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


     <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col col-sm-3 col-xs-12">
                                <h4 class="title">Project <span>List</span></h4>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
    <th>Project ID</th>
    <th>Project Title</th>
    <th>Action</th>
    
 
                                </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${projectlist}" var="project">
    
    <tr>
    
    <td> <c:out value="${project.pid}"></c:out>   </td>
    <td> <c:out value="${project.title}"></c:out>   </td>
    
   
    <td>
   <a href='<c:url value='viewprojectFacultybyid?id=${project.pid}'></c:url>'>View</a>&nbsp;&nbsp;
    
    
    </td>
    
    </tr>
    </c:forEach>

                            </tbody>
                        </table>
                    </div>
            </div>
        </div>
    </div>
    </body>
</html>

 