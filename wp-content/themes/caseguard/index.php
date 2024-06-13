<?php get_header(); ?>
</div>
<div class="main-box">
    <span class="tag-div"> Tag title</span>
    <div class="inner-box">
    <div class="heading">
        <div class="section-left"> Section 1</div>
        <div class="section-right"> <div class="message">
   <div class="word1">Alpha</div>
    <div class="word2">Bravo</div>
    <div class="word3">Charlie</div>
    <div class="word4">Delta</div>
    <div class="word5">Echo</div>
    <div class="word6">Foxtrot</div>
  </div></div>
    </div>
    <div class="main-content"> <span style="
    font-family: Segoe UI;
    font-size: 18px;
    font-weight: 700;
    line-height: 28.8px;
    text-align: left;
"> Loremedeede ipsum </span> dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi. Nunc suscipit ullamcorper dolor, et suscipit leo consequat nec. Sed sit amet neque sollicitudin, semper urna et, rutrum massa. Suspendisse nec euismod ex. Pellentesque nunc metus, rhoncus sed scelerisque ut, porta non eros.</div>
    <div class="buttons-row">
        <button class="main-button1" onclick="scrollToSection('.section2')">Button 1 ></button>
        <button class="main-button2" onclick="scrollToSection('.section2')">Button 2 ></button>
    </div>
   
    </div>
    </div>
    </div>
    <div class="section2">
        <img loading="lazy" src="<?php echo get_template_directory_uri(); ?>/assets/images/section2_bg.png" alt="Section 2 Backgroun">
        <div class="filter-header">
            <div class="mini-heading"> Filtering Section</div>
            <h1>Section 2</h1>
            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras tortor nibh, vestibulum id elit at, eleifend condimentum mi.  </p>
        </div>
        <?php include 'carousel.php' ?>

</div>
   
    <?php get_footer(); ?>
</body>
</html>