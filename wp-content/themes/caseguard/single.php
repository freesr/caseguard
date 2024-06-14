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
                    </div>
                </div>

                <?php if (has_post_thumbnail()) : ?>
                    <div class="post-thumbnail">
                        <?php the_post_thumbnail('large'); ?>
                    </div>
                <?php endif; ?>

                <div class="entry-content">
                    <?php the_content(); ?>
                </div>

                <footer class="entry-footer">
                    <span class="tags-links">
                        <?php _e('Tags: ', 'textdomain'); ?>
                        <?php the_tags('', ', ', ''); ?>
                    </span>
                </footer>
            </article>
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

.post-content {
    position: relative;
    width: 90%;
    max-width: 713px;
    height: auto;
    margin: 120px auto;
    padding: 15px;
    z-index: 1;
}

.single-post .entry-title {
    font-size: 2em;
    color: #00F3FF;
    background: none;
    border: none;
}

.category-links {
    color: white;
}

.category-links a {
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

/* Responsive CSS */
@media (max-width: 768px) {
    .post-content {
        width: 95%;
        margin-top: 60px;
        padding: 10px;
    }

    .single-post .entry-title {
        font-size: 1.5em;
    }

    .single-post .entry-content {
        font-size: 1em;
    }

    .single-post .tags-links {
        font-size: 0.9em;
    }
}

@media (max-width: 480px) {
    .post-content {
        width: 100%;
        margin-top: 30px;
        padding: 5px;
    }

    .single-post .entry-title {
        font-size: 1.2em;
    }

    .single-post .entry-content {
        font-size: 0.9em;
    }

    .single-post .tags-links {
        font-size: 0.8em;
    }
}
</style>
