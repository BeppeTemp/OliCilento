<%--
  Created by IntelliJ IDEA.
  User: Giuseppe Arienzo
  Date: 04/07/2020
  Time: 16:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="it">
<head>
    <link rel="stylesheet" type="text/css" href="css/index.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="scripts/produttori.js"></script>
    <script src="scripts/ricerca.js"></script>

    <meta charset="UTF-8">
    <title>OliCilento</title>
</head>
<style>
    body {
        background-image: url("css/images/homepage.jpg");
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
</style>
<body>
<div class="page">
    <div class="navbar">
        <div class="titlediv"><h1 class="title"><a class="link2" href="index.jsp">OliCilento</a></h1></div>
        <div class="buttondiv">
            <button class="button"><a class="link" href="registrazione.jsp">Registrati come produttore</a></button>
            <button class="button"><a class="link" href="login.jsp">Login</a></button>
        </div>
    </div>
    <div class="map">
        <img class="image" src="css/images/cilento.png">
        <div id="b1" class="ball"></div>
        <div id="b2" class="ball"></div>
        <div id="b3" class="ball"></div>
        <div id="b4" class="ball"></div>
        <div id="b5" class="ball"></div>
        <div id="b6" class="ball"></div>
    </div>
    <div class="tablediv">
        <h1 class="paragraf">Ricerca produttore:</h1>


        <select name="Quantità" id="risorsa">
            <option class="option" value="null">Quantità Ricercata</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
            <option value="6">6</option>
        </select>
        <select name="Classificazione" id="classificazione">
            <option value="null">Classificazione Ricercata</option>
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="C">C</option>
            <option value="D">D</option>
            <option value="E">E</option>
            <option value="F">F</option>
        </select>
        <p class="textarea">Per Inserire una disponibilità di prodotto, dei dati qualitativi o quantitavi, cliccare sul pulsante "Accedi" oppure se non si possiede un account sul pulsante "Registrati come Produttore".</p>
        <button class="button" onclick="search()" >Avvia Ricerca</button>

        <table class="table">
            <tr><td class="first">Nome</td><td class="first">Età</td><td class="first">Quantità Disponibile</td><td class="first">Numero di telefono</td></tr>

        </table>



    </div>
</div>
</body>
</html>