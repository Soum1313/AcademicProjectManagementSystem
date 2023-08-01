<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
      <title>Academic Project Management System</title>
                  <meta charset="ISO-8859-1">
    <meta name="viewport" content="with=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="studenthomestyle.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,600;0,700;1,100;1,200;1,300;1,400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
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

<h3 align=right>Welcome&nbsp;<c:out value="${suname}"></c:out></h3>

            <div class="course">
                 <div class="row">
                    <div class="course-col">
                        <h3>Project Info</h3>
                        <p>Project ID: &nbsp; ${project.pid} </p> 
                        <p>Project Title: &nbsp; ${project.title} </p> 
                        <p>Project Domain: &nbsp;${project.domain} </p> 
                        <p>Description: &nbsp; ${project.description} </p> 
                        <p>Project Lead ID:&nbsp; ${pleadname}</p> 
                        <p>Contributor 1: &nbsp; ${con1name}</p> 
                        <p>Contributor 2: &nbsp;${con2name}</p> 
                        <p>Faculty Mentor: &nbsp;${fmentorname}</p> 
                        <p>Progress: &nbsp;${progress}%</p> 

                    </div>
                </div>
            </div>



<h3 align = center>Reviews</h3>

<center>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col col-sm-3 col-xs-12">
                                <h4 class="title">Reviews <span>Table</span></h4>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
    <th>Review ID</th>
    <th>Component</th>
    
    <th>Deadline</th>
    <th>Status</th>
    <th>Submission</th>
    
 
                                </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${reviewlist}" var="review">
                                    
    
    <tr>
    
    <td> <c:out value="${review.previewid}"></c:out>   </td>
    <td> <c:out value="${review.component}"></c:out>   </td>
    <td> <c:out value="${review.deadline}"></c:out>   </td>
    <td> <c:out value="${review.status}"></c:out>   </td>
	
     
     <td>
     

  

    <a href='<c:url value='addsubmissiontoreview?rid=${review.id}'></c:url>'>Add Submission</a>&nbsp;&nbsp;
  
    
    
    </td>
    
    </tr>
    </c:forEach>

                            </tbody>
                        </table>
                    </div>

        </div>
    </div>
    </center>
    
    
    
    
    <center>
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-10">
                <div class="panel">
                    <div class="panel-heading">
                        <div class="row">
                            <div class="col col-sm-3 col-xs-12">
                                <h4 class="title">Submission <span></span></h4>
                            </div>
                        </div>
                    </div>
                    <div class="panel-body table-responsive">
                        <table class="table">
                            <thead>
                                <tr>
    <th>Review ID</th>
    <th>Submitted on</th>
    
    <th>Rating</th>
    <th>Feedback</th>

    
 
                                </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${submissionlist}" var="submission">
                                    
    
    <tr>
    
    <td> <c:out value="${submission.reviewId}"></c:out>   </td>
    <td> <c:out value="${submission.submissiontime}"></c:out>   </td>
    <td> <c:out value="${submission.rating}"></c:out>   </td>
    <td> <c:out value="${submission.feedback}"></c:out>   </td>
	
     
  
    
    </tr>
    </c:forEach>

                            </tbody>
                        </table>
                    </div>

        </div>
    </div>
    </center>
    

</body>
</html>

 
