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
@WebServlet(urlPatterns = {"/AddCustomerServlet"})
public class AddCustomerServlet extends HttpServlet {
    @EJB
    private CustomersFacadeLocal CustomerSession;
    

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
      
        System.out.println(CustomerSession.count());
        System.out.println("First name: " + request.getParameter("first_name"));
        System.out.println("Last name: " + request.getParameter("last_name"));
        System.out.println("Email: " + request.getParameter("email"));
        System.out.println("Phone: " + request.getParameter("phone"));
        System.out.println("City: " + request.getParameter("city"));
        System.out.println("State: " + request.getParameter("state_us"));
        System.out.println("ZIP Code: " + request.getParameter("zip_code"));
         System.out.println("Postal address: " + request.getParameter("postal_address"));
        System.out.println("Date of birth: " + request.getParameter("dob"));
        
        Customers cust = new Customers();
        
        cust.setFirstName(request.getParameter("first_name"));
        cust.setLastName(request.getParameter("last_name"));
        cust.setEmail(request.getParameter("email"));
        cust.setPhoneNumber(request.getParameter("phone"));
        cust.setCity(request.getParameter("city"));
        cust.setUsState(request.getParameter("state_us"));
        cust.setPostalAddress(request.getParameter("postal_address"));
        cust.setZipCode(Integer.parseInt(request.getParameter("zip_code")));
        
        DateCleanser cleanser = new DateCleanser(request.getParameter("dob"));
        cust.setDateOfBirth(cleanser.getCleansedDate());
        
        
        CustomerSession.create(cust);
        
        //Add prompt message to add another data
        request.setAttribute("showToast", true);
        
        //Call the menu again
        request.getRequestDispatcher("/AddCustomer.jsp").forward(request, response);
        
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
