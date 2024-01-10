/*
* servlet client_formulaire.jsp
* récupère et affiche les données entrées sur cette page
* */
package fr.pompey.cda22045.sparadrap_ee.servlets;

import beans.Client;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name="ClientFormulaireSt", value="/ClientFormulaireSt")
public class ClientFormulaireSt extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        this.getServletContext().getRequestDispatcher("/WEB-INF/client_formulaire.jsp").forward(request, response);
    }
}
