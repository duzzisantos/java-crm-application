/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

//This is a reusable event handler that listens to changes in the select drop downs to render changes to the table UI
//Refactor this code... It might need some dynamism.. If one node is selected, then the other nodes should not display.

document.getElementById('choose-table').onchange = function() {
        const selectedValue = this.value;
        const accounts = document.getElementById('accountManagersTable');
        const customers = document.getElementById("customersTable");
        const campaigns = document.getElementById("campaignsTable");
        const products = document.getElementById("productsTable");
        const enrollments = document.getElementById("campaignsEnrollTable");
        
        // Show the selected table
        if (selectedValue === 'AccountManagers') {
            accounts.style.display = 'block';
            customers.style.display = 'none';
            campaigns.style.display = 'none';
            products.style.display = 'none';
            enrollments.style.display = 'none';
        } else if(selectedValue === "Customers"){
            accounts.style.display = 'none';
            customers.style.display = 'block';
            campaigns.style.display = 'none';
            products.style.display = 'none';
            enrollments.style.display = 'none';
        } else if(selectedValue === "Campaigns"){
            accounts.style.display = 'none';
            customers.style.display = 'none';
            campaigns.style.display = 'block';
            products.style.display = 'none';
            enrollments.style.display = 'none';
        } else if(selectedValue === "Products"){
           accounts.style.display = 'none';
            customers.style.display = 'none';
            campaigns.style.display = 'none';
            products.style.display = 'block';
            enrollments.style.display = 'none';
        } else if(selectedValue === "CampaignsEnroll"){
            accounts.style.display = 'none';
            customers.style.display = 'none';
            campaigns.style.display = 'none';
            products.style.display = 'none';
            enrollments.style.display = 'block';
        } else if(document.getElementById("choose-table").selectedIndex === 0){
            document.getElementById("table-backup").style.display = "block";
        }
        // Add more conditions if you have more tables
    };
