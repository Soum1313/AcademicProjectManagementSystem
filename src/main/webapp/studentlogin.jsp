				<!DOCTYPE html>
				<html lang="en" dir="ltr">
				  <head>
				    <meta charset="utf-8">
				    <title>Transparent Login Form UI</title>
				    <link rel="stylesheet" href="studentloginstyle.css">
				   <script src="https://kit.fontawesome.com/a076d05399.js"></script>
				  </head>
				  <body>
				    <div class="bg-img">
				      <div class="content">
				        <header>Student Login
				        				        <a href="/" style="color:red"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
</svg></a></header>
				        <form method="POST" action="checkstudentlogin">
				          <div class="field">
				            <span class="fa fa-user"></span>
				            <input type="text" required placeholder="Username" name="suname" required>
				          </div>
				          <div class="field space">
				            <span class="fa fa-lock"></span>
				            <input type="password" class="pass-key" required placeholder="Password" name="spwd">
				            <span class="show">SHOW</span>
				          </div>
				          <br>
				          <div class="field">
				            <input type="submit" value="LOGIN">
				          </div>
				        </form>
				        
				       
				      </div>
				    </div>
				
				    <script>
				      const pass_field = document.querySelector('.pass-key');
				      const showBtn = document.querySelector('.show');
				      showBtn.addEventListener('click', function(){
				       if(pass_field.type === "password"){
				         pass_field.type = "text";
				         showBtn.textContent = "HIDE";
				         showBtn.style.color = "#3498db";
				       }else{
				         pass_field.type = "password";
				         showBtn.textContent = "SHOW";
				         showBtn.style.color = "#222";
				       }
				      });
				    </script>
				
				
				  </body>
				</html>
