<%-- 
    Document   : registrationfinal
    Created on : 25-Mar-2023, 10:18:55 pm
    Author     : nisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8" />
    <!-- <script
      src="https://kit.fontawesome.com/Your Kit Here.js"
      crossorigin="anonymous"
    ></script> -->
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login</title>
    <link rel="stylesheet" href="loginfinal/style.css" />
    <link rel="stylesheet" href="loginfinal/main.css" />
  </head>
  <body>
    
    <div class="container">
          <div class="singin">
        <div class="left"></div>
        <div class="right">
          <div class="form">
            <div class="header">
              <div>
                <h1>Register To Typing Maestro</h1>
              </div>
              <div class="icon">
                <a href="#">
                  <i class="fa-brands fa-facebook-f"></i>
                </a>
                <a href="#">
                  <i class="fa-brands fa-twitter"></i>
                </a>
              </div>
            </div>
           <form class="form-inside"  method="post" action="RegisterServlet">
                <div class="up"></div>
              <div class="label">
                <label for="">Username</label>
              </div>
              <input type="text" name="name" id="username" placeholder="Username" required>

              <div class="up"></div>
              <div class="label">
                <label for="">Email</label>
              </div>
              <input type="text" name="email" id="username" placeholder="email" required>

              <div class="up"></div>
              <div class="label">
                <label for="">Password</label>
              </div>
              <input
                type="password"
                name="password"
                id="password"
                placeholder="password"
                required
              />
              <div class="up"></div>
              <div class="box">
              <input type="submit" value="Register" /></div>
              <div class="footer-form">
                <div class="check-box">
                  <!-- <input type="checkbox" name="" id="checkbox" />
                  <label for="checkbox"> Remember Me </label> -->
                </div>
                <div class="forgot">
                  <!-- <a href="#">Forgot your Password?</a> -->
                </div>
              </div>
              <div class="not-member">
                <span
                  >Already a Member?
                  <a href="loginfinal.jsp" class="singup_option">Login</a></span
                >
              </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    
  </body>
</html>
