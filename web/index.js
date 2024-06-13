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

const getFeedBack = () => {
    const toast = document.querySelectorAll('.toast');
    const submit = document.querySelectorAll('.btn-primary[type="submit"]');
    
    submit.forEach((btn) => {
        btn.addEventListener("click", () => {
            toast.forEach((element) => {
                element.textContent = 'Form submitted';
                element.style.backgroundColor = 'cyan';
                element.style.display = 'block';
            });
            return toast;
        });
        return btn;
    });
    
};

countdownText();

