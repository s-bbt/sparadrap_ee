package fr.pompey.cda22045.sparadrap_ee.servlets;

import beans.Client;
import dao.ClientDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "ClientRechercheSt" , value = "/ClientRechercheSt")
public class ClientRechercheSt extends HttpServlet {

    private ClientDAO clientDAO;

    @Override
    public void init() throws ServletException {
        this.clientDAO = new ClientDAO();
    }

//    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        ArrayList<Client> clients = clientDAO.findAll();
//        request.setAttribute("clientsList", clients);
//        this.getServletContext().getRequestDispatcher("/clients_vue_principale.jsp").forward(request, response);
//    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        this.getServletContext().getRequestDispatcher("/clients_vue_principale.jsp").forward(request, response);
    }

    // TODO DoPost pour récupérer les champs formulaire de recherche
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        ArrayList<Client> clients = clientDAO.findAll(nom, prenom);
        request.setAttribute("clientsList", clients);
        this.getServletContext().getRequestDispatcher("/testResClient.jsp").forward(request, response);
    }

}


