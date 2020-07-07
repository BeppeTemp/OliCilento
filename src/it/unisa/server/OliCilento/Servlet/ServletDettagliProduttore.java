package it.unisa.server.OliCilento.Servlet;

import it.unisa.server.OliCilento.Beans.Prodotto;
import it.unisa.server.OliCilento.Beans.Produttore;
import it.unisa.server.OliCilento.FakeDB.Data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.LinkedList;
import java.util.List;

@WebServlet(name = "ServletDettagliProduttore")
public class ServletDettagliProduttore extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        synchronized (session){

            int idProduttore = Integer.parseInt(request.getParameter("id"));
            List<Produttore> prod = new LinkedList<>(Data.getData().values());

            int risorse = 0;

            for(Prodotto o : Data.getProdotti()){
                if(o.getIdProduttore() == idProduttore){
                    risorse += o.getRisorse();
                }
            }

            for (Produttore p : prod) {
                if(idProduttore == p.getId()){
                    session.setAttribute("informazioni", p);
                    session.setAttribute("risorse", risorse);
                    request.getRequestDispatcher("produttore.jsp").forward(request, response);
                }

            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
