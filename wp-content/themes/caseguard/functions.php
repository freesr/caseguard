<?php function enqueue_theme_styles() {
    wp_enqueue_style('theme-style', get_stylesheet_uri());
}
add_action('wp_enqueue_scripts', 'enqueue_theme_styles'); 

function my_theme_enqueue_scripts() {
    wp_enqueue_script( 'jquery');
    // wp_enqueue_script( 'my-custom-script', get_template_directory_uri() . '/assets/js/animation.js', array(), '1.0.0', true );
    wp_enqueue_script( 'my-custom-script', get_template_directory_uri() . '/assets/js/script.js', array(), '1.0.0', true );
}
add_action( 'wp_enqueue_scripts', 'my_theme_enqueue_scripts' );


?>
