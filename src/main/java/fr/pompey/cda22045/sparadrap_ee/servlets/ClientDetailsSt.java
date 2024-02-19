package fr.pompey.cda22045.sparadrap_ee.servlets;

import beans.Client;
import dao.ClientDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

// affiche les informations détaillées du client cliqué + transmet l'id du client dans un champ caché
@WebServlet (name = "ClientDetailsSt", value = "/ClientDetailsSt")
public class ClientDetailsSt extends HttpServlet {

    private ClientDAO clientDAO;

    @Override
    public void init() throws ServletException {
        this.clientDAO = new ClientDAO();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        récupérer id du client
        int client_id = Integer.parseInt(request.getParameter("id"));
//        DAO
        Client client = clientDAO.find(client_id);
//      set détails du client
        request.setAttribute("client", client);
        this.getServletContext().getRequestDispatcher("/client_details.jsp").forward(request, response);
    }

}
