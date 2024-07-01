<%-- 
    Document   : CampaignEnroll
    Created on : Jun 13, 2024, 1:14:16 AM
    Updated on: June 30, 2024
    Author     : Duzie Uche-Abba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="entity.Accountmanagers" %>
<%@ page import="entity.Products" %>
<%@ page import="entity.Customers" %>
<%@ page import="entity.Campaigns" %>
<%@ page import="session.AccountmanagersFacadeLocal" %>
<%@ page import="session.ProductsFacadeLocal" %>
<%@ page import="session.CustomersFacadeLocal" %>
<%@ page import="session.CampaignsFacadeLocal" %>

<!----This is how we feed from data stored in the database to make the User Interface more dynamic. Always define reusable data at the top level above the HTML tag------>
<% AccountmanagersFacadeLocal acc = (AccountmanagersFacadeLocal) new InitialContext().lookup("java:module/AccountmanagersFacade");

   List<Accountmanagers> accountManagerList = acc.findAll();
%>
<% ProductsFacadeLocal prod = (ProductsFacadeLocal) new InitialContext().lookup("java:module/ProductsFacade");

   List<Products> productList = prod.findAll();
%>

<% CustomersFacadeLocal cust = (CustomersFacadeLocal) new InitialContext().lookup("java:module/CustomersFacade");

   List<Customers> customerList = cust.findAll();
%>

<% CampaignsFacadeLocal camp = (CampaignsFacadeLocal) new InitialContext().lookup("java:module/CampaignsFacade");

   List<Campaigns> campList = camp.findAll();
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Campaign Enrollment</title>
        
    </head>
    <body>
          <%@include file="Navbar.jsp" %> %>
        <section class="container">
            <%@include file="SideBar.jsp" %>
            <main>
                <h1 class="header-color">Campaign Enroll</h1> 
            <hr>
           
            <form method="post" action="CampaignServlet" name="newCampaign">
                <div class="toast" id="toast5">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
                <div class="form-group">
                    <label for="campaign_enroll_ID">Campaign ID</label>
                     <select required name="campaign_enroll_ID" id="campaign_enroll_ID">
                      <option selected value="">Please Select</option>
                        <% for (Campaigns enr : campList){
                            pageContext.setAttribute("enr", enr); %>
                            
                            <option value="${enr.campaignId}">${enr.campaignId} - ${enr.campaignName}</option>
                        <%}%>
                    </select>
                </div> 
                <div class="form-group">
                    <label for="campaign_enroll_name">Campaign Name</label>
                     <select required name="campaign_enroll_name" id="campaign_enroll_name">
                        <option selected value="">Please Select</option>
                       <% for (Campaigns campName : campList){
                            pageContext.setAttribute("campName", campName); %>
                            
                            <option value="${campName.campaignName}"> ${campName.campaignName}</option>
                        <%}%>
                    </select>
                </div> 
                
                 <div class="form-group">
                    <label for="campaign_enroll_manager_ID">Account Manager ID</label>
                    <select required name="campaign_enroll_manager_ID" id="campaign_enroll_manager_ID">
                        <option selected value="">Please Select</option>
                        <% for (Accountmanagers acctId : accountManagerList){
                            pageContext.setAttribute("acctId", acctId); %>
                            
                            <option value="${acctId.accountManagerId}">${acctId.accountManagerId} - ${acctId.firstName}  ${acctId.lastName}</option>
                        <%}%>
                        
                    </select>
                </div> 
                
                 <div class="form-group">
                    <label for="campaign_enroll_manager">Account Manager Name</label>
                    <select required name="campaign_enroll_manager" id="campaign_enroll_manager">
                        <option selected value="">Please Select</option>
                        <% for (Accountmanagers acctName : accountManagerList){
                            pageContext.setAttribute("acctName", acctName); 
                        %>
                            
                            <option value="${acctName.firstName} ${acctName.lastName}">${acctName.firstName}  ${acctName.lastName}</option>
                        <%}%>
                    </select>
                </div> 
                
                 <div class="form-group">
                    <label for="campaign_product_ID">Campaign Product</label>
                    <select id="campaign_product_ID" name="campaign_product_ID" required>
                        <option selected>Please select</option>
                        <% for(Products pro : productList){ 
                       pageContext.setAttribute("pro", pro);%>
                       <option value="${pro.productId}">${pro.productId} - ${pro.productName}</option>
                   
                       <% } %>
                    </select>
                </div> 
               
                <div class="form-group">
                    <label for="campaign_customer_ID">Customer ID</label>
                    <small class='form-text'><strong>Tip:</strong> To avoid mistakes - you may want to paste this from your clipboard always.</small>
                    <select id="campaign_customer_ID" name="campaign_customer_ID" required>
                       <option selected>Please select</option>
                         <% for(Customers clients : customerList){ 
                       pageContext.setAttribute("clients", clients);%>
                       <option value="${clients.customerId}">${clients.customerId} - ${clients.firstName}  ${clients.lastName}</option>
                   
                       <% } %>
                    </select>
                </div>
              
                
                 <div class="form-group">
                    <label for="campaign_content">Campaign Content</label>
                    <small class="form-text"><b>Tip</b>: Keep your campaign content short and simple to capture leads. Max 255 characters.</small>
                    <textarea autocorrect='true' spellcheck="true"  rows="4" minlength="1" maxlength="255" type="text" name="campaign_content" id="campaign_content" placeholder="Write campaign message" required></textarea>
                    <small class="form-text" id="countdown-text"></small>
                </div> 
                
                <div class="form-group">
                    <label for="has_responded">Has Responded ?</label>
                    
                    <select required name="has_responded" id="has_responded">
                        <option selected value="False">Please Select</option>
                        <option value="true">True</option>
                        <option value="false">False</option>
                    </select>
                </div> 
                
                <button type="submit" class="btn-primary">Submit</button>
                <input type="reset" class="btn-secondary"/>
            </form>
            </main>
            
        </section>
        <script src="index.js"></script>
        
          <%
        // Use JSP scriptlet to check if the toast should be shown
        Boolean showToast = (Boolean) request.getAttribute("showToast");
        if (showToast != null && showToast) {
    %>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const toast = document.getElementById('toast5');
            showToast(toast);
        });
    </script>
    <%
        }
    %>
    </body>
</html>
