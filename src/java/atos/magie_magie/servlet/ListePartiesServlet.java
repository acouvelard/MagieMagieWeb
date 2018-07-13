/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package atos.magie_magie.servlet;

import atos.magie_magie.entity.Partie;
import atos.magie_magie.entity.Partie_;
import atos.magie_magie.services.PartieService;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrateur
 */
@WebServlet(name = "ListeParties", urlPatterns = {"/listeParties"})
public class ListePartiesServlet extends HttpServlet {
    
    private PartieService service = new PartieService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        List<Partie> parties = service.listerPartiesNonDemarrees();
        
        req.setAttribute("listeParties", parties);
        
        req.getRequestDispatcher("listerParties.jsp").forward(req, resp);
        
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        req.getSession().setAttribute("idPartie", Partie_.id);
        resp.sendRedirect("rejoindrePartie");
    }
    
}
