<?php get_header(); ?>

<div class="post-content">
    <?php 
    if (have_posts()) : 
        while (have_posts()) : the_post(); ?>
            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                <header class="entry-header">
                    <h1 class="entry-title"><?php the_title(); ?></h1>
                    <div class="entry-meta">
                        <span class="category">
                            <?php _e('Category: ', 'textdomain'); ?>
                            <?php the_category(', '); ?>
                        </span>
                    </div>
                </header><!-- .entry-header -->

                <?php if (has_post_thumbnail()) : ?>
                    <div class="post-thumbnail">
                        <?php the_post_thumbnail('large'); ?>
                    </div>
                <?php endif; ?>

                <div class="entry-content">
                    <?php the_content(); ?>
                </div><!-- .entry-content -->

                <footer class="entry-footer">
                    <span class="posted-on">
                        <?php _e('Posted on ', 'textdomain'); ?>
                        <time datetime="<?php echo get_the_date('c'); ?>"><?php echo get_the_date(); ?></time>
                    </span>
                    <span class="byline">
                        <?php _e(' by ', 'textdomain'); the_author_posts_link(); ?>
                    </span>
                </footer><!-- .entry-footer -->
            </article><!-- #post-## -->
        <?php 
        endwhile; 
    else: 
        ?>
        <p><?php _e('Sorry, no posts matched your criteria.', 'textdomain'); ?></p>
    <?php
    endif; 
    ?>
</div>

<?php get_footer(); ?>
