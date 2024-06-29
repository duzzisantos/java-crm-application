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
                <h1 class="header-color">Campaign Enroll</h1> 
            <hr>
           
            <form method="post" action="CampaignServlet" name="newCampaign">
                <div class="toast" id="toast5">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
                <div class="form-group">
                    <label for="campaign_enroll_ID">Campaign ID</label>
                     <select required name="campaign_enroll_ID" id="campaign_enroll_ID">
                      
                    </select>
                </div> 
                <div class="form-group">
                    <label for="campaign_enroll_name">Campaign Name</label>
                     <select required name="campaign_enroll_name" id="campaign_enroll_name">
                        <option selected value="">Please Select</option>
                        <option value="FC779">Operation Empty Shelf</option>
                        <option value="FC899">Operation Markdown</option>
                        <option value="FC839">Operation Salvage Cost</option>
                    </select>
                </div> 
                
                 <div class="form-group">
                    <label for="campaign_enroll_manager_ID">Account Manager ID</label>
                    <select required name="campaign_enroll_manager_ID" id="campaign_enroll_manager_ID">
                        
                    </select>
                </div> 
                
                 <div class="form-group">
                    <label for="campaign_enroll_manager">Account Manager</label>
                    <select required name="campaign_enroll_manager" id="campaign_enroll_manager">
                        <option selected value="">Please Select</option>
                        <option value="CM029">Obinna Kalu</option>
                        <option value="CM020">Aditi Sharma</option>
                        <option value="CM001">Billy McBride</option>
                    </select>
                </div> 
                
                 <div class="form-group">
                    <label for="campaigned_product">Campaign Product</label>
                    <select id="campaigned_product" name="campaigned_product" required>
                        <option selected>Please select</option>
                        <option value="Camera">Camera</option>
                        <option value="Printer">Printer</option>
                        <option value="Monitor">Monitor</option>
                        <option value="Mice">Mice</option>
                    </select>
                </div> 
               
                <div class="form-group">
                    <label for="customer_enroll_ID">Customer ID</label>
                    <small class='form-text'><strong>Tip:</strong> To avoid mistakes - you may want to paste this from your clipboard always.</small>
                    <select id="customer_enroll_ID" name="customer_enroll_ID" required>
                       
                    </select>
                </div>
              
                
                 <div class="form-group">
                    <label for="campaign_content">Campaign Content</label>
                    <small class="form-text"><b>Tip</b>: Keep your campaign content short and simple to capture leads. Max 255 characters.</small>
                    <textarea autocorrect='true' spellcheck="true"  rows="4" minlength="1" maxlength="255" type="text" name="campaign_content" id="campaign_content" placeholder="Write campaign message" required></textarea>
                    <small class="form-text" id="countdown-text"></small>
                </div> 
                
                <div class="form-group">
                    <label for="has_responded">Has Responded ?</label>
                    
                    <select required name="has_responded" id="has_responded">
                        <option selected value="False">Please Select</option>
                        <option value="True">True</option>
                        <option value="False">False</option>
                    </select>
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
