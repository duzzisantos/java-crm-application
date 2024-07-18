<%-- 
    Document   : AddProduct
    Created on : Jun 11, 2024, 10:42:33 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="javax.naming.InitialContext" %>
<%@ page import="javax.naming.NamingException" %>
<%@ page import="entity.Accountmanagers" %>
<%@ page import="session.AccountmanagersFacadeLocal" %>

<% AccountmanagersFacadeLocal acc = (AccountmanagersFacadeLocal) new InitialContext().lookup("java:module/AccountmanagersFacade");

   List<Accountmanagers> accountManagerList = acc.findAll();
%>

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
         <%@include file="Navbar.jsp" %> %>
        <section class="container">
            <%@include file="SideBar.jsp" %>
            <main>
                <h1 class="header-color">Add Product</h1> 
                <hr>
             
            <form method="post" action="AddProductServlet" name="addProduct">
                <div class="toast" id="toast4">Form submitted <button class="close-btn"><i class="fa fa-close"></i></button></div>
                <div class="form-group">
                    <label for="product_name">Product Name</label>
                   
                    <input id="product_name" autocomplete="off" name="product_name" required placeholder="Enter product name"/>
                </div>
                 <div class="form-group">
                    <label for="product_manufacturer">Product Manufacturer</label>
                    <input type="text" autocomplete="off" name="product_manufacturer" id="product_manufacturer" placeholder="Enter product manufacturer" required/>
                </div> 
                <div class="form-group">
                    <label for="product_category">Product Category</label>
                    <select id="product_category" name="product_category" required>
                        <option selected>Please select</option>
                        <option value="Camera">Camera</option>
                        <option value="Printer">Printer</option>
                        <option value="Monitor">Monitor</option>
                        <option value="Mice">Mice</option>
                        <option value="Speakers">Speakers</option> 
                        <option value="Hard Drives">Hard Drives</option> 
                        <option value="Keyboards">Keyboards</option>  
                        <option value="Tablets">Tablets</option>
                        <option value="Mobile Phones">Mobile Phones</option>
                        <option value="WiFi Routers">WiFi Routers</option>
                        <option value="Casual Apparels">Casual Apparels</option>
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
                    <select required name="product_manager" id="product_manager">
                        <option selected value="">Please Select</option>
                        <% for (Accountmanagers acctName : accountManagerList){
                            pageContext.setAttribute("acctName", acctName); 
                        %>
                            
                            <option value="${acctName.accountManagerId}">${acctName.accountManagerId} -  ${acctName.firstName}  ${acctName.lastName}</option>
                        <%}%>
                    </select>
                </div> 
               
                <div class="form-group">
                    <label for="product_origin">Product Origin</label>
                    <small class="form-text">Country names are required in this case.   Select which country the product was manufactured.</small>
                    <select name="product_origin" required id="product_origin">
                            <option selected>Please Select</option>
                                <option value="AF">Afghanistan 🇦🇫</option>
                                <option value="AO">Angola 🇦🇴</option>
                                <option value="AL">Albania 🇦🇱</option>
                                <option value="AD">Andorra 🇦🇩</option>
                                <option value="AE">United Arab Emirates 🇦🇪</option>
                                <option value="AR">Argentina 🇦🇷</option>
                                <option value="AM">Armenia 🇦🇲</option>
                                <option value="AG">Antigua and Barbuda 🇦🇬</option>
                                <option value="AU">Australia 🇦🇺</option>
                                <option value="AT">Austria 🇦🇹</option>
                                <option value="AZ">Azerbaijan 🇦🇿</option>
                                <option value="BI">Burundi 🇧🇮</option>
                                <option value="BE">Belgium 🇧🇪</option>
                                <option value="BJ">Benin 🇧🇯</option>
                                <option value="BF">Burkina Faso 🇧🇫</option>
                                <option value="BD">Bangladesh 🇧🇩</option>
                                <option value="BG">Bulgaria 🇧🇬</option>
                                <option value="BH">Bahrain 🇧🇭</option>
                                <option value="BS">Bahamas 🇧🇸</option>
                                <option value="BA">Bosnia and Herzegovina 🇧🇦</option>
                                <option value="BY">Belarus 🇧🇾</option>
                                <option value="BZ">Belize 🇧🇿</option>
                                <option value="BO">Bolivia 🇧🇴</option>
                                <option value="BR">Brazil 🇧🇷</option>
                                <option value="BB">Barbados 🇧🇧</option>
                                <option value="BN">Brunei 🇧🇳</option>
                                <option value="BT">Bhutan 🇧🇹</option>
                                <option value="BW">Botswana 🇧🇼</option>
                                <option value="CF">Central African Republic 🇨🇫</option>
                                <option value="CA">Canada 🇨🇦</option>
                                <option value="CH">Switzerland 🇨🇭</option>
                                <option value="CL">Chile 🇨🇱</option>
                                <option value="CN">China 🇨🇳</option>
                                <option value="CI">Ivory Coast 🇨🇮</option>
                                <option value="CM">Cameroon 🇨🇲</option>
                                <option value="CD">DR Congo 🇨🇩</option>
                                <option value="CG">Republic of the Congo 🇨🇬</option>
                                <option value="CO">Colombia 🇨🇴</option>
                                <option value="KM">Comoros 🇰🇲</option>
                                <option value="CV">Cape Verde 🇨🇻</option>
                                <option value="CR">Costa Rica 🇨🇷</option>
                                <option value="CU">Cuba 🇨🇺</option>
                                <option value="CY">Cyprus 🇨🇾</option>
                                <option value="CZ">Czechia 🇨🇿</option>
                                <option value="DE">Germany 🇩🇪</option>
                                <option value="DJ">Djibouti 🇩🇯</option>
                                <option value="DM">Dominica 🇩🇲</option>
                                <option value="DK">Denmark 🇩🇰</option>
                                <option value="DO">Dominican Republic 🇩🇴</option>
                                <option value="DZ">Algeria 🇩🇿</option>
                                <option value="EC">Ecuador 🇪🇨</option>
                                <option value="EG">Egypt 🇪🇬</option>
                                <option value="ER">Eritrea 🇪🇷</option>
                                <option value="ES">Spain 🇪🇸</option>
                                <option value="EE">Estonia 🇪🇪</option>
                                <option value="ET">Ethiopia 🇪🇹</option>
                                <option value="FI">Finland 🇫🇮</option>
                                <option value="FJ">Fiji 🇫🇯</option>
                                <option value="FR">France 🇫🇷</option>
                                <option value="FM">Micronesia 🇫🇲</option>
                                <option value="GA">Gabon 🇬🇦</option>
                                <option value="GB">United Kingdom 🇬🇧</option>
                                <option value="GE">Georgia 🇬🇪</option>
                                <option value="GH">Ghana 🇬🇭</option>
                                <option value="GN">Guinea 🇬🇳</option>
                                <option value="GM">Gambia 🇬🇲</option>
                                <option value="GW">Guinea-Bissau 🇬🇼</option>
                                <option value="GQ">Equatorial Guinea 🇬🇶</option>
                                <option value="GR">Greece 🇬🇷</option>
                                <option value="GD">Grenada 🇬🇩</option>
                                <option value="GT">Guatemala 🇬🇹</option>
                                <option value="GY">Guyana 🇬🇾</option>
                                <option value="HN">Honduras 🇭🇳</option>
                                <option value="HR">Croatia 🇭🇷</option>
                                <option value="HT">Haiti 🇭🇹</option>
                                <option value="HU">Hungary 🇭🇺</option>
                                <option value="ID">Indonesia 🇮🇩</option>
                                <option value="IN">India 🇮🇳</option>
                                <option value="IE">Ireland 🇮🇪</option>
                                <option value="IR">Iran 🇮🇷</option>
                                <option value="IQ">Iraq 🇮🇶</option>
                                <option value="IS">Iceland 🇮🇸</option>
                                <option value="IL">Israel 🇮🇱</option>
                                <option value="IT">Italy 🇮🇹</option>
                                <option value="JM">Jamaica 🇯🇲</option>
                                <option value="JO">Jordan 🇯🇴</option>
                                <option value="JP">Japan 🇯🇵</option>
                                <option value="KZ">Kazakhstan 🇰🇿</option>
                                <option value="KE">Kenya 🇰🇪</option>
                                <option value="KG">Kyrgyzstan 🇰🇬</option>
                                <option value="KH">Cambodia 🇰🇭</option>
                                <option value="KI">Kiribati 🇰🇮</option>
                                <option value="KN">Saint Kitts and Nevis 🇰🇳</option>
                                <option value="KR">South Korea 🇰🇷</option>
                                <option value="KW">Kuwait 🇰🇼</option>
                                <option value="LA">Laos 🇱🇦</option>
                                <option value="LB">Lebanon 🇱🇧</option>
                                <option value="LR">Liberia 🇱🇷</option>
                                <option value="LY">Libya 🇱🇾</option>
                                <option value="LC">Saint Lucia 🇱🇨</option>
                                <option value="LI">Liechtenstein 🇱🇮</option>
                                <option value="LK">Sri Lanka 🇱🇰</option>
                                <option value="LS">Lesotho 🇱🇸</option>
                                <option value="LT">Lithuania 🇱🇹</option>
                                <option value="LU">Luxembourg 🇱🇺</option>
                                <option value="LV">Latvia 🇱🇻</option>
                                <option value="MA">Morocco 🇲🇦</option>
                                <option value="MC">Monaco 🇲🇨</option>
                                <option value="MD">Moldova 🇲🇩</option>
                                <option value="MG">Madagascar 🇲🇬</option>
                                <option value="MV">Maldives 🇲🇻</option>
                                <option value="MX">Mexico 🇲🇽</option>
                                <option value="MH">Marshall Islands 🇲🇭</option>
                                <option value="MK">Macedonia 🇲🇰</option>
                                <option value="ML">Mali 🇲🇱</option>
                                <option value="MT">Malta 🇲🇹</option>
                                <option value="MM">Myanmar 🇲🇲</option>
                                <option value="ME">Montenegro 🇲🇪</option>
                                <option value="MN">Mongolia 🇲🇳</option>
                                <option value="MZ">Mozambique 🇲🇿</option>
                                <option value="MR">Mauritania 🇲🇷</option>
                                <option value="MU">Mauritius 🇲🇺</option>
                                <option value="MW">Malawi 🇲🇼</option>
                                <option value="MY">Malaysia 🇲🇾</option>
                                <option value="NA">Namibia 🇳🇦</option>
                                <option value="NE">Niger 🇳🇪</option>
                                <option value="NG">Nigeria 🇳🇬</option>
                                <option value="NI">Nicaragua 🇳🇮</option>
                                <option value="NL">Netherlands 🇳🇱</option>
                                <option value="NO">Norway 🇳🇴</option>
                                <option value="NP">Nepal 🇳🇵</option>
                                <option value="NR">Nauru 🇳🇷</option>
                                <option value="NZ">New Zealand 🇳🇿</option>
                                <option value="OM">Oman 🇴🇲</option>
                                <option value="PK">Pakistan 🇵🇰</option>
                                <option value="PA">Panama 🇵🇦</option>
                                <option value="PE">Peru 🇵🇪</option>
                                <option value="PH">Philippines 🇵🇭</option>
                                <option value="PW">Palau 🇵🇼</option>
                                <option value="PG">Papua New Guinea 🇵🇬</option>
                                <option value="PL">Poland 🇵🇱</option>
                                <option value="KP">North Korea 🇰🇵</option>
                                <option value="PT">Portugal 🇵🇹</option>
                                <option value="PY">Paraguay 🇵🇾</option>
                                <option value="QA">Qatar 🇶🇦</option>
                                <option value="RO">Romania 🇷🇴</option>
                                <option value="RU">Russia 🇷🇺</option>
                                <option value="RW">Rwanda 🇷🇼</option>
                                <option value="SA">Saudi Arabia 🇸🇦</option>
                                <option value="SD">Sudan 🇸🇩</option>
                                <option value="SN">Senegal 🇸🇳</option>
                                <option value="SG">Singapore 🇸🇬</option>
                                <option value="SB">Solomon Islands 🇸🇧</option>
                                <option value="SL">Sierra Leone 🇸🇱</option>
                                <option value="SV">El Salvador 🇸🇻</option>
                                <option value="SM">San Marino 🇸🇲</option>
                                <option value="SO">Somalia 🇸🇴</option>
                                <option value="RS">Serbia 🇷🇸</option>
                                <option value="SS">South Sudan 🇸🇸</option>
                                <option value="ST">São Tomé and Príncipe 🇸🇹</option>
                                <option value="SR">Suriname 🇸🇷</option>
                                <option value="SK">Slovakia 🇸🇰</option>
                                <option value="SI">Slovenia 🇸🇮</option>
                                <option value="SE">Sweden 🇸🇪</option>
                                <option value="SZ">Swaziland 🇸🇿</option>
                                <option value="SC">Seychelles 🇸🇨</option>
                                <option value="SY">Syria 🇸🇾</option>
                                <option value="TD">Chad 🇹🇩</option>
                                <option value="TG">Togo 🇹🇬</option>
                                <option value="TH">Thailand 🇹🇭</option>
                                <option value="TJ">Tajikistan 🇹🇯</option>
                                <option value="TM">Turkmenistan 🇹🇲</option>
                                <option value="TL">Timor-Leste 🇹🇱</option>
                                <option value="TO">Tonga 🇹🇴</option>
                                <option value="TT">Trinidad and Tobago 🇹🇹</option>
                                <option value="TN">Tunisia 🇹🇳</option>
                                <option value="TR">Turkey 🇹🇷</option>
                                <option value="TV">Tuvalu 🇹🇻</option>
                                <option value="TZ">Tanzania 🇹🇿</option>
                                <option value="UG">Uganda 🇺🇬</option>
                                <option value="UA">Ukraine 🇺🇦</option>
                                <option value="UY">Uruguay 🇺🇾</option>
                                <option value="US">United States 🇺🇸</option>
                                <option value="UZ">Uzbekistan 🇺🇿</option>
                                <option value="VA">Vatican City 🇻🇦</option>
                                <option value="VC">Saint Vincent and the Grenadines 🇻🇨</option>
                                <option value="VE">Venezuela 🇻🇪</option>
                                <option value="VN">Vietnam 🇻🇳</option>
                                <option value="VU">Vanuatu 🇻🇺</option>
                                <option value="WS">Samoa 🇼🇸</option>
                                <option value="YE">Yemen 🇾🇪</option>
                                <option value="ZA">South Africa 🇿🇦</option>
                                <option value="ZM">Zambia 🇿🇲</option>
                                <option value="ZW">Zimbabwe 🇿🇼</option>
                            </select>
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
            const toast = document.getElementById('toast4');
            showToast(toast);
        });
    </script>
    <%
        }
    %>
    </body>
</html>
