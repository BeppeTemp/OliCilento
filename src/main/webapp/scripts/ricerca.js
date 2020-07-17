function resetBall(){
    var i = 1;

    while(i <= 6){
        $("#b" + i ).css("background-color", "red");
        $("#i" + i).css("visibility", "hidden")
        i++;
    }

}


function search() {
    var l = document.getElementById("classificazione");
    var livello = l.options[l.selectedIndex].value;

    var r = document.getElementById("risorsa");
    var risorsa = r.options[r.selectedIndex].value;

    resetBall();

    $.getJSON("ServletRicercaProduttori", {"livello": livello , "risorsa": risorsa} , function (object, status){

        $(".row").remove();

        $.getJSON("ServletDisplayRisorse", function (object_2){

            let num = 0;
            for(let x in object){
                let risorse = 0;

                for(i in object_2){

                    if (object_2[i].idProduttore == object[x].id ){
                        risorse += object_2[i].risorse;
                    }

                }

                $("#b" + object[x].id ).css("background-color", "green");
                $("#b" + object[x].id ).css("cursor","pointer")
                $("#i" + object[x].id).css("visibility", "visible");

                var riga = $("<tr class=\"row\">" +
                    "<form action=\"ServletDettagliProduttore\" method=\"post\" id=\"prod_"+ num +"\"></form>" +
                    "<input type=\"hidden\" form=\"prod_"+ num +"\" name=\"id\" value=\"" + object[x].id + "\">" +
                    "<td>" + object[x].nome + " " + object[x].cognome+ "</td>" +
                    "<td>" + object[x].anni + "</td>" +
                    "<td>" + risorse + "</td>" +
                    "<td>" + object[x].telefono + "</td>" +
                    "<td><input type=\"submit\" form=\"prod_"+ num +"\" value =\"Visualizza Pagina Produttore\"></td>" +
                    "</tr>");


                $(".table").append(riga);
                num++;


            }

        })


    })
}

