google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

function drawChart() {
    var quantitativi = google.visualization.arrayToDataTable([
        ['Year', 'Quantità Prodotto', 'Classificazione'],
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