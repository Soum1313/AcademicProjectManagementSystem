<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
 <section class="sub-header">
        <nav> 
            <div class="nav-links" id="navLinks">
                <i class="fa fa-times"onclick="hideMenu()" ></i>
                <ul>
                    <li><a href="/">HOME</a></li>
                    <li><a href="about">ABOUT</a></li>
                    <li><a href="contactus">CONTACT US</a></li>
                    <li><a href="login">LOGIN</a></li>
                    
                </ul>
            </div>
            <i class="fa fa-bars"onClick="showMenu()"></i>
        </nav>  
          <h1>Contact Us</h1>
    </section>
<!------Contact us------->
<section class="location">
    <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3826.663145865659!2d80.62040591468933!3d16.441925688651626!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3a35f0a2a7d81943%3A0x8ba5d78f65df94b8!2sK%20L%20University!5e0!3m2!1sen!2sin!4v1646717818199!5m2!1sen!2sin" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
</section>

<section class="contact-us">
    <div class="row">
        <div class="contact-col">
           <div>
            <i class="fa fa-home"></i>
            <span>
                <h5> KL University</h5>
                <p>Vaddeswaram, Guntur, INDIA</p>
            </span>
           </div>
           <div>
            <i class="fa fa-phone"></i>
            <span>
                <h5>+91 7013142135
                </h5>
                <p>Monday to Saturday, 10AM to 6PM</p>
            </span>
           </div>
           <div>
            <i class="fa fa-envelope-o"></i>
            <span>
                <h5>2000031350@kluniversity.in
                   
                </h5>
                <p>Email us your query</p>
            </span>
           </div>
        </div>
        <div class="contact-col">
        <form action="form-handler.php" method="post">
            <input type="text" name="name" placeholder="Enter your name"required>
            <input type="email" name="email" placeholder="Enter your email address"required>
            <input type="text" name="subject" placeholder="Enter your subject"required>
            <textarea rows="8" name="message" placeholder="Message" required></textarea>
            <button type="submit" class="hero-btn red-btn">Send Message</button>
        </form>
        </div>
    </div>
</section>




<!-----Footer------>

<section class="footer">
    <h4>About Us</h4>
    <p>Project Management at ease</p>
    <div class="icons">
        <i class="fa fa-facebook"></i>
        <i class="fa fa-twitter"></i>
        <i class="fafa-instagram"></i>
        <i class="fa fa-linkedin"></i>
    </div>
    <p>Made with <i class="fa fa-heart-o"></i> by ProMent Work Solutions</p>
</section>



</body>
</html>