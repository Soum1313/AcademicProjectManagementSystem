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
            <li><a class="active" href="facultyhome">Project</a></li>
             <li><a href="review">Review</a></li>
            <li><a href="submission">Submissions</a></li>
            <li><a href="facultyhome">Back</a></li>
         </ul>
      </nav>

<h3 align=right>Welcome&nbsp;<c:out value="${funame}"></c:out></h3>



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



    
    
    
    

</body>
</html>

 
