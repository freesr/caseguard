<div class="category-content">
    <h1><?php single_cat_title(); ?></h1>
    <?php
    if (have_posts()):
        while (have_posts()):
            the_post(); ?>
            <div class="post-item">
                <h2><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>

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

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;

    }

    .category-content {
        max-width: 800px;
        margin: 20px auto;
        background: #fff;
        padding: 20px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
    }

    .category-content h1 {
        font-size: 2.5em;
        color: black;
        margin-bottom: 20px;
        border-bottom: 2px solid #e1e1e1;
        padding-bottom: 10px;
    }

    .post-item {
        margin-bottom: 20px;
        padding-bottom: 20px;
        border-bottom: 1px solid #e1e1e1;
    }

    .post-item h2 {
        font-size: 1.5em;
        margin: 0 0 10px 0;
    }

    .post-item h2 a {
        color: #3498db;
        text-decoration: none;
        transition: color 0.3s ease;
    }

    .post-item h2 a:hover {
        color: #2980b9;
    }

    .post-excerpt p {
        font-size: 1em;
        line-height: 1.6;
        color: #666;
    }
</style>