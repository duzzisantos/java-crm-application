<%-- 
    Document   : InfoManagement
    Created on : Jun 27, 2024, 11:55:48 PM
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
<%@ page import="entity.Campaignenrollments" %>
<%@ page import="session.AccountmanagersFacadeLocal" %>
<%@ page import="session.ProductsFacadeLocal" %>
<%@ page import="session.AccountmanagersFacadeLocal" %>
<%@ page import="session.ProductsFacadeLocal" %>
<%@ page import="session.CustomersFacadeLocal" %>
<%@ page import="session.CampaignsFacadeLocal" %>
<%@ page import="session.CampaignenrollmentsFacadeLocal" %>


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

<% CampaignenrollmentsFacadeLocal campenr = (CampaignenrollmentsFacadeLocal) new InitialContext().lookup("java:module/CampaignenrollmentsFacade");

   List<Campaignenrollments> campEnroll = campenr.findAll();
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="Tables.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Campaign Enrollment</title>
        
    </head>
    <body>
          <nav class="navbar">
            <a href="index.html" class="nav-links site-logo">Funnel</a>
            
            <input class="search" placeholder="Search" type="search"/>
            <div class="user-details">
                <button><i class="fa fa-bell"></i></button>
                <button><i class="fa fa-user-circle"></i></button>
            </div>
        </nav>
         
        <section class="container">
            <div class="side-bar">
                <ul class="nav-items">
                <li>
                    <a href="AddAccountManager.jsp" class="nav-links"> <i class="fa fa-male"></i> Account Managers</a>
                </li>
                <li>
                    <a href="AddCustomer.jsp" class="nav-links"> <i class="fa fa-group"></i> Customers</a>
                </li>
                <li>
                    <a href="AddCampaign.jsp" class="nav-links"><i class="fa fa-bullhorn"></i> Campaigns</a>
                </li>
                <li>
                    <a href="AddProduct.jsp" class="nav-links"><i class="fa fa-list"></i> Products</a>
                </li>
                <li>
                    <a href="CampaignEnroll.jsp" class="nav-links"><i class="fa fa-check-circle"></i> Campaign Enroll</a>
                </li>
            </ul>
                <hr>
                <ul class="nav-items">
               
                <li>
                    <a href="InfoManagement.jsp" class="nav-links"> <i class="fa fa-database"></i> Information Management</a>
                </li>
                <li>
                    <a href="Analytics.jsp" class="nav-links"><i class="fa fa-pie-chart"></i> Analytics</a>
                </li>
                 <li>
                    <a href="MarketingFunnel.jsp" class="nav-links"> <i class="fa fa-filter"></i> Marketing Funnel</a>
                </li>
                 <li>
                    <a href="Metadata.jsp" class="nav-links"> <i class="fa fa-info-circle"></i> Metadata</a>
                </li>
               
            </ul>
            </div>
            <main>
                <h1 class="header-color">Information Management</h1> 
            <hr>
            
                
     
        <section class="table-wrapper">
            <div class="form-group">
                    <label for="choose-table">Choose Table </label>
                    <select id="choose-table">
                        <option selected>Select</option>
                        <option value="AccountManagers">Account Managers</option>
                        <option value="Campaigns">Campaigns</option>
                        <option value="Customers">Customers</option> 
                        <option value="Products">Products</option>
                       <option value="CampaignsEnroll">Campaign Enrollments</option>
                    </select>
             </div>
<!--            <div class="alert-info" id="table-backup">
                There are no table resources to display at the moment. You may adjust the search term or contact Admin.
            </div>    -->
        <div id="accountManagersTable" style="display: block;">
            <h3>Account Managers</h3>
        <table>
            <thead>
                <tr>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Product Specialization</th>
                    <th>Grade Level</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>Date of Employment</th>
                </tr>
            </thead>
            <tbody>
                <% if (accountManagerList != null) {
                    for (Accountmanagers element : accountManagerList) { %>
                        <tr>
                            <td><%= element.getFirstName() %></td>
                            <td><%= element.getLastName() %></td>
                            <td><%= element.getProductSpecialization() %></td>
                            <td><%= element.getGradeLevel() %></td>
                            <td><%= element.getEmail() %></td>
                            <td><%= element.getPhoneNumber() %></td>
                            <td><%= element.getDateOfEmployment() %></td>
                        </tr>
                <%  }
                } %>
            </tbody>
        </table>
    </div>      
            
            
    <div id="campaignsTable" style="display: none;">
        <h3>Campaigns</h3>
        <table>
            <thead>
                <tr>
                    <th>Campaign Name</th>
                    <th>Campaign Type</th>
                    <th>Campaign Manager</th>
                    <th>Account Manager ID</th>
                    <th>Campaign Start</th>
                    <th>Campaign End</th>
                    <th>Campaign Product</th>
                    <th>Product ID</th>
                    <th>Sales Volume Target</th>
                    <th>Sales Value Target</th>
                </tr>
            </thead>
            <tbody>
                <% if (campList != null) {
                    for (Campaigns cList : campList) { %>
                        <tr>
                            <td><%= cList.getCampaignName() %></td>
                            <td><%= cList.getCampaignType() %></td>
                            <td><%= cList.getCampaignManager() %></td>
                            <td><%= cList.getAccountManagerId() %></td>
                            <td><%= cList.getCampaignStart() %></td>
                            <td><%= cList.getCampaignEnd() %></td>
                            <td><%= cList.getCampaignProduct() %></td>
                            <td><%= cList.getProductId() %></td>
                            <td><%= cList.getCampaignSalesVolumeTarget() %></td>
                            <td><%= cList.getCampaignSalesValueTarget() %></td>
                        </tr>
                <%  }
                } %>
            </tbody>
        </table>
    </div>
    
            
            
   <div id="customersTable" style="display: none;">
       <h3>Customers</h3>
        <table>
            <thead>
                <tr>
                    <th>First name</th>
                    <th>Last name</th>
                    <th>Postal Address</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                    <th>City</th>
                    <th>US State</th>
                    <th>ZIP Code</th>
                    <th>Date of Birth</th>
                </tr>
            </thead>
            <tbody>
                <% if (customerList != null) {
                    for (Customers customer : customerList) { %>
                        <tr>
                            <td><%= customer.getFirstName() %></td>
                            <td><%= customer.getLastName() %></td>
                            <td><%= customer.getPostalAddress() %></td>
                            <td><%= customer.getEmail() %></td>
                            <td><%= customer.getPhoneNumber() %></td>
                            <td><%= customer.getCity() %></td>
                            <td><%= customer.getUsState() %></td>
                            <td><%= customer.getZipCode() %></td>
                            <td><%= customer.getDateOfBirth() %></td>
                        </tr>
                <%  }
                } %>
            </tbody>
        </table>
    </div>      
            
    <div id="productsTable" style="display: none;">
       <h3>Products</h3>
        <table>
            <thead>
                <tr>
                    <th>Product Name</th>
                    <th>Manufacturer</th>
                    <th>Category</th>
                    <th>Price</th>
                    <th>Product Manager</th>
                    <th>Product Origin</th>
                    
                </tr>
            </thead>
            <tbody>
                <% if (productList != null) {
                    for (Products product : productList) { %>
                        <tr>
                            <td><%= product.getProductName() %></td>
                            <td><%= product.getProductManufacturer() %></td>
                            <td><%= product.getProductCategory() %></td>
                            <td><%= product.getProductPrice() %></td>
                            <td><%= product.getProductManager() %></td>
                            <td><%= product.getProductOrigin() %></td>
                            
                        </tr>
                <%  }
                } %>
            </tbody>
        </table>
    </div>        
            
    <div id="campaignsEnrollTable" style="display: none;">
       <h3>Campaign Enrollment List</h3>
        <table>
            <thead>
                <tr>
                    <th>Enrollment ID</th>
                    <th>Campaign ID</th>
                    <th>Campaign Name</th>
                    <th>Manager ID</th>
                    <th>Manager Name</th>
                    <th>Product ID</th>
                    <th>Customer ID</th>
                    <th>Content</th>
                    <th>Responded?</th>
                    
                </tr>
            </thead>
            <tbody>
                <% if (campEnroll != null) {
                    for (Campaignenrollments cm : campEnroll) { %>
                        <tr>
                            <td><%= cm.getEnrollmentId() %></td>
                            <td><%= cm.getCampaignId() %></td>
                            <td><%= cm.getCampaignName() %></td>
                            <td><%= cm.getAccountManagerId() %></td>
                            <td><%= cm.getCampaignManager() %></td>
                            <td><%= cm.getProductId() %></td>
                            <td><%= cm.getCustomerId() %></td>
                            <td><%= cm.getCampaignContent() %></td>
                            <td><%= cm.getHasResponded() %></td>
                        </tr>
                <%  }
                } %>
            </tbody>
        </table>
    </div>               
   </section>
 
 </main>
            
 </section>
   <script src="index.js"></script>
   <script src="SelectEvents.js"></script>
        
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
