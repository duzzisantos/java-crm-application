<%-- 
    Document   : AddCampaign
    Created on : Jun 11, 2024, 10:41:52 PM
    Author     : User
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="entity.Accountmanagers" %>
<%@ page import="entity.Products" %>
<%@ page import="session.AccountmanagersFacadeLocal" %>
<%@ page import="session.ProductsFacadeLocal" %>

<% AccountmanagersFacadeLocal acc = (AccountmanagersFacadeLocal) new InitialContext().lookup("java:module/AccountmanagersFacade");

   List<Accountmanagers> accountManagerList = acc.findAll();
%>
<% ProductsFacadeLocal prod = (ProductsFacadeLocal) new InitialContext().lookup("java:module/ProductsFacade");

   List<Products> productList = prod.findAll();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="index.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <script src="index.js"></script>
        <title>Add Campaign</title>
    </head>
    <body>
        <%@include file="Navbar.jsp" %> %>
        <section class="container">
            <%@include file="SideBar.jsp" %>
             <main>
                 <h1 class="header-color">Add Campaign</h1> 
                 <hr>
             
            <form method="post" action="AddCampaignServlet" name="addCampaign">
                <div class="toast" id="toast1">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
                <div class="form-group">
                    <label for="campaign_name">Campaign Name</label>
                    <small class="form-text">Provide a meaningful, memorable name for your campaign. It might be a code name - eg: 'Operation Empty Shelf'.</small>
                    <input type="text" name="campaign_name" autocomplete="off" id="campaign_name" placeholder="Enter campaign name" required/>
                </div>
                <div class="form-group">
                    <label for="campaign_type">Campaign Type</label>
                    <select id="campaign_type" name="campaign_type" required>
                        <option  selected>Please select</option>
                        <option  value="Weekly">Weekly</option>
                        <option  value="Quarterly">Quarterly</option>
                        <option  value="Monthly">Monthly</option>
                        <option  value="Holiday">Holiday</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="campaign_manager">Campaign Manager</label>
                    <small class="form-text">Provide the name of the Account Manager who serves as campaign manager.</small>
                    <select id="campaign_manager" name="campaign_manager" required>
                        <option selected>Please Select</option>
                   <% for(Accountmanagers managerName : accountManagerList){ 
                       pageContext.setAttribute("managerName", managerName);%>
                   
                   <option value="${managerName.firstName} ${managerName.lastName}">${managerName.firstName} ${managerName.lastName}</option>
                   
                   <% } %>
                    </select>
                </div> 
                <div class="form-group">
                    <label for="campaign_manager_ID">Campaign Manager ID</label>
                  <select id="campaign_manager_ID" name="campaign_manager_ID" required>
                   <option selected>Please Select</option>
                   <% for(Accountmanagers element : accountManagerList){ 
                       pageContext.setAttribute("element", element);%>
                   
                   <option value="${element.accountManagerId}">${element.accountManagerId} -  ${element.firstName} ${element.lastName}</option>
                   
                   <% } %>
                      
                  </select>
                    
                </div> 
                <div class="form-group">
                    <label for="campaign_start">Campaign Start</label>
                    <input type="date" name="campaign_start" id="campaign_start" required/>
                </div> 
                <div class="form-group">
                    <label for="campaign_end">Campaign End</label>
                    <input type="date" name="campaign_end" id="campaign_end" required/>
                </div> 
                <div class="form-group">
                    <label for="campaign_product">Campaign Product</label>
                    <small class="form-text">Provide only the main product being pushed in this campaign. This helps you track your product goals during the campaign.</small>
                    <select name="campaign_product" id="campaign_product" required>
                        <option selected>Please Select</option>
                        <% for(Products pd : productList){ 
                       pageContext.setAttribute("pd", pd);%>
                   
                      <option value="${pd.productName}">${pd.productName}</option>
                   
                   <% } %>
                    </select>
                </div> 
                <div class="form-group">
                    <label for="campaign_product_ID">Campaign Product ID</label>
                     <select id="campaign_product_ID" name="campaign_product_ID" required>
                         <option selected>Please Select</option>
                     <% for(Products item : productList){ 
                       pageContext.setAttribute("item", item);%>
                   
                   <option value="${item.productId}">${item.productId} - ${item.productName}</option>
                   
                   <% } %>
                    </select>
                </div> 
                 <div class="form-group">
                    <label for="campaign_sales_value">Campaign Sales Value Target</label>
                    <small class="form-text">How much in USD do you plan to make? Provide a rough estimate.</small>
                    <input type="number" name="campaign_sales_value" id="campaign_sales_value" required placeholder='Enter sales value target'/>
                </div> 
                
                 <div class="form-group">
                    <label for="campaign_sales_volume">Campaign Sales Volume Target</label>
                    <small class="form-text">How many units of this product do you plan to sell?</small>
                    <input type="number" name="campaign_sales_volume" id="campaign_sales_volume" required placeholder='Enter sales volume target'/>
                </div> 
               
                <button type="submit" class="btn-primary">Submit</button>
                <input type="reset" class="btn-secondary"/>
                
                <div class="feedback"></div>
            </form>
                 
             </main>
            
             
        </section>
         <%
        // Use JSP scriptlet to check if the toast should be shown
        Boolean showToast = (Boolean) request.getAttribute("showToast");
        if (showToast != null && showToast) {
    %>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const toast = document.getElementById('toast1');
            showToast(toast);
        });
    </script>
    <%
        }
    %>
    </body>
</html>
