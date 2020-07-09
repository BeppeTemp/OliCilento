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

@WebServlet(name = "Login")
public class ServletLogin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Data.addData();
        HttpSession session = request.getSession();

        synchronized (session){
            String mail = request.getParameter("mail");
            String pwd = request.getParameter("password");


            Produttore login = Data.login(mail, pwd);


            if(login.getId() == 9999){
                session.setAttribute("log", "false");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }

            else{
                session.setAttribute("log", "true");
                session.setAttribute("produttore", login);
                request.getRequestDispatcher("paginaPersonale.jsp").forward(request, response);
            }
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
