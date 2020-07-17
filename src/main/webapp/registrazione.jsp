<%--
  Created by IntelliJ IDEA.
  User: Giuseppe Arienzo - Lorenzo Paolo Cocchinone
  Date: 04/07/2020
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="it">
<head>
    <link rel="stylesheet" type="text/css" href="css/loreg.css">
    <meta charset="UTF-8">
    <title>Registrazione</title>
</head>
<style>
    body {
        background-image: url("css/images/registrazione.jpg");
        background-repeat: no-repeat;
        background-attachment: fixed;
        background-size:cover;
    }
</style>
<body>
<div class="page">
    <div class="navbar">
        <div class="titlediv"><h1 class="title"><a class="link" href="index.jsp">OliCilento</a></h1></div>
    </div>
    <div class="main">
        <h1 class="paragraf">Registrazione</h1>
        <form class="form" action="ServletRegistrazione"  method="post" id="registrazione">
            <input class="inputtx" type="text" name="nome" placeholder="Nome"  required>
            <input class="inputtx" type="text" name="cognome" placeholder="Cognome"  required>
            <input class="inputtx" type="email" name="mail" placeholder="E-Mail"  required>
            <input class="inputtx" type="text" name="anni" placeholder="Età"  required>
            <input class="inputtx" type="text" name="paese" placeholder="Paese di Provenienza"  required>
            <input class="inputtx" type="text" name="telefono" placeholder="Numero di Telefono"  required>
            <input class="inputtx" type="password" name="password" maxlength="100" minlength="8" placeholder="Password" required>
            <input class="inputtx" type="password" name="re-password" maxlength="100" minlength="8" placeholder="Ripeti Password" required>
            <input class="button" type="submit" value="Registrati">
        </form>
    </div>
    <footer class="footer">
        <p> E-mail: Oli_Cilento@gmail.com</p>
        <p>@Copyright - 2020 Progetto di: Giuseppe Arienzo e Cocchinone Lorenzo Paolo.</p>
    </footer>
</div>
</body>
</html>
