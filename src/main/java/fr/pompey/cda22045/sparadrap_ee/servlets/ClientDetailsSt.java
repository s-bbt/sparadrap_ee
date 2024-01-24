package fr.pompey.cda22045.sparadrap_ee.servlets;

import beans.Client;
import dao.ClientDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;

public class ClientDetailsSt extends HttpServlet {

    private ClientDAO clientDAO;

    @Override
    public void init() throws ServletException {
        this.clientDAO = new ClientDAO();
    }

//    TODO methode avec js pour afficher détails clients
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Client client = null;
        request.setAttribute("client", client);
        this.getServletContext().getRequestDispatcher("/client_details.jsp").forward(request, response);
    }

    // TODO méthode doPost pour modification des infos client : tester avec "nono" (DAP : update)

}
