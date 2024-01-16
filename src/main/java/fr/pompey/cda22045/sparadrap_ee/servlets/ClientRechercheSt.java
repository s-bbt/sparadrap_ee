package fr.pompey.cda22045.sparadrap_ee.servlets;

import beans.Client;
import dao.ClientDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ClientRechercheSt" , value = "/ClientRechercheSt")
public class ClientRechercheSt extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ClientDAO clientDAO = new ClientDAO();
        List<Object> clients = clientDAO.findAll();
        request.setAttribute("clientsList", clients);
        this.getServletContext().getRequestDispatcher("/WEB-INF/client_vue_principale.jsp").forward(request, response);
    }

    // TODO DoPost pour récupérer les champs
//    public void doGet(HttpServletRequest request) {
//        String nom = request.getParameter("nom");
//        String prenom = request.getParameter("prenom");
//        request.setAttribute("nom", nom);
//        request.setAttribute("prenom", prenom);
//    }

}


