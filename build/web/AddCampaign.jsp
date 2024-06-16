<%-- 
    Document   : AddCampaign
    Created on : Jun 11, 2024, 10:41:52 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <link rel="stylesheet" href="index.css">
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <script src="index.js"></script>
        <title>Add Campaign</title>
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
            </div>
             <main>
                 <h1 class="header-color">Add Campaign</h1> 
                 <hr>
             
            <form method="post" action="AddCampaignServlet" name="addCampaign">
                <div class="toast" id="toast1">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
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
                    <input type="text" name="campaign_manager" id="campaign_manager" required placeholder="Enter campaign manager. Eg: Tyrion Lannister"/>
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
             </main>
            
        </section>
         <%
        // Use JSP scriptlet to check if the toast should be shown
        Boolean showToast = (Boolean) request.getAttribute("showToast");
        if (showToast != null && showToast) {
    %>
    <script>
        document.addEventListener('DOMContentLoaded', () => {
            const toast = document.getElementById('toast1');
            showToast(toast);
        });
    </script>
    <%
        }
    %>
    </body>
</html>
