<%-- 
    Document   : AddCustomer
    Created on : Jun 11, 2024, 10:41:28 PM
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
        <title>Add Customer</title>
    </head>
    <body>
         <%@include file="Navbar.jsp" %> %>
        <section class="container">
            <%@include file="SideBar.jsp" %>
            <main>
                <h1 class="header-color">Add Customer</h1> 
            <hr>
             
            <form method="post" action="AddCustomerServlet" name="addCustomer">
                <div class="toast" id="toast3">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
                <div class="form-group">
                    <label for="first_name">First Name</label>
                    <input type="text" name="first_name" autocomplete="off" id="first_name" placeholder="Enter first name" required/>
                </div>
                <div class="form-group">
                    <label for="last_name">Last Name</label>
                    <input type="text" name="last_name" autocomplete="off" id="last_name" placeholder="Enter last name" required/>
                </div>
               
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" name="email" id="email" autocomplete="off" placeholder="Enter email"
                     pattern="/^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$/;" 
                     required/>
                </div> 
                <div class="form-group">
                    <label for="postal_address">Postal Address</label>
                    <input type="text" name="postal_address" autocomplete="off" id="postal_address" placeholder="Enter postal address" required/>
                </div> 
                 <div class="form-group">
                    <label for="city">City</label>
                    <input type="text" name="city" id="postal_address" autocomplete="off" placeholder="Enter city" required/>
                </div> 
                <div class="form-group">
                    <label for="state_us">State</label>
                    <select id="state_us" name="state_us" required>
                        <option>Please Select</option>
                        <option value="Alabama">Alabama</option>
    <option value="Alaska">Alaska</option>
    <option value="Arizona">Arizona</option>
    <option value="Arkansas">Arkansas</option>
    <option value="California">California</option>
    <option value="Colorado">Colorado</option>
    <option value="Connecticut">Connecticut</option>
    <option value="Delaware">Delaware</option>
    <option value="Florida">Florida</option>
    <option value="Georgia">Georgia</option>
    <option value="Hawaii">Hawaii</option>
    <option value="Idaho">Idaho</option>
    <option value="Illinois">Illinois</option>
    <option value="Indiana">Indiana</option>
    <option value="Iowa">Iowa</option>
    <option value="Kansas">Kansas</option>
    <option value="Kentucky">Kentucky</option>
    <option value="Louisiana">Louisiana</option>
    <option value="Maine">Maine</option>
    <option value="Maryland">Maryland</option>
    <option value="Massachusetts">Massachusetts</option>
    <option value="Michigan">Michigan</option>
    <option value="Minnesota">Minnesota</option>
    <option value="Mississippi">Mississippi</option>
    <option value="Missouri">Missouri</option>
    <option value="Montana">Montana</option>
    <option value="Nebraska">Nebraska</option>
    <option value="Nevada">Nevada</option>
    <option value="New Hampshire">New Hampshire</option>
    <option value="New Jersey">New Jersey</option>
    <option value="New Mexico">New Mexico</option>
    <option value="New York">New York</option>
    <option value="North Carolina">North Carolina</option>
    <option value="North Dakota">North Dakota</option>
    <option value="Ohio">Ohio</option>
    <option value="Oklahoma">Oklahoma</option>
    <option value="Oregon">Oregon</option>
    <option value="Pennsylvania">Pennsylvania</option>
    <option value="Rhode Island">Rhode Island</option>
    <option value="South Carolina">South Carolina</option>
    <option value="South Dakota">South Dakota</option>
    <option value="Tennessee">Tennessee</option>
    <option value="Texas">Texas</option>
    <option value="Utah">Utah</option>
    <option value="Vermont">Vermont</option>
    <option value="Virginia">Virginia</option>
    <option value="Washington">Washington</option>
    <option value="West Virginia">West Virginia</option>
    <option value="Wisconsin">Wisconsin</option>
    <option value="Wyoming">Wyoming</option>
    <option value="Outside US">Outside US</option>
                    </select>
                </div> 
                <div class="form-group">
                    <label for="zip_code">ZIP Code</label>
                    <small class="form-text">Provide a US ZIP Code (for US residents only).</small>
                    <input type="text" name="zip_code" autocomplete="off" id="zip_code" placeholder="Enter ZIP Code" pattern="^\d{5}(-\d{4})?$" required/>
                </div> 
                <div class="form-group">
                    <label for="phone">Phone Number</label>
                    <input type="tel" name="phone" autocomplete="off" id="phone" placeholder="Enter phone number" required/>
                    
                </div> 
                
                <div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <input type="date" name="dob" id="dob" required/>
                </div> 
                <button type="submit" class="btn-primary">Submit</button>
                <input type="reset" class="btn-secondary"/>
                
                <div class="feedback-failure">
                     <% 
                        if(request.getAttribute("exception-thrown") != null){
                            out.print(request.getAttribute("exception-thrown"));
                        }

                      %>
                </div>
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
            const toast = document.getElementById('toast3');
            showToast(toast);
        });
    </script>
    <%
        }
    %>
    </body>
</html>
