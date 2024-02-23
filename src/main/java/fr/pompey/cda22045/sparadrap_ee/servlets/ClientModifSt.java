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

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int client_id = Integer.parseInt(request.getParameter("client_id"));
        Client client = clientDAO.find(client_id);
        request.setAttribute("client", client);
        if (client!=null) {
            clientDAO.delete(client);
        }
        request.setAttribute("message", "Suppression effectuée");
        this.getServletContext().getRequestDispatcher("/ClientRechercheSt").forward(request, response);
    }

}
