<%-- 
    Document   : registration.jsp
    Created on : 23-Mar-2023, 12:04:16 pm
    Author     : nisha
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login and Register page</title>
    <!-- CSS -->
    <link rel="stylesheet" href="login/style.css">
    <!-- Remix Icons -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@2.5.0/fonts/remixicon.css" rel="stylesheet">
</head>

<body>
    
    <div class="container">
        <div class="row">
            <img src="https://devandresilva.github.io/loginscreen/person-working.svg" alt="img" class="img">
        </div>
        <div class="row">
            <form action="RegisterServlet" class="form" id="register">
                <h2>Register</h2>
                <label for="email">Email Address</label>
                <div class="pass-reset" onclick="activeInput(this)">
                    <input type="email" name="email" class="email" id="emailInput" placeholder="name@mail.com">
                </div>
                <label for="password">Password</label>
                <div class="pass-reset" onclick="activeInput(this)">
                    <input type="password" class="password" name="password" id="password" placeholder="**********">
                </div>
                <label for="re-password">Re-Password</label>
                <div class="pass-reset" onclick="activeInput(this)">
                    <input type="password" class="password" name="re-password" id="re-password" placeholder="**********">
                </div>
                <button class="btn btn-login">Register</button>
                <p>Do you have an account? <a onclick="changeToLogin()" id="chnageToLogin">Sign in</a></p>
                <p class="or">or</p>
                <!--<button class="btn btn-gogle-auth"><i class="google ri-google-fill"></i>Authorize with Google</button>-->
            </form>
        </div>
    </div>
    <!-- JS -->
    <script src="login/script.js"></script>
</body>

</html>
