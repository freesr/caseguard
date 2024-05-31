<div class="dropdown-filter-container1">
    <div class="dropdown-filter-container2">
        <div class="listbox-main">
            <span class="placeholder">Select What to Filter</span>
            <div class="chevron"></div>
        </div>
        <div class="checkbox-container">
            <div>
            <input type="checkbox" id="green" name="green" checked>
            <label for="green">Green</label>
            </div>
            <div>
            <input type="checkbox" id="blue" name="blue" checked>
            <label for="blue">Blue</label>
            </div>
            <div>
            <input type="checkbox" id="black" name="black" checked>
            <label for="black">Black</label>
            </div>
        </div>
    </div>
</div>
<!-- <div class="carousel-box-navi">
    <div class="carousel-wrapper">

        <div class="carousel-container">
            <div class="carousel-slide" id="slide1">
                <a href="http://localhost/caseguard/green-1/">    
                <img src="<?php echo esc_url( wp_get_attachment_url( 21 ) ); ?>" alt="Green 1">
                
                </a>   
            </div>
            <div class="carousel-slide" id="slide2">
            <a href="http://localhost/caseguard/green-2/">
                <img src="<?php echo esc_url( wp_get_attachment_url( 22 ) ); ?>" alt="Green 2"> 
                                </a> 
            </div>
            <div class="carousel-slide" id="slide3">
                <a href="http://localhost/caseguard/blue-1/">
                <img src="<?php echo esc_url( wp_get_attachment_url( 20 ) ); ?>" alt="Blue 1">                 </a> 
            </div>
            <div class="carousel-slide" id="slide4">
                <a href="http://localhost/caseguard/blue-2/">
                <img src="<?php echo esc_url( wp_get_attachment_url( 18 ) ); ?>" alt="Blue 2">                 </a> 
            </div>
            <div class="carousel-slide" id="slide5">
            <a href="http://localhost/caseguard/black-1/">
                <img src="<?php echo esc_url( wp_get_attachment_url( 17 ) ); ?>" alt="Black 1"> 
                                 </a> 
            </div>
            <div class="carousel-slide" id="slide6">
            <a href="http://localhost/caseguard/balck-2/">
                <img src="<?php echo esc_url( wp_get_attachment_url( 19 ) ); ?>" alt="Black 2">   </a> 
            </div>
        </div>

        <div id="slide-name">Green</div> 
        
        <div class="slider-container">
            <div class="nav-left"><img src="<?php echo esc_url( wp_get_attachment_url( 23 ) ); ?>" alt="Arrow Left"></div>
            <div class="dots-container">
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span>
                <span class="dot"></span> 
            </div>
            <div class="nav-right"><img src="<?php echo esc_url( wp_get_attachment_url( 25 ) ); ?>" alt="Arrow right"> </div>
        </div>

    </div>
</div> -->

<!-- <div class="carousel-box-navi">
    <div class="carousel-wrapper">
        <div class="carousel-container">
            <?php 
            // Define your custom query arguments
            $args = array(
                'post_type' => 'post',  // Change to your custom post type if needed
                'posts_per_page' => 6
            );

            // Execute the custom query
            $query = new WP_Query($args);

            // Check if the query has posts
            if ($query->have_posts()) :
                $slide_index = 1;  // Initialize slide index
                // Loop through the posts
                while ($query->have_posts()) : $query->the_post();
                    // Get the featured image URL
                    $image_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                    // Get the post permalink
                    $post_url = get_permalink();
                    // Get the post title for alt text
                    $post_title = get_the_title();
            ?>
                    <div class="carousel-slide" id="slide<?php echo $slide_index; ?>">
                        <a href="<?php echo esc_url($post_url); ?>">
                            <img src="<?php echo esc_url($image_url); ?>" alt="<?php echo esc_attr($post_title); ?>">
                        </a>
                    </div>
            <?php
                    $slide_index++;  // Increment slide index
                endwhile;
                // Reset post data
                wp_reset_postdata();
            else :
                echo '<p>No posts found.</p>';
            endif;
            ?>
        </div>

        <div id="slide-name">
            <?php if ($query->have_posts()) : $query->the_post(); ?>
                <?php echo esc_html($post_title); ?>
            <?php endif; ?>
        </div>

        <div class="slider-container">
            <div class="nav-left"><img src="<?php echo esc_url( wp_get_attachment_url( 23 ) ); ?>" alt="Arrow Left"></div>
            <div class="dots-container">
                <?php for ($i = 0; $i < $slide_index - 1; $i++) : ?>
                    <span class="dot"></span>
                <?php endfor; ?>
            </div>
            <div class="nav-right"><img src="<?php echo esc_url( wp_get_attachment_url( 25 ) ); ?>" alt="Arrow right"></div>
        </div>
    </div>
</div> -->


<div class="carousel-box-navi">
    <div class="carousel-wrapper">
        <div class="carousel-container">
            <?php 
            // Define your custom query arguments
            $args = array(
                'post_type' => 'post',  // Change to your custom post type if needed
                'posts_per_page' => 6,  // Number of posts to display
            );

            // Execute the custom query
            $query = new WP_Query($args);

            // Check if the query has posts
            if ($query->have_posts()) :
                $slide_index = 1;  // Initialize slide index
                // Loop through the posts
                while ($query->have_posts()) : $query->the_post();
                    // Get the featured image URL
                    $image_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                    // Get the post permalink
                    $post_url = get_permalink();
                    // Get the post title for alt text
                    $post_title = get_the_title();
                    // Get the post categories (to use for filtering)
                    $categories = get_the_category();
                    $category_classes = '';
                    foreach ($categories as $category) {
                        $category_classes .= ' ' . $category->slug;
                    }
            ?>
                    <div class="carousel-slide<?php echo $category_classes; ?>" id="slide<?php echo $slide_index; ?>">
                        <a href="<?php echo esc_url($post_url); ?>">
                            <img src="<?php echo esc_url($image_url); ?>" alt="<?php echo esc_attr($post_title); ?>">
                        </a>
                    </div>
            <?php
                    $slide_index++;  // Increment slide index
                endwhile;
                // Reset post data
                wp_reset_postdata();
            else :
                echo '<p>No posts found.</p>';
            endif;
            ?>
        </div>

        <div id="slide-name">
            <!-- Slide name will be dynamically updated by JavaScript -->
        </div>

        <div class="slider-container">
            <div class="nav-left"><img src="<?php echo esc_url(wp_get_attachment_url(23)); ?>" alt="Arrow Left"></div>
            <div class="dots-container">
                <?php for ($i = 0; $i < $slide_index - 1; $i++) : ?>
                    <span class="dot"></span>
                <?php endfor; ?>
            </div>
            <div class="nav-right"><img src="<?php echo esc_url(wp_get_attachment_url(25)); ?>" alt="Arrow right"></div>
        </div>
    </div>
</div>
