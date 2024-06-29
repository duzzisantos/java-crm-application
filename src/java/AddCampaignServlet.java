/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.*;
import javax.servlet.*;

//Persistence related dependeencies are required as well
import entity.*;
import session.*;
import javax.persistence.*;
import javax.transaction.*;
import javax.annotation.*;
import javax.enterprise.context.*;
import javax.ejb.*;

import utilities.DateCleanser;

/**
 *
 * @author Duzie Uche-Abba
 */
@WebServlet(urlPatterns = {"/AddCampaignServlet"})
public class AddCampaignServlet extends HttpServlet {
    @EJB
    private CampaignsFacadeLocal CampaignSession;
    

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        
        System.out.println(CampaignSession.count());
        
        System.out.println("Campaign name: " + request.getParameter("campaign_name"));
        System.out.println("Campaign type: " + request.getParameter("campaign_type"));
        System.out.println("Campaign manager: " + request.getParameter("campaign_manager"));
        System.out.println("Campaign start: " + request.getParameter("campaign_start"));
         System.out.println("Campaign end: " + request.getParameter("campaign_end"));
        System.out.println("Campaign product: " + request.getParameter("campaign_product"));
        
        //Store campaign data into database
        Campaigns camp = new Campaigns();
        
        camp.setCampaignName(request.getParameter("campaign_name"));
        camp.setCampaignType(request.getParameter("camapaign_type"));
        camp.setCampaignManager(request.getParameter("campaign_manager"));
        camp.setCampaignProduct(request.getParameter("campaign_product"));
        
        //Convert HTML date string input into format which obeys SQL and Java data types
        DateCleanser campaignStart = new DateCleanser(request.getParameter("campaign_start"));
        DateCleanser campaignEnd = new DateCleanser(request.getParameter("campaign_end"));
        
        camp.setCampaignStart(campaignStart.getCleansedDate());
        camp.setCampaignEnd(campaignEnd.getCleansedDate());
        
        CampaignSession.create(camp);
        
        //Add prompt message to add another data
        request.setAttribute("showToast", true);
        
        //Call the menu again
        request.getRequestDispatcher("/AddCampaign.jsp").forward(request, response);
      

   }
    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
