<!DOCTYPE html>
<html>
    <head>
        <title>ProMent</title>
        <style>
.root1
{ 
    background-image: linear-gradient(rgb(95, 201, 95),rgb(84, 228, 247));
    text-align: center;
   border-style:double;
   border-radius: 20px;
   border-color:grey black;
   width: 400px;
   height: 450px;
   margin:100px;
}
.title1
{
    color : rgba(12, 65, 95, 0.959);
    font-size:x-large;
}
.pic1
{
    text-align: center;
    margin-right: 8%;
    border-style:solid;
    border-radius: 10%;
}
.button1
{
    align-text:center
}
.root2
{ 
    background-image: linear-gradient(rgb(51, 41, 41),rgb(84, 228, 247));
    text-align: center;
   border-style:double;
   border-radius: 20px;
   border-color:grey black;
   width: 400px;
   height: 450px;
   margin:100px;
}
.title2
{
    color : rgba(183, 59, 221, 0.959);
    font-size:x-large;
}
.pic2
{
    text-align: center;
    margin-right: 8%;
    border-style:solid;
    border-radius: 10%;
}
.button2
{
    align-text:center
}
nav{
    display: flex;
    padding: 2% 6%;
    justify-content: space-between;
    align-items: center;
}
nav img{
    width: 100px;
}
/*for moving the alignments from left to right*/
.nav-links{
    flex: 1; 
    text-align: right;
}
.nav-links ul li{
    list-style:none;
    display: inline-block;
    padding: 8px 12px; 
    position: relative;
}
.nav-links ul li a{
    color:rgb(141, 20, 20);
    text-decoration:none;
    font-size: 13px;
}
/*for underlines of home...*/
.nav-links ul li::after{ 
    content:'';
    width: 0%;
    height:2px;
    background: #ec1919;
    display:block;
    margin:auto;
    transition: 0.5s;
}
/*when we move the cursor on home the underline will be appeared*/
.nav-links ul li:hover::after{
    width:100%
}

</style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
    <section>
        <nav> 
            <!-- <a href="index.html"><img src="logo4.jpg"></a> -->
            <div class="nav-links" id="navLinks">
                <ul>
                    <li><a href="index">HOME</a></li>
                    <li><a href="about">ABOUT OUR PROJECT</a></li>
                    <li><a href="contact">CONTACT</a></li>
                    <li><a href="adminlogin">ADMIN</a></li>
                    
                </ul>
            </div>
        </nav>  
    </section>

       <table>
        <tr>
          <td> 
     <form method="GET" action="facultylogin">
        
            <div class="root1">
                <p class="title1">FACULTY LOGIN</p>
                <img class="pic1" src="faculty.jpg" width="150" height="150" border-style="solid"></img>
                <br><br>
                <input type="submit" value="Login" class="button">
            </div>
            </form>
<a href="facultylogin">Faculty Login</a>
        <td>
        <form method="GET" action="studentlogin">
        
            <div class="root2">
                <p class="title2">STUDENT LOGIN</p>
                <img class="pic2" src="student.png" width="150" height="150" border-style="solid"></img>
                <br><br>
                <input type="submit" value="Login" class="button">
            </div>
            </form>
        </td>
        </tr>
       </table>

    </body>
</html>