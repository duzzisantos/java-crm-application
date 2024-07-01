<%-- 
    Document   : Analytics
    Created on : Jun 28, 2024, 12:12:41 AM
    Author     : user
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
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Funnel Analytics</title>
        
    </head>
    <body>
         <%@include file="Navbar.jsp" %> %>
        <section class="container">
            <%@include file="SideBar.jsp" %>
            <main>
                <h1 class="header-color">Analytics</h1> 
            <hr>
            
            <section class="table-wrapper">
                <div class="chart-md">
                    
                </div>
            </section>
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
