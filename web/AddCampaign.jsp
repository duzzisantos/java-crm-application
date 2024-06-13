<%-- 
    Document   : AddCampaign
    Created on : Jun 11, 2024, 10:41:52 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
         <link rel="stylesheet" href="index.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <title>Add Campaign</title>
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
            <h1 class="header-color">Add Campaign</h1> 
            <form method="post" action="AddCampaignServlet" name="addCampaign">
                <div class="form-group">
                    <label for="campaign_name">Campaign Name</label>
                    <small class="form-text">Provide a meaningful, memorable name for your campaign. It might be a code name - eg: 'Operation Empty Shelf'.</small>
                    <input type="text" name="campaign_name" id="campaign_name" placeholder="Enter campaign name" required/>
                </div>
                <div class="form-group">
                    <label for="campaign_type">Campaign Type</label>
                    <select id="campaign_type" name="campaign_type" required>
                        <option selected>Please select</option>
                        <option value="Weekly">Weekly</option>
                        <option value="Quarterly">Quarterly</option>
                        <option value="Monthly">Monthly</option>
                        <option value="Holiday">Holiday</option>
                    </select>
                </div>
                <div class="form-group">
                    <label for="campaign_manager">Campaign Manager</label>
                    <small class="form-text">Provide the name of the Account Manager who serves as campaign manager.</small>
                    <input type="text" name="campaign_manager" id="campaign_manager" required placeholder="Enter campaign manager. Eg: Tyron Laennister"/>
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
                    <input type="text" name="campaign_product" id="campaign_product" required placeholder='Enter product name'/>
                </div> 
                 <div class="form-group">
                    <label for="campaign_sales_value">Campaign Sales Value Target</label>
                    <small class="form-text">How much in USD do you plan to make? Provide a rough estimate.</small>
                    <input type="number" name="campaign_sales_value" id="campaign_product" required placeholder='Enter sales value target'/>
                </div> 
                
                 <div class="form-group">
                    <label for="campaign_sales_volume">Campaign Sales Volume Target</label>
                    <small class="form-text">How many units of this product do you plan to sell?</small>
                    <input type="number" name="campaign_sales_volume" id="campaign_product" required placeholder='Enter sales volume target'/>
                </div> 
               
                <button type="submit" class="btn-primary">Submit</button>
                <input type="reset" class="btn-secondary"/>
                
                <div class="feedback"></div>
            </form>
        </section>
    </body>
</html>
