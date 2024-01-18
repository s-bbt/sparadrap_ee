/*
* servlet client_formulaire.jsp
* récupère et affiche les données entrées sur cette page
* */
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

@WebServlet(name="ClientFormulaireSt", value="/ClientFormulaireSt")
public class ClientFormulaireSt extends HttpServlet {

    private ClientDAO clientDAO;
    @Override
    public void init() throws ServletException {
        this.clientDAO = new ClientDAO();
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        Client nv_client = new Client(nom, prenom);
        clientDAO.create(nv_client);
        request.setAttribute("confirmationMessage", "Le client a été enregistré avec succès.");

    }

}
