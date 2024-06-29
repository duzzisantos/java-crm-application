<%-- 
    Document   : MarketingFunnel
    Created on : Jun 28, 2024, 12:14:24 AM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Marketing Funnel</title>
        
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
                <h1 class="header-color">Marketing Funnel</h1> 
            <hr>
            <div class="container">
                <div class="form-group">
                    <label for="choose-campaign">Choose Campaign </label>
                    <select id="choose-campaign">
                        <option selected>Select</option>
                        <option value="CMP200">CMP200</option>
                        <option value="CMP300">CMP300</option>
                        <option value="CMP213">CMP213</option> 
                        <option value="CMP312">CMP312</option>
                       
                    </select>
                </div>
                
            </div>
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