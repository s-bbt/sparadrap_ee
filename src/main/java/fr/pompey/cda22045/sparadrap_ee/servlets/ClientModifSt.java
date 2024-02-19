package fr.pompey.cda22045.sparadrap_ee.servlets;

import beans.Client;
import dao.ClientDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet (name = "ClientModifSt", value = "/ClientModifSt")
public class ClientModifSt extends HttpServlet {

    private ClientDAO clientDAO;

    @Override
    public void init() throws ServletException {
        this.clientDAO = new ClientDAO();
    }

//    TODO méthode suppression client + ajouter pop up : suppression effectuée ou non
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int client_id = Integer.parseInt(request.getParameter("client_id"));
        Client client = clientDAO.find(client_id);
        request.setAttribute("client", client);
        clientDAO.delete(client);
        this.getServletContext().getRequestDispatcher("/ClientAccueilSt").forward(request, response);
    }

}
