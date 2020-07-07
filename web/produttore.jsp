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
</head>
<div class="navbar">
    <div class="titlediv"><h1 class="title"><a class="link2" href="index.jsp">OliCilento</a></h1></div>
    <div class="buttondiv">
        <button class="button"><a class="link" href="registrazione.jsp">Registrati come produttore</a></button>
        <button class="button"><a class="link" href="login.jsp">Login</a></button>
    </div>
</div>


<h1>Nome: ${informazioni.nome} ${informazioni.cognome}</h1>
<p>Età: ${informazioni.anni}</p>
<p>Paese di provenienza: ${informazioni.paese}</p>
<p>Numero di telefono: ${informazioni.telefono}</p>

<p>Quantità disponibile: ${risorse}</p>

<textarea disabled rows="15" cols="110">
    ${informazioni.biografia}
    </textarea>


</body>
</html>
