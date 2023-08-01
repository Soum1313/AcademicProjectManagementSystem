<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="with=device-width, initial-scale=1.0">
    <title>ProMent - Place for Project Management</title>
    <link rel="stylesheet" href="style.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,600;0,700;1,100;1,200;1,300;1,400&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
 <div class="container">
        <div class="slider">
            <div class="slide slide1">
                <div class="caption">
    <section class="main">
        <nav> 
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times"onclick="hideMenu()" ></i>
                <ul>
                    <li><a class="active" href="/">HOME</a></li>
                    <li><a href="/about">ABOUT OUR PROJECT</a></li>
                    <li><a href="/contactus">CONTACTUS</a></li>
                    <li><a href="/adminlogin">ADMIN</a></li>
                    <li><a href="/facultylogin">FACULTY</a></li>
                    <li><a href="/studentlogin">STUDENT</a></li>
                    
                    
                    
                </ul>
            </div>
            <i class="fa fa-bars"onClick="showMenu()"></i>
        </nav>  
        <div class="text-box">
        <h1>Manage your project at ease</h1>
        <!-- <p>Faster , quicker and reliablxe</p> -->
        <p>An easier way to work</p>
    <a href="feature.html"class="hero-btn">Visit Us To know More</a>
         </div>  
    </section>
    </div>
    </div>
    </div>
    </div>
<!--- Our offers--->
<div class="slide slide2">
<section
    class="course">
    <h1> Things we do</h1>
    <p>Flexible ,Easy to complete your project</p>

    <div class="row">
        <div class="course-col">
            <h3>Flexible</h3>
            <p>Change in requirements ? no worries !! <br>
                Do it at ease
            </p>
        </div>
        <div class="course-col">
            <h3>User Friendly</h3>
            <p>
                Our User-Friendly Interface lets you finish your project efficiently
            </p>
        </div>
        <div class="course-col">
            <h3>Remainder</h3>
            <p>Get a remainder ahead of your deadline
            </p>
        </div>
    </div>
</section>
</div>
<!------Partners------->
<section class="campus">
<h1>Our Partners</h1>
<p>
</p>

<div class="row">
    <div class="campus-col">
      
        <div class="layer">
        <h3>Air-Asia</h3>
    </div>
</div>
<div class="campus-col">
    
    <div class="layer">
    <h3>Flyn</h3>
    </div>
</div>
<div class="campus-col">
    
    <div class="layer">
    <h3>ZetSpeed</h3>
    </div>
</div>
</div>
</section>

<!---Facilities--->
<section class="facilities">
    <h1>Our Services</h1>
    <p>Project Management</p>

    <div class="row">
        <div class="facilities-col">
            <!-- <img src="Capture.PNG"> -->
            <h3>Auto Remainders</h3>
            <p>Get remainders ahead of your deadline</p>
        </div>
        <div class="facilities-col">
            <!-- <img src="Roadmap.jpg"> -->
            <h3>Get your works done</h3>
            <p>Post your work / status</p>
        </div>
        <div class="facilities-col">
            <!-- <img src="project-template.jpg"> -->
            <h3>Pre-Checks</h3>
            <p>Check before submitting your project </p>
        </div>
    </div>
</section>

<!----Testmonials------->

<section class="testimonials">
    <h1>What Our Client Says</h1>
    <p1>It's our pleasure receiving user feedback</p1>
    
    <div class="row">
      <div class="testimonial-col">
          <img src="user1.jpg">
          <div>
              <p>Great Service</p>
              <h3> Christine Berkley</h3>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star-o"></i>
            </div>
      </div>
      <div class="testimonial-col">
        <img src="user2.jpg">
        <div>
            <p>Faster, good and reliable interface </p>
            <h3> David Byer</h3>
            <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star"></i>
              <i class="fa fa-star-half-o"></i>
          </div>
    </div>
    </div>

</section>

<!-----Call to Action------>

<section class="cta">
    <h1>Have doubts?<br> Signup right away</h1>
    <a href="contact.html"class="hero-btn">CONTACT US</a>
</section>

<!-----Footer----->

<section class="footer">
    <h4>About Us</h4>
    <p>ProMent - Work Solutions<br>
    </p>
    <div class="icons">
        <i class="fa fa-facebook" id="facebook"></i>
        <i class="fa fa-twitter" id="twitter"></i>
        <i class="fa fa-instagram" id="instagram"></i>
        <i class="fa fa-linkedin" id="linkedin"></i>
    </div>
    <p>Made with <i class="fa fa-heart-o"></i> by ProMent Solutions</p>
</section>

    <script>

        var navLinks = document.getElementById("navLinks");

        function showMenu(){
            navLinks.style.right = "0";
        }
        function hideMenu(){
            navLinks.style.right = "-200px";
        }
    </script>

</body>
</html>