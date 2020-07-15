package it.unisa.server.OliCilento.Servlet;

import com.google.gson.Gson;
import it.unisa.server.OliCilento.Beans.Prodotto;
import it.unisa.server.OliCilento.Beans.Produttore;
import it.unisa.server.OliCilento.FakeDB.Data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "ServletRicercaProduttori")
public class ServletRicercaProduttori extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int risorsa = Integer.parseInt(request.getParameter("risorsa"));
        String livello = request.getParameter("livello").toUpperCase();
        List<Produttore> match = new LinkedList<>();

        PrintWriter out = response.getWriter();

        for (Prodotto o : Data.getProdotti()) {
            if(o.getRisorse() >=  risorsa && o.getLivello().name().compareTo(livello) == 0){
                for (Produttore p: Data.getData().values()) {
                    if(o.getIdProduttore() == p.getId()){
                        match.add(p);
                    }
                }
            }

        }

        String json = new Gson().toJson(match);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        out.print(json);
        out.flush();

    }
}
