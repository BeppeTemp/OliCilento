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


    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages':['corechart']});
        google.charts.setOnLoadCallback(drawChart);

        function drawChart() {
            var quantitativi = google.visualization.arrayToDataTable([
                ['Year', 'Qualità Prodotto', 'Classificazione'],
                ['2020',  5,      10],
                ['2019',  10,      15],
                ['2018',  25,      30],
                ['2017',  30,      35]
            ]);

            var qualitativi = google.visualization.arrayToDataTable([
                ['Year', 'Qualità Prodotto', 'Classificazione'],
                ['2020',  10,      20],
                ['2019',  20,      30],
                ['2018',  30,      40],
                ['2017',  40,      50]
            ]);

            var options_1 = {
                title: 'Dati Quantitativi',
                curveType: 'function',
                legend: { position: 'bottom' }
            };

            var options_2 = {
                title: 'Dati Qualitativi',
                curveType: 'function',
                legend: { position: 'bottom' }
            };

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart_1'));
            chart.draw(quantitativi, options_1);

            var chart = new google.visualization.LineChart(document.getElementById('curve_chart_2'));
            chart.draw(qualitativi, options_2);
        }
    </script>
</head>
<body>
<header>
    <h1>Oli Cilento</h1>
</header>

<h2>Nome: ${produttore.nome}  ${produttore.cognome}</h2>
<h4>E-Mail: ${produttore.mail} </h4>
<h4>Telefono: ${produttore.telefono} </h4>
<h4>Paese: ${produttore.paese} </h4>
<form action="ServletLogout" method="post">
    <input type="submit" value="Logout">
</form>


<div id="inserimentoProdotto">
    <p>Inserisci disponibilità</p>
    <form>
        <select>
            <option value="quantità_disponibile" selected>Quantità Disponibile</option>
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="4">4</option>
            <option value="5">5</option>
        </select>

        <select>
            <option value="classificazione_test" selected>Classificazione test</option>
            <option value="a">A</option>
            <option value="b">B</option>
            <option value="c">C</option>
            <option value="d">D</option>
            <option value="e">E</option>
            <option value="f">F</option>
        </select>

        <input type="submit" value="Inserisci">
    </form>
</div>

<div id="GraficoQuantitativo">
    <div id="curve_chart_1" style="width: 900px; height: 500px"></div>
    <p>Dati Quantitativi</p>
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


<div id="GraficoQualitativo">
    <div id="curve_chart_2" style="width: 900px; height: 500px"></div>
    <p>Dati Qualitativi</p>
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




<p> Modifica Biografia </p>
<textarea id="w3review" name="w3review" rows="4" cols="50">

    ${produttore.biografia}

    </textarea>
<button> Modifica </button>


</body>
</html>
