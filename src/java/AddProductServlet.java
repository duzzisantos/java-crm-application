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
import LegalRules.*;

/**
 *
 * @author User
 */
@WebServlet(urlPatterns = {"/AddProductServlet"})
public class AddProductServlet extends HttpServlet {
    @EJB
    private ProductsFacadeLocal ProductSession;

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
        
        
        
        System.out.println("Product name: " + request.getParameter("product_name"));
        System.out.println("Product category: " + request.getParameter("product_category"));
        System.out.println("Product price: " + request.getParameter("product_price"));
        System.out.println("Product manufacturer: " + request.getParameter("product_manufacturer"));
        System.out.println("Product manager: " + request.getParameter("product_manager"));
        System.out.println("Product origin: " + request.getParameter("product_origin"));

         try {
             
         //Test if some fields pass business rules - Here we test the countries of origin and apply special prices based on the dialog's suggestion
          
        String [] selectedCountries = {"Colombia", "Cambodia", "Vietnam", "Bangladesh",
            "Uganda", "Cote d'Ivoire", "Romania", "Ukraine", "Venezuela", "VN", "VE", "UA", "UG", "RO", "CI", "BD", "CO"};
        String [] selectedProducts = {"Baseball Hat", "Hiking Shoes", "Tennis Shoes", "Hip Flask", "Spring Jacket"};
        PriceRules rules = new PriceRules();
        rules.applyPriceRules(selectedCountries, selectedProducts, 
                request.getParameter("product_origin"), request.getParameter("product_price"));
         
             
         Products prod = new Products();
         
         prod.setProductName(request.getParameter("product_name"));
         prod.setProductCategory(request.getParameter("product_category"));
         prod.setProductPrice(Integer.parseInt(request.getParameter("product_price")));
         prod.setProductManufacturer(request.getParameter("product_manufacturer"));
         prod.setProductManager(request.getParameter("product_manager"));
         prod.setProductOrigin(request.getParameter("product_origin"));
         
         ProductSession.create(prod);
         System.out.println("Number of products: "+ ProductSession.count());
        
        
        //Add prompt message to add another data
         request.setAttribute("showToast", true);
        
        //Call the menu again
        request.getRequestDispatcher("/AddProduct.jsp").forward(request, response);
         }catch(Exception e){
             request.setAttribute("exception-thrown", e.getMessage());
              //Call the menu again
        request.getRequestDispatcher("/AddProduct.jsp").forward(request, response);
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
