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
        <title>Product Page</title>
    </head>
    <body>
         <nav class="navbar">
            <a href="index.html" class="nav-links site-logo">Funnel</a>
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
            </ul>
        </nav>
        <section class="container">
            <h1 class="header-color">Add Product</h1> 
            <form method="post" action="AddProductServlet" name="addProduct">
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
                    <input type="number" name="product_price" id="product_price" placeholder="Enter product price" required/>
                </div> 
                 <div class="form-group">
                    <label for="product_manager">Product Manager</label>
                    <input type="text" name="product_manager" id="product_manager" placeholder="Enter product manager" required/>
                </div> 
               
                <div class="form-group">
                    <label for="product_origin">Product Origin</label>
                    <input type="text" name="product_origin" id="product_origin" placeholder="Enter product origin" required/>
                </div> 
                <button type="submit" class="btn-primary">Submit</button>
                <input type="reset" class="btn-secondary"/>
            </form>
        </section>
    </body>
</html>