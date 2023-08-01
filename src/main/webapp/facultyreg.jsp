<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>ProMent</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="studentreg.css" rel="stylesheet" media="all">
</head>

<body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-50">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Faculty Registration 				        <a href="/adminhome" style="color:red"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
</svg></a></h2>
                </div>
                
                <div class="card-body">
                <span class="blink">
<h3 align=center style="color: red"><c:out value="${msg}"/></h3>
</span>
                    <form:form action="addfaculty" method="post" modelAttribute="fac">
                        <div class="form-row m-b-55">
                            <div class="name">Name</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                          
                                            <form:input class="input--style-5" type="text" path="fname" required="required"/>
                                            <label class="label--desc">Name</label>
                                        </div>
                                    </div>

                            </div>
                        </div>
                        <br>
                                                <div class="form-row p-t-20">
                            <label class="label label--block">Gender</label>
                            <div class="p-t-15">
                                <label class="radio-container m-r-55">Male
                                  
                                    <form:radiobutton path="fgender" value="Male" required="required"/>
                                    <span class="checkmark"></span>
                                </label>
                                <label class="radio-container">Female
                                <form:radiobutton path="fgender" value="Female" required="required"/>
                                    
                                    <span class="checkmark"></span>
                                </label>
                            </div>
                        </div>
                        <div>
                        <div class="form-row">
                            <div class="name">Department</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
<form:select path="fdepartment" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="CSE">CSE</form:option>
<form:option value="ECE">ECE</form:option>
<form:option value="EEE">EEE</form:option>
</form:select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                <div class="form-row">
                            <div class="name">Designation</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
<form:select path="fdesignation" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="Prof">Prof</form:option>
<form:option value="Asst Prof">Asst Prof</form:option>
<form:option value="Prof Incharge">Prof Incharge</form:option>
</form:select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                <div class="form-row m-b-55">
                            <div class="name">Salary</div>
                            <div class="value">
                                <div class="row row-refine">

                                    <div class="col-9">
                                        <div class="input-group-desc">
                                         <form:input class="input--style-5" type="text" path="fsalary" value="0.00" required="required"/>
                                           
                                          
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                                                <div class="form-row">
                            <div class="name">Location</div>
                            <div class="value">
                                <div class="input-group">
                                   <form:input class="input--style-5" type="text" path="flocation" required="required"/>
          
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Email</div>
                            <div class="value">
                                <div class="input-group">
                                    
                                     <form:input  class="input--style-5" type="email" path="fmailid" required="required"/>
                                </div>
                            </div>
                        </div>
                         <div class="form-row">
                            <div class="name">Username</div>
                            <div class="value">
                                <div class="input-group">
                                   
                                    <form:input class="input--style-5" type="text"  path="fusername" required="required"/>
                                   
                                </div>
                            </div>
                        </div>
                                                                        <div class="form-row">
                            <div class="name">Domain</div>
                            <div class="value">
                                <div class="input-group">
                                    <div class="rs-select2 js-select-simple select--no-search">
<form:select path="fdomain" required="required">
<form:option value="-1">---Select---</form:option>
<form:option value="AIDS">AIDS</form:option>
<form:option value="DevOps">DevOps</form:option>
<form:option value="Cyber Security">Cyber Security</form:option>
</form:select>
                                        <div class="select-dropdown"></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row m-b-55">
                            <div class="name">Phone</div>
                            <div class="value">
                                <div class="row row-refine">

                                    <div class="col-9">
                                        <div class="input-group-desc">
                                         
                                            <form:input class="input--style-5" type="text" path="fcontactno" required="required"/>
                                            <label class="label--desc">Phone Number</label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                 
                            <input type="submit" value="Register" class="btn btn--radius-2 btn--red" >
                        </div>
                    </form:form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->