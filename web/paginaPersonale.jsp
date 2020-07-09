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
<div class="page">
    <div class="navbar">
        <div class="titlediv"><h1 class="title">Nome: ${produttore.nome}  ${produttore.cognome}</h1></div>
        <div class="buttondiv">
            <form action="ServletLogout" method="post">
                <input type="submit" class="button" value="Logout">
            </form>
        </div>
    </div>
    <div class="body">
        <h1 class="paragraf">Inserisci Disponibilità:</h1>
        <form class="form" action="InserimentoOlio" method="post">
            <select name="risorse">
                <option class="option" value="0" selected>Quantità disponibile</option>
                <option value="10">10</option>
                <option value="20">20</option>
                <option value="30">30</option>
                <option value="40">40</option>
                <option value="50">50</option>
                <option value="60">30</option>
            </select>
            <select name="livello">
                <option value="Z" select>Classificazione</option>
                <option value="A">A</option>
                <option value="B">B</option>
                <option value="C">C</option>
                <option value="D">D</option>
                <option value="E">E</option>
                <option value="F">F</option>
            </select>
            <select name="annoProduzione">
                <option value="2099" selected>Anno di Produzione</option>
                <option value="2020">2020</option>
                <option value="2019">2019</option>
                <option value="2018">2018</option>
                <option value="2017">2017</option>
                <option value="2016">2016</option>
            </select>

            <input type="submit" class="button" value="Inserisci">
        </form>
        <h1 class="paragraf">Statistiche:</h1>
        <div class="g1">
            <div id="curve_chart_1" style="width: 800px; height: 200px"></div>
            <form>
                <select>
                    <option value="quantità_prodotto" selected>Quantità Prodotto</option>
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="3">3</option>
                    <option value="4">4</option>
                    <option value="5">5</option>
                </select>

                <select>
                    <option value="anno" selected>Anno</option>
                    <option value="2020">2020</option>
                    <option value="2019">2019</option>
                    <option value="2018">2018</option>
                    <option value="2017">2017</option>
                    <option value="2016">2016</option>
                </select>
                <input type="submit" value="Inserisci">
            </form>
        </div>
        <div class="g2">
            <div id="curve_chart_2" style="width: 800px; height: 200px"></div>
            <form>
                <select>
                    <option value="classificazione" selected>Classificazione</option>
                    <option value="a">A</option>
                    <option value="b">B</option>
                    <option value="c">C</option>
                    <option value="d">D</option>
                    <option value="e">E</option>
                    <option value="f">F</option>
                </select>


                <select>
                    <option value="anno" selected>Anno</option>
                    <option value="2020">2020</option>
                    <option value="2019">2019</option>
                    <option value="2018">2018</option>
                    <option value="2017">2017</option>
                    <option value="2016">2016</option>
                </select>

                <input type="submit" value="Inserisci">
            </form>
        </div>
        <h1 class="paragraf">Biografia:</h1>
        <form class="form">
            <textarea class="inputtx2" type="textarea"  name="quantity">${produttore.biografia}</textarea>
            <input class="button2" type="button" value="Inserisci">
        </form>
    </div>
</div>
</body>
</html>