// Document ready function to ensure the DOM is fully loaded
jQuery(document).ready(function() {

    // Smooth scroll to top when a link with class .link-row is clicked
    jQuery('.link-row').click(function(event) {
        event.preventDefault();
        jQuery('html, body').animate({
            scrollTop: 0
        }, 'smooth');
    });

    // Smooth scroll to Section 2 when any button within .buttons-container-group or .header-buttons .custom-button is clicked
    jQuery('.buttons-container-group .button, .header-buttons .custom-button').click(function(event) {
        event.preventDefault();
        const targetSectionId = jQuery(this).attr('href').substring(1);
        jQuery('#' + targetSectionId)[0].scrollIntoView({ behavior: 'smooth' });
    });

    // Toggle dropdown for checkbox filter
    const header = jQuery('.listbox-main');
    const chevron = jQuery('.chevron');
    const checkboxContainer = jQuery('.checkbox-container');
    const selectedText = jQuery('.placeholder');

    header.click(function() {
        const isOpen = checkboxContainer.css('display') === 'block';
        checkboxContainer.toggle();
        chevron.css('transform', isOpen ? 'rotate(135deg)' : 'rotate(-45deg)');
    });

    // Click outside to close the dropdown
    jQuery(window).click(function(event) {
        if (!header.is(event.target) && checkboxContainer.css('display') === 'block') {
            checkboxContainer.hide();
            chevron.css('transform', 'rotate(135deg)');
        }
    });

    // Update selected text when checkboxes change
    jQuery('input[type="checkbox"]').change(function() {
        const selectedOptions = jQuery('input[type="checkbox"]:checked').map(function() {
            return jQuery(this).next('label').text();
        }).get();
        selectedText.text(selectedOptions.length > 0 ? selectedOptions.join(', ') : 'Select What to Filter');
    });

    // Carousel functionality
    const slides = jQuery('.carousel-slide');
    const dots = jQuery('.dot');
    const colorNameElement = jQuery('#slide-name');
    const navLeft = jQuery('.nav-left');
    const navRight = jQuery('.nav-right');
    const slideConfigurations = [
        { color: 'Black 1', transform: 'translateX(-300px) scale(0.75)', zIndex: 1, opacity: 0.6, width: '640px', height: '360px' },
        { color: 'Blue 2', transform: 'translateX(-150px) scale(0.85)', zIndex: 2, opacity: 0.7, width: '720px', height: '405px' },
        { color: 'Blue 1', transform: 'translateX(0px) scale(1)', zIndex: 5, opacity: 1, width: '800px', height: '474px' },
        { color: 'Green 2', transform: 'translateX(150px) scale(0.85)', zIndex: 2, opacity: 0.7, width: '720px', height: '405px' },
        { color: 'Green 1', transform: 'translateX(300px) scale(0.75)', zIndex: 1, opacity: 0.6, width: '640px', height: '360px' },
        { color: 'Black 2', transform: 'translateX(450px) scale(0.6)', zIndex: 1, opacity: 0.5, width: '640px', height: '360px' }
    ];

    let currentIndex = 2;
    let timer = setInterval(autoRotateSlides, 3000);

    function updateSlides() {
        slides.each(function(index) {
            let configIndex = (currentIndex + index - 2 + slides.length) % slides.length;
            let config = slideConfigurations[configIndex];
            jQuery(this).css({
                transform: config.transform,
                zIndex: config.zIndex,
                opacity: config.opacity,
                width: config.width,
                height: config.height,
                visibility: (configIndex === 5) ? 'hidden' : 'visible'
            });
            if (index === 2) {
                colorNameElement.text(config.color);
                let currentLink = jQuery(this).find('a');
                currentLink.click(function(event) {
                    event.stopPropagation();
                    window.location.href = jQuery(this).attr('href');
                });
            } else {
                jQuery(this).find('a').click(function(event) {
                    event.stopPropagation();
                });
            }
        });
        updateActiveDot(currentIndex);
    }

    function updateActiveDot(index) {
        dots.removeClass('active').eq(index).addClass('active');
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

    dots.each(function(index) {
        jQuery(this).click(function(event) {
            event.stopPropagation();
            currentIndex = index;
            updateSlides();
            resetTimer();
        });
    });

    navLeft.click(function(event) {
        event.stopPropagation();
        currentIndex--;
        if (currentIndex < 0) currentIndex = slides.length - 1;
        updateSlides();
        resetTimer();
    });

    navRight.click(function(event) {
        event.stopPropagation();
        currentIndex++;
        if (currentIndex >= slides.length) currentIndex = 0;
        updateSlides();
        resetTimer();
    });

    autoRotateSlides();

    // Initialize checkbox filter with an object mapping options to corresponding slide IDs
    let optionToSlideMapping = {
        'green': ['slide1', 'slide2'],
        'blue': ['slide3', 'slide4'],
        'black': ['slide5', 'slide6']
    };

    jQuery(".checkbox-container input[type='checkbox']").change(function() {
        let checkedOptions = jQuery(".checkbox-container input:checked").map(function() {
            return jQuery(this).attr("id");
        }).get();

        jQuery(".carousel-slide").hide();

        checkedOptions.forEach(function(option) {
            if (optionToSlideMapping[option]) {
                optionToSlideMapping[option].forEach(function(slideId) {
                    jQuery('#' + slideId).show();
                });
            }
        });
    });

});
