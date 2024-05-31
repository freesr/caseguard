<?php get_header(); ?>
</div>
<div class="main-box">
    <div class="tag-div"> Tag title</div>
    <div class="inner-box">
    <div class="heading">
        <div class="section-left"> Section 1</div>
        <div class="section-right">Section B</div>
    </div>
    <div class="main-content"> Loremedeede ipsum dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec. Sed sit amet neque sollicitudin, semper urna et, rutrum massa. Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.</div>
    <div class="buttons-row">
        <button class="main-button1" onclick="scrollToSection2()">Button 1 ></button>
        <button class="main-button2" onclick="scrollToSection2()">Button 2 ></button>
    </div>
   
    </div>
    </div>
    </div>
    <div class="section2">
        <img src="<?php echo get_template_directory_uri(); ?>/assets/images/section2_bg.png" alt="Logo">
        <div class="filter-header">
            <div class="mini-heading"> Filtering Section</div>
            <h1>Section 2</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi.  </p>
        </div>
        <div class="filter">
            <select>
                <option>Select What to Filter</option>
            </select>
        </div>
        <!-- <div class="carousel">
            <div class="carousel-image1">
            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/IMG_5_Green.jpg" alt="Green Aurora">
            </div>
        </div> -->

    
</div>

   
    <?php get_footer(); ?>
</body>
</html>