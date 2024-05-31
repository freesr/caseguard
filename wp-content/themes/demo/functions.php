<?php 


function load_css()
{
    //Registering style
    wp_register_style('bootstrap_css', get_template_directory_uri().'/css/bootstrap.min.css' );

    //enqueueing
    wp_enqueue_style('bootstrap_css');

    wp_register_style('header_css', get_template_directory_uri().'/css/header.css' );
    //enqueueing
    wp_enqueue_style('header_css');



    wp_register_style('section1_css', get_template_directory_uri().'/css/section1.css' );
    //enqueueing
    wp_enqueue_style('section1_css');

    wp_register_style('section2_css', get_template_directory_uri().'/css/section2.css' );
    //enqueueing
    wp_enqueue_style('section2_css');

    wp_register_style('footer_css', get_template_directory_uri().'/css/footer.css' );
    //enqueueing
    wp_enqueue_style('footer_css');
}

add_action('wp_enqueue_scripts', 'load_css');




function load_js()
{
    wp_enqueue_script('jquery');
    //Registering style
    wp_register_script('bootstrap_js', get_template_directory_uri().'/js/bootstrap.min.js', 'jquery',false, true );
    wp_enqueue_script('bootstrap_js');

    wp_register_script('animation_js', get_template_directory_uri().'/js/animation.js', 'jquery',false, true );
    wp_enqueue_script('animation_js');
}

add_action('wp_enqueue_scripts', 'load_js');