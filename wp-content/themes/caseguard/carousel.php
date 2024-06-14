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


<div class="carousel-box-navi">
    <div class="carousel-wrapper">
        <div class="carousel-container">
            <?php
            $args = array(
                'post_type' => 'post',
                'posts_per_page' => 6,
            );

            $query = new WP_Query($args);

            if ($query->have_posts()):
                $slide_index = 1;
                while ($query->have_posts()):
                    $query->the_post();
                    $image_url = get_the_post_thumbnail_url(get_the_ID(), 'full');
                    $post_url = get_permalink();
                    $post_title = get_the_title();
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
            else:
                echo '<p>No posts found.</p>';
            endif;
            ?>
        </div>

        <div id="slide-name">
        </div>

        <div class="slider-container">
            <div class="nav-left"><img src="<?php echo esc_url(wp_get_attachment_url(23)); ?>" alt="Arrow Left"></div>
            <div class="dots-container">
                <?php for ($i = 0; $i < $slide_index - 1; $i++): ?>
                    <span class="dot"></span>
                <?php endfor; ?>
            </div>
            <div class="nav-right"><img src="<?php echo esc_url(wp_get_attachment_url(25)); ?>" alt="Arrow right"></div>
        </div>
    </div>
</div>