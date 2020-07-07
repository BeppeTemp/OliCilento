package it.unisa.server.OliCilento.Beans;

public class Prodotto {

    private int idProduttore;
    private int risorse;
    private Classificazione livello;

    public Prodotto() {
    }

    public Prodotto(int idProduttore, int risorse, Classificazione livello) {
        this.idProduttore = idProduttore;
        this.risorse = risorse;
        this.livello = livello;
    }

    public int getIdProduttore() {
        return idProduttore;
    }

    public void setIdProduttore(int idProduttore) {
        this.idProduttore = idProduttore;
    }

    public int getRisorse() {
        return risorse;
    }

    public void setRisorse(int risorse) {
        this.risorse = risorse;
    }

    public Classificazione getLivello() {
        return livello;
    }

    public void setLivello(Classificazione livello) {
        this.livello = livello;
    }

    @Override
    public String toString() {
        return "Prodotto{" +
                "idProduttore=" + idProduttore +
                ", risorse=" + risorse +
                ", livello=" + livello +
                '}';
    }
}
