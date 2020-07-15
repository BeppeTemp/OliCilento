package it.unisa.server.OliCilento.Beans;


public class Produttore {

    private int id;
    private String mail;
    private String password;
    private String nome;
    private String cognome;
    private int anni;
    private String paese;
    private String telefono;
    private String biografia;

    public Produttore() {
    }

    public Produttore(int id, String mail, String password, String nome, String cognome, int anni, String paese, String telefono) {
        this.id = id;
        this.mail = mail;
        this.password = password;
        this.nome = nome;
        this.cognome = cognome;
        this.anni = anni;
        this.paese = paese;
        this.telefono = telefono;
    }

    public Produttore(int id, String mail, String password, String nome, String cognome, int anni, String paese, String telefono, String biografia) {
        this.id = id;
        this.mail = mail;
        this.password = password;
        this.nome = nome;
        this.cognome = cognome;
        this.anni = anni;
        this.paese = paese;
        this.telefono = telefono;
        this.biografia = biografia;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
    }

    public int getAnni() {
        return anni;
    }

    public void setAnni(int anni) {
        this.anni = anni;
    }

    public String getPaese() {
        return paese;
    }

    public void setPaese(String paese) {
        this.paese = paese;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public String getBiografia() {
        return biografia;
    }

    public void setBiografia(String biografia) {
        this.biografia = biografia;
    }

    @Override
    public String toString() {
        return "Produttore{" +
                "mail='" + mail + '\'' +
                ", password='" + password + '\'' +
                ", nome='" + nome + '\'' +
                ", cognome='" + cognome + '\'' +
                ", anni=" + anni +
                ", provenienza='" + paese + '\'' +
                ", telefono='" + telefono + '\'' +
                ", biografia='" + biografia + '\'' +
                '}';
    }
}
