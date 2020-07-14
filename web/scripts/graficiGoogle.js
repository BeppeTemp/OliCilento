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


    var chart = new google.visualization.LineChart(document.getElementById('curve_chart_1'));
    chart.draw(data_1, options);
}



function drawChart_2(){
    var options = {
        title: 'Dati Qualitativi',
        curveType: 'function',
        legend: { position: 'bottom' }
    };


    var chart = new google.visualization.LineChart(document.getElementById('curve_chart_2'));
    chart.draw(data_2, options);
}


function addRisorse() {

    var r = document.getElementById("risorse");
    var risorse = r.options[r.selectedIndex].value;

    var a = document.getElementById("anno");
    var anno = a.options[a.selectedIndex].value;

    data_1.addRows([
        [anno,  parseInt(risorse)]
    ]);

    drawChart_1();


}

function addClassificazione() {
    var intero;

    var c = document.getElementById("classe");
    var classificazione = c.options[c.selectedIndex].value;


    var a = document.getElementById("anno2");
    var anno = a.options[a.selectedIndex].value;


    if(classificazione === 'A'){
        intero = 6;
    }
    if(classificazione === 'B'){
        intero = 5;
    }
    if(classificazione === 'C'){
        intero = 4;
    }
    if(classificazione === 'D'){
        intero = 3;
    }
    if(classificazione === 'E'){
        intero = 2;
    }
    if(classificazione == 'F'){
        intero = 1;
    }
    console.log(intero);
    data_2.addRows([
        [anno, parseInt(intero) ]
    ]);

    drawChart_2();

}


