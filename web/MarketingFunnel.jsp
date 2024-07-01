<%-- 
    Document   : MarketingFunnel
    Created on : Jun 28, 2024, 12:14:24 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="entity.Campaigns" %>
<%@ page import="entity.Campaignenrollments" %>
<%@ page import="session.CampaignsFacadeLocal" %>
<%@ page import="session.CampaignenrollmentsFacadeLocal" %>

<% CampaignsFacadeLocal campenr = (CampaignsFacadeLocal) new InitialContext().lookup("java:module/CampaignsFacade");

   List<Campaigns> campEnroll = campenr.findAll();
%>

<% CampaignenrollmentsFacadeLocal cm = (CampaignenrollmentsFacadeLocal) new InitialContext().lookup("java:module/CampaignenrollmentsFacade");

   List<Campaignenrollments> campR = cm.findAll();
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="MarketingFunnel.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Marketing Funnel</title>
        
    </head>
    <body>
          <%@include file="Navbar.jsp" %> %>
        <section class="container">
            <%@include file="SideBar.jsp" %>
            <main>
                <h1 class="header-color">Marketing Funnel</h1> 
            <hr>
            <div class="container">
                <div class="form-group">
                    <label for="choose-campaign">Choose Campaign </label>
                    <select id="choose-campaign">
                        <option selected>Select</option>
                          <% for (Campaigns enr : campEnroll){
                            pageContext.setAttribute("enr", enr); %>
                            
                            <option value="${enr.campaignId}">${enr.campaignId} - ${enr.campaignName}</option>
                        <%}%>
                       
                    </select>
                </div>
                
            </div>
            <section class="marketing-funnel">
                
                <div class="funnel">
                    
                    <div class="prospects"><%= campR.size() / campR.size() * 100%>%</div>
                    <div class="leads"></div>
                    <div class="conversions"></div>
                </div>
                
                <div class="funnel-keys">
                    <div class="prospects-key">Prospects</div>
                    <div class="leads-key">Leads</div>
                    <div class="conversions-key">Conversions</div>
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
