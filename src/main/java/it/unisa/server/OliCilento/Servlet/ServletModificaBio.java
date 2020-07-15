package it.unisa.server.OliCilento.Servlet;

import it.unisa.server.OliCilento.Beans.Produttore;
import it.unisa.server.OliCilento.FakeDB.Data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletModificaBio")
public class ServletModificaBio extends HttpServlet {
    /**
     *
     */
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession();

        synchronized (session){
            Produttore login = (Produttore) session.getAttribute("produttore");
            String bio = request.getParameter("bio");

            login.setBiografia(bio);

            Data.modifica(login);

            request.getRequestDispatcher("paginaPersonale.jsp").forward(request, response);


        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



    }
}
