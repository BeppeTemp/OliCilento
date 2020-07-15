package it.unisa.server.OliCilento.Servlet;

import it.unisa.server.OliCilento.Beans.Classificazione;
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

@WebServlet(name = "ServletInserimentoOlio")
public class ServletInserimentoOlio extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        HttpSession session = request.getSession();

        synchronized (session){

            int risorse = Integer.parseInt(request.getParameter("risorse"));
            String livello = request.getParameter("livello").toUpperCase();
            Produttore login = (Produttore) session.getAttribute("produttore");

            for (Classificazione l: Classificazione.values()) {
                if(l.name().compareTo(livello) == 0){

                    Data.add(new Prodotto(login.getId(), risorse,  l));
                }

            }


            request.getRequestDispatcher("paginaPersonale.jsp").forward(request, response);

        }


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
