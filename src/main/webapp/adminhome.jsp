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
      <section>
   	
   	<center>
   	<table border="1px black">
   	<tr >
   		<td width = 185px height = 80px><h3>Project Count : ${projectCount}</h3></td>
   		<td width = 185px><h3>Student Count : ${studentcount}</h3></td>
   		<td width = 185px><h3>Faculty Count : ${facultycount}</h3></td>
   	</tr>
   	</table>
   	<table border="1px black">
   	<tr>
   		<td height = 80px><h3>Projects Completed: ${projectscompleted}</h3></td>
   		<td><h3>Ongoing Projects : ${ongoingproject}</h3></td>
   		
   	</tr>
   	<tr>
   		<td height = 80px><h3>Allocated Faculty Count : ${allocatedfacultycount}</h3></td>
   		<td><h3>Non Allocated Faculty : ${nonAllocatedFaculty}</h3></td>
   		
   	</tr>
   	   	<tr>
   		<td height = 80px><h3>Project Mentor Allocated : ${projectmentorallocated}</h3></td>
   		<td><h3>Project Mentor Non Allocated : ${projectmentornonallocated}</h3></td>
   		
   	</tr>
   	</table>
   	
   	
	
	
	
	
	
	
	
	
	
	
	
	
	
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
    
    
 
                                </tr>
                            </thead>
                            <tbody>
                                    <c:forEach items="${topperformingprojects}" var="project">
    
    <tr>
    
    <td> <c:out value="${project.pid}"></c:out>   </td>
    <td> <c:out value="${project.title}"></c:out>   </td>
    
   
    
    </tr>
    </c:forEach>

                            </tbody>
                        </table>
                    </div>
            </div>
        </div>
    </div>
	
	
</section>


</body>
</html>