<%-- 
    Document   : AddAccountManager
    Created on : Jun 11, 2024, 10:40:59 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="index.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <script src="index.js"></script>
        <title>Add Account Manager</title>
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
                <h1 class="header-color">Add Account Manager</h1> 
            <hr>
            <form method="post" action="AccountManagerServlet" name="addAccountManager">
                <div class="toast" id="toast2">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
                <div class="form-group">
                    <label for="manager_first_name">First Name</label>
                    <input type="text" name="manager_first_name" id="manager_first_name" placeholder="Enter first name" required/>
                </div>
                <div class="form-group">
                    <label for="manager_last_name">Last Name</label>
                    <input type="text" name="manager_last_name" id="manager_last_name" placeholder="Enter last name" required/>
                </div>
               
                <div class="form-group">
                    <label for="product_specialization">Product Specialization</label>
                    <small class="form-text">Every account manager is selling at least one product, and their specialization is required. Choose any one from the list.</small>
                    <select id="product_specialization" name="product_specialization" required>
                        <option selected>Please select</option>
                        <option value="Camera">Camera</option>
                        <option value="Printer">Printer</option>
                        <option value="Monitor">Monitor</option>
                        <option value="Mice">Mice</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="grade_level">Grade Level</label>
                    <small class="form-text">Grade levels range from 1 to 15. In any case you have no idea, you may fill in 'Not yet known' or better still ask your HR.</small>
                    <input type="text" name="grade_level" id="grade_level" required/>
                </div> 
                
                <div class="form-group">
                    <label for="manager_email">Email</label>
                    <small class="form-text">Ensure to use work email address. Email addresses with generic domain names (eg: yahoo.com, gmail.com) are not so official.</small>
                    <input type="email" name="manager_email" id="manager_email" placeholder="Enter email" required/>
                </div> 
                
                <div class="form-group">
                    <label for="manager_phone">Phone Number</label>
                    <input type="tel" name="manager_phone" id="manager_phone" placeholder="Enter phone number" required/>
                </div> 
                <div class="form-group">
                    <label for="doe">Date of Employment</label>
                    <small class="form-text">This must be correctly filled. In any case of doubts, please kindly consult your HR to confirm.</small>
                    <input type="date" name="doe" id="doe" required/>
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
            const toast = document.getElementById('toast2');
            showToast(toast);
        });
    </script>
    <%
        }
    %>
    </body>
</html>
