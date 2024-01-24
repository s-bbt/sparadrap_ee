package fr.pompey.cda22045.sparadrap_ee.servlets;

import dao.ClientDAO;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet (name = "ClientAccueilSt", value = "/ClientAccueilSt")
public class ClientAccueilSt extends HttpServlet {

    private ClientDAO clientDAO;

    @Override
    public void init() throws ServletException {
        this.clientDAO = new ClientDAO();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
//        ArrayList<Client> clients = (ArrayList<Client>) clientDAO.findAll();
//        request.setAttribute("clientsList", clients);
        this.getServletContext().getRequestDispatcher("/clients_vue_principale.jsp").forward(request, response);
    }

}
