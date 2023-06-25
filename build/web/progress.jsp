<%-- 
    Document   : progress.jsp
    Created on : 28-Mar-2023, 7:28:12 pm
    Author     : nisha
--%>
<%@page import="newpackage1.UserDatabase"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="newpackage1.User"%>
<%@page import="newpackage1.ConnectionPro"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Page</title>
        <link rel="stylesheet" href="landing/css/front.css">
        <style>
table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
}
th, td {
  background-color: #b7d5ec;
}
</style>
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
      <a href="logout">LOGOUT</a>
    </nav>
  </header>
    <main>
    <div class="main-center">
    <div class="intro">
        <%

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Your Progress Report</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1" style="width:50%">
<tr>

</tr>
<tr bordercolor="#8123ce">
<td><b>S_NO</b></td>
<td><b>DATE_TIME</b></td>
<td><b>WPM</b></td>
<td><b>MISTAKES</b></td>
</tr>
<%
try{
                Connection con=ConnectionPro.getConnection();
                //System.out.println(score);
                HttpSession session1 = request.getSession();
                
                User user=(User)session1.getAttribute("logUser");
                System.out.println(user.getEmail());
                String sql ="SELECT * FROM table_"+user.getEmail();
                PreparedStatement pt = con.prepareStatement(sql);
                resultSet = pt.executeQuery(sql);
                while(resultSet.next()){
%>
<!--<tr bgcolor="">-->

<td><%=resultSet.getInt("S_NO") %></td>
<td><%=resultSet.getTimestamp("DATE_TIME") %></td>
<td><%=resultSet.getString("WPM") %></td>
<td><%=resultSet.getString("MISTAKES") %></td>


</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
        

      
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
  
    </body>
</html>
