/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.magie_magie.servlet;

import atos.magie_magie.services.JoueurService;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "RejoindrePartie", urlPatterns = {"/rejoindrePartie"})
public class RejoindrePartieServlet extends HttpServlet {

    private JoueurService service = new JoueurService();


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
               
        String pseudo = req.getParameter("nomJoueur");
        String avatar = req.getParameter("choixAvatar");
        
        long partieId = (long) req.getSession().getAttribute("idPartie");
              
        service.rejoindrePartie(pseudo, avatar, partieId );
        
        resp.sendRedirect("demarrerPartie");
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        resp.sendRedirect("rejoindrePartie.jsp");
    }
    
    

}
