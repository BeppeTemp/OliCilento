package it.unisa.server.OliCilento.FakeDB;

import it.unisa.server.OliCilento.Beans.Classificazione;
import it.unisa.server.OliCilento.Beans.Prodotto;
import it.unisa.server.OliCilento.Beans.Produttore;

import java.util.HashMap;
import java.util.LinkedList;
import java.util.Map;

public class Data {

    private static Map<Integer, Produttore> data = new HashMap<Integer, Produttore>();
    private static LinkedList<Prodotto> prodotti = new LinkedList<Prodotto>();


    private static boolean loaded = false;


    public Data() {
    }

    public static Map<Integer, Produttore> getData() {
        return data;
    }

    public static LinkedList<Prodotto> getProdotti() {
        return prodotti;
    }

    // Inizializzazione del finto database
    public static void addData(){

        if(!loaded){
            data.put(1, new Produttore(1, "Vincenzo.Malandrino@gmail.com", "123456789", "Vincenzo", "Malandrino", 64, "Agropoli", "3295680000", Data_2.VINCENZO));
            data.put(2, new Produttore(2, "Antonio.Malandrino@gmail.com","123456789", "Antonio ", "Malandrino", 45, "Perdifumo", "3985260000", Data_2.NICOLA_ANTONIO));
            data.put(3, new Produttore(3, "Nicola.Malandrino@gmail.com", "123456789", "Nicola", "Malandrino", 20, "Perdifumo", "3695210000",  Data_2.NICOLA_ANTONIO));
            data.put(4, new Produttore(4, "Michela.Abate@gmail.com", "123456789","Michela", "Abate", 35, "Salerno", "3291240000", Data_2.MICHELA));
            data.put(6, new Produttore(5, "Antonio.Moro@gmail.com", "123456789","Antonio", "Moro", 30, "Napoli", "3295860000",  Data_2.ANTONIO));
            data.put(6, new Produttore(6,  "Francesco.Rossi@gmail.com","123456789", "Francesco", "Rossi", 25, "Salerno", "3358690000",  Data_2.FRANCESCO));

            prodotti.add(new Prodotto(2, 50, Classificazione.B));
            prodotti.add(new Prodotto(2, 20, Classificazione.A));
            prodotti.add(new Prodotto(2, 30 , Classificazione.C));

            prodotti.add(new Prodotto(1, 40, Classificazione.A));
            prodotti.add(new Prodotto(1, 20, Classificazione.B));
            prodotti.add(new Prodotto(1, 60, Classificazione.C));

            prodotti.add(new Prodotto(3, 50, Classificazione.A));
            prodotti.add(new Prodotto(3, 10, Classificazione.B));
            prodotti.add(new Prodotto(3, 50, Classificazione.C));

            prodotti.add(new Prodotto(4, 50, Classificazione.A));
            prodotti.add(new Prodotto(4, 20, Classificazione.B));
            prodotti.add(new Prodotto(4, 60, Classificazione.C));

            prodotti.add(new Prodotto(5, 60, Classificazione.A));
            prodotti.add(new Prodotto(5, 20, Classificazione.B));
            prodotti.add(new Prodotto(5, 10, Classificazione.C));

            prodotti.add(new Prodotto(6, 60, Classificazione.A));
            prodotti.add(new Prodotto(6, 10, Classificazione.B));
            prodotti.add(new Prodotto(6, 20, Classificazione.C));

            loaded = true;
        }


    }

    // AGgiunta di un produttore di oli
    public static void add(Produttore pr){

        for (int k: data.keySet()) {
            if( k == pr.getId()){
                return;
            }
        }

        data.put(pr.getId(), pr);

    }

    //Aggiunta di un nuovo Olio di un Produttore
    public static void add(Prodotto pr){
        prodotti.add(pr);
    }

    // Modifica di un Produttore
    public static void modifica(Produttore newPr){
        for (int k: data.keySet()) {
            if( k == newPr.getId()){
                data.replace(k, newPr);
            }
        }

        return;
    }

    //Modifica di un Olio
    public static void modifica(Prodotto newPr){
        for (Prodotto p: prodotti) {
            if(p.getIdProduttore() == newPr.getIdProduttore() && p.getLivello().compareTo(newPr.getLivello()) == 0){
                p = newPr;
            }

        }
    }


    public static int getLastKey(){
        return data.keySet().size();
    }

    public static Produttore login(String mail, String pwd){
        for (Produttore k: data.values()) {
            if( k.getMail().compareToIgnoreCase(mail) == 0 && k.getPassword().compareTo(pwd) == 0){
                return k;
            }
        }

        return new Produttore(9999, "NULL", "NULL", "NULL","NULL", 9999, "NULL", "NULL", "NULL");
    }
}
