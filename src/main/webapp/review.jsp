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
            <li><a class="active" href="">Project</a></li>
             <li><a href="review">Review</a></li>
            <li><a href="submission">Submissions</a></li>
            <li><a href="facultyhome">Back</a></li>
         </ul>
      </nav>

<br>
<h3 align=right>Welcome&nbsp;<c:out value="${funame}"></c:out></h3>

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
    <a href='<c:url value='viewsubmissiontoreview?rid=${review.id}'></c:url>'>View Submission</a>&nbsp;&nbsp;
    
    
    </td>
    
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

 
