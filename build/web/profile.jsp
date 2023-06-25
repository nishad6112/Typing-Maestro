<%-- 
    Document   : profile
    Created on : 23-Mar-2023, 12:44:14 pm
    Author     : nisha
--%>

<%@page import="newpackage1.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.html");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <link rel="stylesheet" href="landing/css/front.css">
<!--          Swiper CSS -->
<!--        <link rel="stylesheet" href="cardslider/swiper-bundle.min.css">-->

<!--         CSS -->
<!--        <link rel="stylesheet" href="cardslider/style.css">-->
    </head>
    <body>
        
        <header class="header">
    <div class="logo">
      <img src="landing/img/feature1.svg"> 
      <span>Typing Maestro</span> 
    </div>
    <nav class="nav-items">
      <a href="Typing_test.html">TYPING TEST</a>
       <a href="exam.html">TYPING JOBS</a> 
       <a href="progress.jsp">MY PROGRESS</a> 
        <a href="FAQS.jsp">FAQS</a>
         <a href="#footer">Contact</a> 
      <a href="logout">LOGOUT</a>
    </nav>
  </header>
    <main>
    <div class="main-center">
    <div class="intro">
      <h1>Learn To Type <span class ="auto-input"></span></h1>
      <p>Don't Practice until you get it right. Practice until you can't get it wrong !!.</p>
<!--    </div>
    <div class="student-typing"><img src="landing/img/learner.svg"></div>
    </div>-->

<!--    <div id= "jobs"  class="about-me">-->
<!--      <div class="about-me-text">
        <h2>Tips To Type Fast </h2>-->
<!--        <p>Set a goal: Which skills do you want to develop or improve on?
           Methods: Are you familiar with the basic typing techniques?
Posture & Ergonomics: How to maintain a healthy posture?
Progress: How to improve skills with patience and persistence?
Relaxation: When to take regular breaks from tasks and activities?
Courses: Consider typing software to track your learning progress.
Training: Practice daily or on a regular basis.
Testing: Know your score, strengths and weaknesses.</p>-->
<!--      </div>-->
<!--      <img src="landing/img/confuse-man.jpg" alt="me">-->
<!--    </div>-->
    </main>
          
  <footer class="footer">
    <div id="contact"  class="contactSection section">
      <div class="text-center">
        <h2>Wanna Reach out ?</h2>
        
        <a href="mailTo:dahare6112@gmail.com" class="contactButton">Send an Email!</a>
         <p> Made with &#128151; in India &#128525;</p>
      </div>
  </footer>
  <script src="https://unpkg.com/typed.js@2.0.132/dist/typed.umd.js"></script>">
<script>
        var typed =new Typed(".auto-input",{
            strings :["Faster !!" , "Accurate !!","Better !!"],
            typeSpeed : 150,
            backSpeed: 150,
            loop:true
        });
</script>
    </body>
</html>
