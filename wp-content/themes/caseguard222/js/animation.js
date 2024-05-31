// Wait for the DOM to load
document.addEventListener('DOMContentLoaded', function() {
   
    const scrollLinks = document.querySelectorAll('.link-row');

  
    scrollLinks.forEach(link => {
        link.addEventListener('click', function(event) {
     
            event.preventDefault();

           
            window.scrollTo({
                top: 0, 
                left: 0, 
                behavior: 'smooth' 
            });
        });
    });


    // Smooth scroll to Section 2 when any button within .buttons-container-group is clicked

    const buttons = document.querySelectorAll('.buttons-container-group .button, .header-buttons .custom-button');

    // Add click event listener to each button
    buttons.forEach(button => {
        button.addEventListener('click', function(event) {
            // Prevent default link behavior
            event.preventDefault();

            // Get the target section's ID from the href attribute of the button
            const targetSectionId = this.getAttribute('href').substring(1);

            // Scroll to the target section
            document.getElementById(targetSectionId).scrollIntoView({
                behavior: 'smooth'
            });
        });
    });










    const header = document.querySelector('.listbox-main');
    const chevron = document.querySelector('.chevron');
    const checkboxContainer = document.querySelector('.checkbox-container');
    const selectedText = document.querySelector('.placeholder');
    const checkboxes = document.querySelectorAll('input[type="checkbox"]');
    
    function updateSelection() {
        const selectedOptions = [];
        checkboxes.forEach(checkbox => {
            if (checkbox.checked) {
                const label = checkbox.nextElementSibling.textContent;
                selectedOptions.push(label);
            }
        });
        selectedText.textContent = selectedOptions.length > 0 ? selectedOptions.join(', ') : 'Select What to Filter';
    }
    
    header.addEventListener('click', function() {
        const isOpen = checkboxContainer.style.display === 'block';
        checkboxContainer.style.display = isOpen ? 'none' : 'block';
        chevron.style.transform = isOpen ? 'rotate(135deg)' : 'rotate(-45deg)'; 
    });
    
    // Click outside to close
    window.addEventListener('click', function(event) {
        if (!header.contains(event.target) && checkboxContainer.style.display === 'block') {
            checkboxContainer.style.display = 'none';
            chevron.style.transform = 'rotate(135deg)';
        }
    });
    
    checkboxes.forEach(checkbox => {
        checkbox.addEventListener('change', updateSelection);
    });






    const slides = document.querySelectorAll('.carousel-slide');
    const dots = document.querySelectorAll('.dot');
    const colorNameElement = document.getElementById('slide-name');
    const navLeft = document.querySelector('.nav-left');
    const navRight = document.querySelector('.nav-right');
    const slideConfigurations = [
        { color: 'Black 1', transform: 'translateX(-300px) scale(0.75)', zIndex: 1, opacity: 0.6, width: '640px', height: '360px' },
        { color: 'Blue 2', transform: 'translateX(-150px) scale(0.85)', zIndex: 2, opacity: 0.7, width: '720px', height: '405px' },
        { color: 'Blue 1', transform: 'translateX(0px) scale(1)', zIndex: 5, opacity: 1, width: '800px', height: '474px' },
        { color: 'Green 2', transform: 'translateX(150px) scale(0.85)', zIndex: 2, opacity: 0.7, width: '720px', height: '405px' },
        { color: 'Green 1', transform: 'translateX(300px) scale(0.75)', zIndex: 1, opacity: 0.6, width: '640px', height: '360px' },
        { color: 'Black 2',  transform: 'translateX(450px) scale(0.6)', zIndex: 1, opacity: 0.5 ,width: '640px', height: '360px' }
    ];

    let currentIndex = 2; 
    let timer = setInterval(autoRotateSlides, 3000);

    function updateSlides() {
        slides.forEach((slide, index) => {
            let configIndex = (currentIndex + index -2 + slides.length) % slides.length;
            let config = slideConfigurations[configIndex];
            slide.style.transform = config.transform;
            slide.style.zIndex = config.zIndex;
            slide.style.opacity = config.opacity;
            slide.style.width = config.width;
            slide.style.height = config.height;
            slide.style.visibility = (configIndex === 5) ? 'hidden' : 'visible';
            if (index === 2) { 
                colorNameElement.textContent = config.color; 
                let currentLink = slide.querySelector('a');
                currentLink.onclick = function(event) {
                    event.stopPropagation();
                    window.location.href = this.href; 
                };
            } else {
                slide.querySelectorAll('a').forEach(anchor => {
                    anchor.onclick = function(event) {
                        event.stopPropagation(); 
                    };
                });
            }
        });

    updateActiveDot(currentIndex);
    }

    function updateActiveDot(index) {
    dots.forEach((dot, i) => {
        dot.classList.remove('active');
        if(i === index) { 
            dot.classList.add('active');
        }
    });
}

function resetTimer() {
    clearInterval(timer); 
    timer = setInterval(autoRotateSlides, 3000); 
}

function autoRotateSlides() {
    currentIndex--; 
    if (currentIndex < 0) currentIndex = slides.length - 1; 
    updateSlides();
}


dots.forEach((dot, index) => {
    dot.addEventListener('click', (event) =>{
        event.stopPropagation(); 
        currentIndex = index;  
        updateSlides();
        resetTimer();
    });
});

navLeft.addEventListener('click', (event) => {
    event.stopPropagation();
    currentIndex--;
    if (currentIndex < 0) currentIndex = slides.length - 1;
    updateSlides();
    resetTimer();
});

navRight.addEventListener('click', (event) => {
    event.stopPropagation(); 
    currentIndex++;
    if (currentIndex >= slides.length) currentIndex = 0;
    updateSlides();
    resetTimer();
});

autoRotateSlides();


});



















