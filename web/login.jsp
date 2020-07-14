<%--
  Created by IntelliJ IDEA.
  User: Giuseppe Arienzo
  Date: 04/07/2020
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="it">
<head>
    <link rel="stylesheet" type="text/css" href="css/loreg.css">
    <meta charset="UTF-8">
    <title>Login</title>
</head>
<style>
    body {
        background-image: url("css/images/login.jpg");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size:cover;
    }
</style>
<body>
<div class="page">
    <div class="navbar">
        <div class="titlediv">
            <h1 class="title"><a class="link" href="index.jsp">OliCilento</a></h1>
        </div>
    </div>
    <div class="main">
        <h1 class="paragraf">Login</h1>

        <p style="color: white">Usare le sequenti credenziali per il testing:</p>
        <p style="color: white">Vincenzo.Malandrino@gmail.com</p>
        <p style="color: white">123456789</p>

        <%Boolean error = (Boolean) session.getAttribute("error");
            if(error != null && error.booleanValue()){
                    session.removeAttribute("error");%>
        <p id="login" class="login_alert">Username o Password errate.</p>
        <%}%>

        <form class="form" action="ServletLogin" method="post">
            <input class="inputtx" type="text" placeholder="E-Mail" name="mail" required">
            <input class="inputtx" type="password" placeholder="Password" name="password" required">
            <input class="button" type="submit" value="Login">
        </form>
    </div>
</div>
<footer>
    <h3> Oli Cilento</h3>

    <p> E-mail: Oli_Cilento@gmail.com</p>

    <p>@Copyright - 2020 Progetto di: Giuseppe Arienzo e Cocchinone Lorenzo Paolo.</p>
</footer>
</body>
</html>

</body>
</html>
