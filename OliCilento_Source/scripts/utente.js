class Utente {

    constructor(email, nome, cognome, anni, provenienza, telefono, password, ciao) {
        this.nome = nome;
        this.cognome = cognome;
        this.anni = anni;
        this.provenienza = provenienza;
        this.telefono = telefono;
        this.password = password;
        this.email = email;
        this.ciao = ciao
    }
}



function login(utente) {

    let utenteLoggato = new Utente(utente.email, utente.nome, utente.cognome, utente.anni, utente.provenienza, utente.telefono, utente.password, utente.ciao);

    console.log(utenteLoggato);

    return utenteLoggato;
}