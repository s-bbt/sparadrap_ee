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

@WebServlet(name = "ClientRechercheSt" , value = "/ClientRechercheSt")
public class ClientRechercheSt extends HttpServlet {

    private ClientDAO clientDAO;

    @Override
    public void init() throws ServletException {
        this.clientDAO = new ClientDAO();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ArrayList<Client> clients = (ArrayList<Client>) clientDAO.findAll();
        request.setAttribute("clientsList", clients);
        this.getServletContext().getRequestDispatcher("/clients_vue_principale.jsp").forward(request, response);
    }

    // TODO DoPost pour récupérer les champs formulaire de recherche
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");

//        request.setAttribute("nom", nom);
//        request.setAttribute("prenom", prenom);
//        ArrayList<Client> clientsList = clientDAO.findAll(nom, prenom);
//        clientsList.add(client);
//        Client client = new Client(nom, prenom);

        ArrayList<Client> clients = (ArrayList<Client>) clientDAO.findByParam(nom, prenom);
        request.setAttribute("clientsList", clients);

//        request.setAttribute("clientsList", clientsList);
        this.getServletContext().getRequestDispatcher("/resultatListeClients.jsp").forward(request, response);
    }

}


