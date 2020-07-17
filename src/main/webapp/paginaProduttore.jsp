<%--
  Created by IntelliJ IDEA.
  User: loren
  Date: 04/07/2020
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="informazioni_produttore" class="it.unisa.server.OliCilento.Beans.Produttore"></jsp:useBean>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Produttore</title>
    <link rel="stylesheet" type="text/css" href="css/pageprod.css">
    <style>
        body {
            background-image: url("css/images/pageprod.jpg");
            background-repeat: no-repeat;
            background-attachment: fixed;
            background-size: cover;
        }
    </style>
</head>

<body>
    <div class="page">
        <div class="navbar">
            <div class="titlediv">
                <h1 class="title"><a class="link2" href="index.jsp">OliCilento</a></h1>
            </div>
            <div class="buttondiv">
                <button class="button"><a class="link" href="registrazione.jsp">Registrati come produttore</a></button>
                <button class="button"><a class="link" href="login.jsp">Login</a></button>
            </div>
        </div>

        <div class="main">
            <div class="data">
                <h1 class="paragraf">Nome: ${informazioni.nome} ${informazioni.cognome}</h1>
                <h1 class="minip">Età: ${informazioni.anni}</h1>
                <h1 class="minip">Paese di provenienza: ${informazioni.paese}</h1>
                <h1 class="minip">Quantità disponibile: ${risorse}</h1>
                <h1 class="minip">Numero di telefono: ${informazioni.telefono}</h1>
            </div>
            <div class="img">
                <img class="image" src="css/images/imgprofile.jpg">
            </div>
            <h1 class="paragraf" style="margin-left: 10px;">Biografia:</h1>
            <p class="textarea">${informazioni.biografia}</p>
        </div>
        <footer class="footer">
            <p> E-mail: Oli_Cilento@gmail.com</p>
            <p>@Copyright - 2020 Progetto di: Giuseppe Arienzo e Cocchinone Lorenzo Paolo.</p>
        </footer>
    </div>
</body>
</html>
