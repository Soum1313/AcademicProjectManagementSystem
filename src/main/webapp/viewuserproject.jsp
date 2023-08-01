<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
      <title>Academic Project Management System</title>
      <link rel="stylesheet" href="viewuserproject.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
</head>
<body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css "/>
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


    <br><br>
    
<center>
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
     <th>Progress%</th>
    <th>Domain</th>
    <th>Action</th>
    
 
                                </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${projectlist}" var="project">
    
    <tr>
    
    <td> <c:out value="${project.pid}"></c:out>   </td>
    <td> <c:out value="${project.title}"></c:out>   </td>
    <td> <c:out value="${project.progress}%"></c:out>   </td>
    <td> <c:out value="${project.domain}"></c:out>   </td>
    
   
    <td>
    <a id = "viewurl"  href='<c:url value='viewprojectbyid?id=${project.pid}'></c:url>'>View</a>&nbsp;&nbsp;
    <a id = "viewurl"  href='<c:url value='facultyallocationbyid?id=${project.pid}'></c:url>'>Faculty Allocation</a>&nbsp;&nbsp;
    
    
    </td>
    
    </tr>
    </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <div class="panel-footer">
                        <div class="row">
                            <div class="col col-sm-6 col-xs-6">showing <b>1</b> out of <b>1</b> entries</div>
                            <div class="col-sm-6 col-xs-6">
                                <ul class="pagination hidden-xs pull-right">
                                    <li><a href="#"><</a></li>
                                    <li class="active"><a href="#">1</a></li>
                                    <li><a href="#">2</a></li>
                                    <li><a href="#">3</a></li>
                                    <li><a href="#">4</a></li>
                                    <li><a href="#">5</a></li>
                                    <li><a href="#">></a></li>
                                </ul>
                                <ul class="pagination visible-xs pull-right">
                                    <li><a href="#"><</a></li>
                                    <li><a href="#">></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </center>

    </body>
</html>

 