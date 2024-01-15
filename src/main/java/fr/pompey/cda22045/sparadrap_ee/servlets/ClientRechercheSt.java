package fr.pompey.cda22045.sparadrap_ee.servlets;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "ClientRechercheSt" , value = "/ClientRechercheSt")
public class ClientRechercheSt extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/client_vue_principale.jsp").forward(request, response);
    }
}
