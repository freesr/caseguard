<?php get_header(); ?>
</div>

<div class="post-content single-post">
    <?php 
    if (have_posts()) : 
        while (have_posts()) : the_post(); ?>
            <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
                <div class="entry-header">
                    <h1 class="entry-title"><?php the_title(); ?></h1>
                    <div class="entry-meta">
                        <span class="category-links">
                            <?php _e('Categories: ', 'textdomain'); ?>
                            <?php the_category(', '); ?>
                        </span>
                    </div><!-- .entry-meta -->
                </div><!-- .entry-header -->

                <?php if (has_post_thumbnail()) : ?>
                    <div class="post-thumbnail">
                        <?php the_post_thumbnail('large'); ?>
                    </div>
                <?php endif; ?>

                <div class="entry-content">
                    <?php the_content(); ?>
                </div><!-- .entry-content -->

                <footer class="entry-footer">
                    <span class="tags-links">
                        <?php _e('Tags: ', 'textdomain'); ?>
                        <?php the_tags('', ', ', ''); ?>
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


<style>

.background-video {
    height: 1000px;
}
.post-content{
    position: relative;
    width: 713px;
    height: 329px;
    margin-top: 120px;
    margin-left: 83px;
    z-index: 1;
}
    .single-post .entry-title {
    font-size: 2em;
    color: #333;
    color: #00F3FF;
    background: none;
    border: none;
}

.category-links{
    color: white;
}

.category-links a{
    color: #00F3FF;
}

.single-post .post-thumbnail img {
    border: 2px solid #ccc;
    border-radius: 8px;
    max-width: 100%;
    height: auto;
}

.single-post .entry-content {
    font-size: 1.2em;
    line-height: 1.6;
    color: #444;
    color: #00F3FF;
    background: none;
    border: none;
}

.single-post .tags-links {
    margin-top: 20px;
    display: block;
    font-size: 1em;
    color: white;
}

.single-post .tags-links a {
    color: #00F3FF;
    text-decoration: none;
}

.single-post .tags-links a:hover {
    text-decoration: underline;
}

</style>