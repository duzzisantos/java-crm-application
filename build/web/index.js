/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */


//Counts down text area remaining character limit to provide feedback to user 
const countdownText = () => {
    const text = document.getElementById('countdown-text');
    const textInput = document.getElementById('campaign_content');
    
    textInput.addEventListener('input', () => {
        const {length} = textInput.value.split("");
        const limit = 255;
      
      if((limit - length) < 35){
          text.style.color = 'red';
      } 
      if((limit - length) > 35){
          text.style.color = 'gray';
      } 
      if(length < limit) {
        text.textContent = `Remaining ${limit - length}`;
      } else {
          text.textContent = `Remaining 0`;
      }
    });
};



//Event listener for showing and hiding toasts

    document.addEventListener('DOMContentLoaded', () => {
    const closeButtons = document.querySelectorAll('.close-btn');

    closeButtons.forEach((button) => {
        button.addEventListener('click', () => {
            const toast = button.closest('.toast');
            hideToast(toast);
        });
    });

    window.showToast = function(toast) {
        toast.classList.add('show');
        setTimeout(() => {
            hideToast(toast);
        }, 7000); // Hide after 7 seconds
    };

    function hideToast(toast) {
        toast.classList.remove('show');
    }
});

 document.addEventListener('DOMContentLoaded', () => {
    const closeButtons = document.querySelectorAll('.close-btn');

    closeButtons.forEach((button) => {
        button.addEventListener('click', () => {
            const toast = button.closest('.toast1');
            hideToast(toast);
        });
    });

    window.showToast = function(toast) {
        toast.classList.add('show');
        setTimeout(() => {
            hideToast(toast);
        }, 7000); // Hide after 7 seconds
    };

    function hideToast(toast) {
        toast.classList.remove('show');
    }
});


countdownText();


