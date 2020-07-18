<%--
  Created by IntelliJ IDEA.
  User: loren
  Date: 04/07/2020
  Time: 16:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="produttore_sessione" class="it.unisa.server.OliCilento.Beans.Produttore"></jsp:useBean>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>Pagina Personale</title>
    <link rel="stylesheet" type="text/css" href="css/personalp.css">
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="scripts/graficiGoogle.js"></script>
</head>
<style>
    body {
        background-image: url("css/images/personalp.png");
        background-repeat: no-repeat;
        background-attachment: fixed;
    }
</style>
<body>
<%//check if the user is registered
    Boolean logged = (Boolean) session.getAttribute("log");
    if((logged == null) || !logged.booleanValue()){
        response.sendRedirect("login.jsp");
    }%>
<div class="page">
    <div class="navbar">
        <div class="titlediv">
            <h1 class="title"><a class="link2" href="index.jsp">OliCilento</a></h1>
        </div>
        <div class="buttondiv">
            <form action="ServletLogout" method="post">
                <input type="submit" class="button" value="Logout">
            </form>
        </div>
    </div>
    <div class="body">
        <h1 class="name">${produttore.nome}  ${produttore.cognome}</h1>
        <h1 class="paragraf">Inserisci Disponibilità:</h1>
        <form class="form" action="ServletInserimentoOlio" method="post">
            <select name="risorse">
                <option class="option" value="0" selected>Quantità disponibile</option>
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">60</option>
            </select>
            <select name="livello">
                <option value="Extra Vergine" select>Classificazione</option>
                <option value="A">Extra Vergine</option>
                <option value="B">Vergine</option>
                <option value="C">Lampate</option>
            </select>
            <input type="submit" class="button" value="Inserisci">
            <%-- Codice per l'allert dell'inserimento completato          --%>
            <%Boolean status_olio = (Boolean) session.getAttribute("status_olio");
                if(status_olio != null && status_olio.booleanValue()){
                    session.removeAttribute("status_olio");%>
                    <script> alert("Inserimento Olio Completato")</script>
            <%}%>
        </form>

        <h1 class="paragraf">Statistiche:</h1>

        <div class="g1">
            <div id="curve_chart_1" class="graph"></div>

            <select id="risorse">
                <option value="quantità_prodotto" selected>Quantità Prodotto</option>
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>

            <select id="anno">
                <option value="anno" selected>Anno</option>
                <option value="2020">2020</option>
                <option value="2019">2019</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                <option value="2016">2016</option>
            </select>
            <button class="button" type="button" onclick="addRisorse()">Inserisci</button>
        </div>

        <div class="g2">
            <div id="curve_chart_2" class="graph"></div>
            <input class="acid" id="acido" type="number" step="0.05" min="0" max="3" placeholder="Acidità (0-3)" value="0">

            <select id="anno2">
                <option value="anno" selected>Anno</option>
                <option value="2020">2020</option>
                <option value="2019">2019</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                <option value="2016">2016</option>
            </select>
            <button class="button" type="button" onclick="addClassificazione()">Inserisci</button>
        </div>
        <h1 class="paragraf" style="margin-top: 40px">Biografia:</h1>
        <form class="form" action="ServletModificaBio" method="post">
            <textarea class="inputtx2" type="text" rows="10" cols="30"name="bio">${produttore.biografia}</textarea>
            <input class="button2" type="submit" value="Inserisci">
            <%-- Codice per l'allert dell'inserimento completato          --%>
            <%Boolean status_bio = (Boolean) session.getAttribute("status_bio");
                if(status_bio != null && status_bio.booleanValue()){
                    session.removeAttribute("status_bio");%>
            <script> alert("Biografia modificata con successo")</script>
            <%}%>
        </form>
    </div>
    <footer class="footer">
        <p> E-mail: Oli_Cilento@gmail.com</p>
        <p>@Copyright - 2020 Progetto di: Giuseppe Arienzo e Cocchinone Lorenzo Paolo.</p>
    </footer>
</div>
</body>
</html>