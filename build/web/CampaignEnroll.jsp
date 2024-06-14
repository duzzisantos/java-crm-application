<%-- 
    Document   : CampaignEnroll
    Created on : Jun 13, 2024, 1:14:16 AM
    Author     : Duzie Uche-Abba
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="index.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Product Page</title>
        
    </head>
    <body>
          <nav class="navbar">
            <a href="index.html" class="nav-links site-logo">Funnel</a>
            
<!--            <input class="search" placeholder="Search" type="search"/>-->
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
            </div>
            <main>
                <h1 class="header-color">Campaign Enroll</h1> 
            <hr>
           
            <form method="post" action="CampaignServlet" name="newCampaign">
                <div class="toast" id="toast5">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
                <div class="form-group">
                    <label for="campaign_ID">Campaign ID</label>
                    <input type="text" name="campaign_ID" id="product_ID" placeholder="Enter campaign ID" required/>
                </div> 
                
                 <div class="form-group">
                    <label for="campaign_manager_ID">Campaign Manager ID</label>
                    <input type="text" name="campaign_manager_ID" id="campaign_manager_ID" placeholder="Enter product manufacturer" required/>
                </div> 
                
                <div class="form-group">
                    <label for="customer_ID">Customer ID</label>
                    <input type="text" name="customer_ID" id="customer_ID" placeholder="Enter customer ID" required/>
                </div>
              
                 <div class="form-group">
                    <label for="product_ID">Product ID</label>
                    <input type="text" name="product_ID" id="product_ID" placeholder="Enter product ID" required/>
                </div> 
               
               <div class="form-group">
                    <label for="has_responded">Has Responded ?</label>
                    
                    <select required name="has_responded" id="has_responded">
                        <option selected value="False">Please Select</option>
                        <option value="True">True</option>
                        <option value="False">False</option>
                    </select>
                </div> 
                 <div class="form-group">
                    <label for="campaign_content">Campaign Content</label>
                    <small class="form-text"><b>Tip</b>: Keep your campaign content short and simple to capture your leads. Max 255 characters.</small>
                    <textarea rows="4" minLength="1" maxlength="255" type="text" name="campaign_content" id="campaign_content" placeholder="Write campaign message" required></textarea>
                    <small class="form-text" id="countdown-text"></small>
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
