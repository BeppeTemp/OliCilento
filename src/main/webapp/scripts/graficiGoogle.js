google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drwaCharts);


var data_1;
var data_2;


function drwaCharts() {

    retriveData_1();
    retriveData_2();
    drawChart_1();
    drawChart_2();


}


function retriveData_1(){
    data_1 = google.visualization.arrayToDataTable([
        ['Anno', 'Quantità Prodotto'],
        ['2015', 0],
    ]);



}

function retriveData_2(){
    data_2 = google.visualization.arrayToDataTable([
        ['Anno', 'Qualità Prodotto'],
        ['2015', 1]
    ]);

}

function drawChart_1(){
    var options = {
        title: 'Dati Quantitativi',
        curveType: 'function',
        legend: { position: 'bottom' }
    };

    var view = new google.visualization.DataView(data_1);
    view.setRows(data_1.getSortedRows({column: 0}));

    var chart = new google.visualization.LineChart(document.getElementById('curve_chart_1'));
    chart.draw(view, options);
}



function drawChart_2(){
    var options = {
        title: 'Dati Qualitativi',
        curveType: 'function',
        legend: { position: 'bottom' }
    };

    var view = new google.visualization.DataView(data_2);
    view.setRows(data_2.getSortedRows({column: 0}));

    var chart = new google.visualization.LineChart(document.getElementById('curve_chart_2'));
    chart.draw(view, options);
}


function addRisorse() {

    var r = document.getElementById("risorse");
    var risorse = r.options[r.selectedIndex].value;

    var a = document.getElementById("anno");
    var anno = a.options[a.selectedIndex].value;

    data_1.addRows([
        [anno,  parseInt(risorse)]
    ]);

    alert("Dati inseriti!\nQuantità: " + risorse + "\nAnno: " + anno);

    drawChart_1();


}

function addClassificazione() {

    var acido = document.getElementById('acido').value;

    var a = document.getElementById("anno2");
    var anno = a.options[a.selectedIndex].value;



    data_2.addRows([
        [anno, parseInt(acido) ]
    ]);

    alert("Dati inseriti!\nAcidità: " + acido + "\nAnno: " + anno);

    drawChart_2();

}


