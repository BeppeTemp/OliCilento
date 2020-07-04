<%--
  Created by IntelliJ IDEA.
  User: loren
  Date: 04/07/2020
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="it">

<head>
    <meta charset="UTF-8">
    <title>Login OilCilento</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="css/login.css">

</head>
<body>
<header>
    <h1>Oli Cilento</h1>
</header>

<div>
    <h1>Login</h1>
    <form action="ServletLogin" method="post">
        <input type="text" placeholder="E-Mail" name="mail" required><br>

        <input type="password" placeholder="Password" name="password" required><br>

        <input class="button" type="submit" value="Login"><br>
    </form>
</div>


</body>
</html>
