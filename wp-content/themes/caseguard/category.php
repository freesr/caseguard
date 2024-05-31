<?php get_header(); ?>

<div class="category-content">
    <h1><?php single_cat_title(); ?></h1>
    <?php 
    if ( have_posts() ) : 
        while ( have_posts() ) : the_post(); ?>
            <div class="post-item">
                <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                <?php if ( has_post_thumbnail() ) : ?>
                    <div class="post-thumbnail">
                        <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
                    </div>
                <?php endif; ?>
                <div class="post-excerpt">
                    <?php the_excerpt(); ?>
                </div>
            </div>
        <?php 
        endwhile; 
        the_posts_navigation();
    else: 
        ?>
        <p>No posts found in this category.</p>
    <?php
    endif; 
    ?>
</div>

<?php get_footer(); ?>
