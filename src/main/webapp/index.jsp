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
    <script src="scripts/riordine.js"></script>


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
        <div id="b1" class="ball">
            <form action="ServletDettagliProduttore" method="post">
                <input type="hidden" name="id" value="1">
                <input id="i1" type="submit">
            </form>
        </div>
        <div id="b2" class="ball">
            <form action="ServletDettagliProduttore" method="post">
                <input type="hidden" name="id" value="2">
                <input id="i2" type="submit">
            </form>
        </div>
        <div id="b3" class="ball">
            <form action="ServletDettagliProduttore" method="post">
                <input type="hidden" name="id" value="3">
                <input id="i3" type="submit">
            </form>
        </div>
        <div id="b4" class="ball">
            <form action="ServletDettagliProduttore" method="post">
                <input type="hidden" name="id" value="4">
                <input id="i4" type="submit">
            </form>
        </div>
        <div id="b5" class="ball">
            <form action="ServletDettagliProduttore" method="post">
                <input type="hidden" name="id" value="5">
                <input id="i5" type="submit">
            </form>
        </div>
        <div id="b6" class="ball">
            <form action="ServletDettagliProduttore" method="post">
                <input type="hidden" name="id" value="6">
                <input id="i6" type="submit">
            </form>
        </div>
    </div>
    <div class="tablediv">
        <h1 class="paragraf">Ricerca produttore:</h1>


        <select name="Quantità" id="risorsa">
            <option class="option" value="null">Quantità Ricercata</option>
            <option value="10">10</option>
            <option value="20">20</option>
            <option value="30">30</option>
            <option value="40">40</option>
            <option value="50">50</option>
            <option value="60">60</option>
        </select>
        <select name="Classificazione" id="classificazione">
            <option value="null">Classificazione Ricercata</option>
            <option value="A">Extra Vergine</option>
            <option value="B">Vergine</option>
            <option value="C">Lampate</option>
        </select>
        <p class="textarea">Per Inserire una disponibilità di prodotto, dei dati qualitativi o quantitavi, cliccare sul pulsante "Accedi" oppure se non si possiede un account sul pulsante "Registrati come Produttore".</p>
        <button class="button" onclick="search()" >Avvia Ricerca</button>

        <table class="table">
            <tr><td class="first" onclick="sortByName()">Nome</td><td class="first" onclick="sortByAnni()">Età</td><td class="first" onclick="sortByRisorse()">Quantità Disponibile</td><td class="first" onclick="sortByTelefono()">Numero di telefono</td></tr>

        </table>



    </div>
</div>


<footer>
    <h3> Oli Cilento</h3>

    <p> E-mail: Oli_Cilento@gmail.com</p>

    <p>@Copyright - 2020 Progetto di: Giuseppe Arienzo e Cocchinone Lorenzo Paolo.</p>
</footer>

</body>
</html>