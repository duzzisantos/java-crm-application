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
import java.util.List;

//Persistence related dependeencies are required as well
import entity.*;
import session.*;
import javax.persistence.*;
import javax.transaction.*;
import javax.annotation.*;
import javax.enterprise.context.*;
import javax.ejb.*;

/**
 *
 * @author Duzie Uche-Abba
 */
@WebServlet(urlPatterns = {"/CampaignServlet"})
public class CampaignServlet extends HttpServlet {
    @EJB
    private CampaignenrollmentsFacadeLocal CampaignEnrollmentSession;
   


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
       
         System.out.println("Campaign Name: " + request.getParameter("campaign_enroll_name"));
        System.out.println("Campaign Manager: " + request.getParameter("campaign_enroll_manager"));
        System.out.println("Account Manager ID: " + request.getParameter("campaign_enroll_manager_ID"));
        System.out.println("Campaign ID: " + request.getParameter("campaign_enroll_ID"));
        System.out.println("Customer ID: " + request.getParameter("campaign_customer_ID"));
        System.out.println("Campaign Product: " + request.getParameter("campaign_product_ID"));
        System.out.println("Has responded?: " + request.getParameter("has_responded"));
        System.out.println("Campaign content: " + request.getParameter("campaign_content"));


        //Sends submitted form data to database
      Campaignenrollments enr = new Campaignenrollments();
      
      enr.setCampaignId(Integer.parseInt(request.getParameter("campaign_enroll_ID")));
      enr.setCampaignName(request.getParameter("campaign_enroll_name"));
      enr.setAccountManagerId(Integer.parseInt(request.getParameter("campaign_enroll_manager_ID")));
      enr.setCampaignManager(request.getParameter("campaign_enroll_manager"));
      enr.setProductId(Integer.parseInt(request.getParameter("campaign_product_ID")));
      enr.setCustomerId(Integer.parseInt(request.getParameter("campaign_customer_ID")));
      enr.setCampaignContent(request.getParameter("campaign_content"));
      enr.setHasResponded(Boolean.parseBoolean(request.getParameter("has_responded")));
      
      
      
      
     
     
     
      CampaignEnrollmentSession.create(enr);
      System.out.println(CampaignEnrollmentSession.count());
        
        
        //Add prompt message to add another data
        request.setAttribute("showToast", true);
       
        request.getRequestDispatcher("/CampaignEnroll.jsp").forward(request, response);
      
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
