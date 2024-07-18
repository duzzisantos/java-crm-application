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
import ValidationRules.*;

/**
 *
 * @author Duzie Uche-Abba
 */
@WebServlet(urlPatterns = {"/AccountManagerServlet"})

public class AccountManagerServlet extends HttpServlet {
@EJB
private AccountmanagersFacadeLocal AccountManagerSession;
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
        System.out.println("First name: " + request.getParameter("manager_first_name"));
        System.out.println("Last name: " + request.getParameter("manager_last_name"));
        System.out.println("Product specialization: " + request.getParameter("product_specialization"));
        System.out.println("Email: " + request.getParameter("manager_email"));
         System.out.println("Phone number: " + request.getParameter("manager_phone"));
        System.out.println("Grade level: " + request.getParameter("grade_level"));
        System.out.println("Date of employment: " + request.getParameter("doe"));
        
      try{
          
        EmailValidationRules evr = new EmailValidationRules();
        evr.TestEmailAddress(request.getParameter("manager_email"));
          
       
        
        //Create data to be stored in AccountManagers table
        Accountmanagers acc = new Accountmanagers();
       
        acc.setFirstName(request.getParameter("manager_first_name"));
        acc.setLastName(request.getParameter("manager_last_name"));
        acc.setProductSpecialization(request.getParameter("product_specialization"));
        acc.setEmail(request.getParameter("manager_email"));
        acc.setGradeLevel(request.getParameter("grade_level"));
        
        //Since HTML date input values are parsed as strings in the request body, we ought to convert them to date format to fit into SQL and Obey data rules in Java
        DateCleanser cleanser = new DateCleanser(request.getParameter("doe"));
        acc.setDateOfEmployment(cleanser.getCleansedDate());
        acc.setPhoneNumber(request.getParameter("manager_phone"));
        
        AccountManagerSession.create(acc);
        System.out.println(AccountManagerSession.count());

        //Add prompt message to add another data
        request.setAttribute("showToast", true);
        
        //Call the menu again
       request.getRequestDispatcher("/AddAccountManager.jsp").forward(request, response);
     
      }catch(Exception e){
          request.setAttribute("exception-thrown", e.getMessage());
           //Call the menu again
          request.getRequestDispatcher("/AddAccountManager.jsp").forward(request, response);
          System.out.println(e.getMessage());
      }
        

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
