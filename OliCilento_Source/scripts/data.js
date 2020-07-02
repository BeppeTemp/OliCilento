class Produttore {

     constructor(email, nome, cognome, anni, provenienza, telefono, password, biografia) {
         this.nome = nome;
         this.cognome = cognome;
         this.anni = anni;
         this.provenienza = provenienza;
         this.telefono = telefono;
         this.password = password;
         this.email = email;
         this.biografia = biografia;

     }

}

data_produttori = [];

data_produttori.push(new Produttore("Vincenzo.Malandrino@gmail.com", "Vincenzo", "Malandrino", 64, "Agropoli", "3295680000", "123456789", "ciao"))
data_produttori.push(new Produttore("Antonio.Malandrino@gmail.com", "Antonio ", "Malandrino", 45, "Perdifumo", "3985260000", "123456789", "ciao"));
data_produttori.push(new Produttore("Nicola.Malandrino@gmail.com", "Nicola", "Malandrino", 20, "Perdifumo", "3695210000", "123456789", "ciao"));
data_produttori.push(new Produttore("Michela.Abate@gmail.com", "Michela", "Abate", 35, "Salerno", "3291240000", "123456789", "ciao"));
data_produttori.push(new Produttore("Antonio.Moro@gmail.com", "Antonio", "Moro", 30, "Napoli", "3295860000", "123456789", "ciao"));
data_produttori.push(new Produttore("Francesco.Rossi@gmail.com", "Francesco", "Rossi", 25, "Salerno", "3358690000", "123456789", "ciao"));




function retriveData() {

    var email = document.forms["myForm"]["email"].value;
    var password = document.forms["myForm"]["password"].value;


    for(i = 0; i < data_produttori.length; i++ ){
        if(data_produttori[i].email == email && data_produttori[i].password == password ){
            alert("Utente collegato");
            window.location.href = "index.html";
            login(data_produttori[i]);
            return true;
        }

    }

    alert("E-Mail o Password non corrette");




}