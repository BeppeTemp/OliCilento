package it.unisa.server.OliCilento.Servlet;

import it.unisa.server.OliCilento.Beans.Produttore;
import it.unisa.server.OliCilento.FakeDB.Data;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Registrazione")
public class ServletRegistrazione extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nome = request.getParameter("nome");
        String cognome = request.getParameter("cognome");
        String mail = request.getParameter("mail");
        int anni = Integer.parseInt(request.getParameter("anni"));
        String paese = request.getParameter("paese");
        String telefono = request.getParameter("telefono");
        String password = request.getParameter("password");
        String re_password = request.getParameter("password");



        if(password.compareTo(re_password) == 0){
            Data.add(new Produttore(Data.getLastKey() + 1, mail, password, nome, cognome, anni, paese, telefono));
        }


        request.getRequestDispatcher("login.jsp").forward(request, response);




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
