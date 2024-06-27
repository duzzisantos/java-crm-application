<%-- 
    Document   : AddProduct
    Created on : Jun 11, 2024, 10:42:33 PM
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
        <title>Add Product</title>
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
                <h1 class="header-color">Add Product</h1> 
                <hr>
             
            <form method="post" action="AddProductServlet" name="addProduct">
                <div class="toast" id="toast4">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
                <div class="form-group">
                    <label for="product_name">Product Name</label>
                    <input type="text" name="product_name" id="product_name" placeholder="Enter product name" required/>
                </div>
                 <div class="form-group">
                    <label for="product_manufacturer">Product Manufacturer</label>
                    <input type="text" name="product_manufacturer" id="product_manufacturer" placeholder="Enter product manufacturer" required/>
                </div> 
                <div class="form-group">
                    <label for="product_category">Product Category</label>
                    <select id="product_category" name="product_category" required>
                        <option selected>Please select</option>
                        <option value="Camera">Camera</option>
                        <option value="Printer">Printer</option>
                        <option value="Monitor">Monitor</option>
                        <option value="Mice">Mice</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="product_price">Product Price (USD)</label>
                    <small class="form-text">In the best interests of your company, you need to fill in the current price of this product. In case of doubt, cross-check from your sources.</small>
                    <input type="number" name="product_price" id="product_price" placeholder="Enter product price" required/>
                </div> 
                 <div class="form-group">
                    <label for="product_manager">Product Manager</label>
                    <small class="form-text">Account managers also are in charge of the products in this case. Fill appropriately the account manager responsible.</small>
                    <input type="text" name="product_manager" id="product_manager" placeholder="Enter product manager" required/>
                </div> 
               
                <div class="form-group">
                    <label for="product_origin">Product Origin</label>
                    <small class="form-text">Country names are required in this case.   State which country the product was manufactured.</small>
                    <input type="text" name="product_origin" id="product_origin" placeholder="Enter product origin" required/>
                </div> 
                <button type="submit" class="btn-primary">Submit</button>
                <input type="reset" class="btn-secondary"/>
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
            const toast = document.getElementById('toast4');
            showToast(toast);
        });
    </script>
    <%
        }
    %>
    </body>
</html>
