
function sortByName() {

    let righe = document.getElementsByClassName("row");
    let size = righe.length;


    for(i = 0; i < size; i++){
        for (j = 1; j < size; j++){
            let a = righe.item(i).children.item(2).textContent;
            let b = righe.item(j).children.item(2).textContent;

            if(a.localeCompare(b) === 1){

                righe.item(j).parentNode.insertBefore(righe.item(j), righe.item(i));

            }
        }

    }


}

function sortByRisorse() {

    let righe = document.getElementsByClassName("row");
    let size = righe.length;


    for(i = 0; i < size; i++){
        for (j = 1; j < size; j++){
            let a = parseInt(righe.item(i).children.item(4).textContent);
            let b = parseInt(righe.item(j).children.item(4).textContent);

            if(a > b){
                righe.item(j).parentNode.insertBefore(righe.item(j), righe.item(i));
            }
        }

    }


}

function sortByAnni() {
    let righe = document.getElementsByClassName("row");
    let size = righe.length;


    for(i = 0; i < size; i++){
        for (j = 1; j < size; j++){
            let a = parseInt(righe.item(i).children.item(3).textContent);
            let b = parseInt(righe.item(j).children.item(3).textContent);

            if(a > b){
                righe.item(j).parentNode.insertBefore(righe.item(j), righe.item(i));
            }
        }

    }

}

function sortByTelefono() {
    let righe = document.getElementsByClassName("row");
    let size = righe.length;

    for(i = 0; i < size; i++){
        for (j = 1; j < size; j++){
            let a = righe.item(i).children.item(5).textContent;
            let b = righe.item(j).children.item(5).textContent;

            if(a.localeCompare(b) === 1){

                righe.item(j).parentNode.insertBefore(righe.item(j), righe.item(i));

            }
        }

    }

}