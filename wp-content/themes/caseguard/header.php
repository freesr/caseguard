<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="This is caseguard Assesment">
    <?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
    <div class="background-video">
        <video muted loop autoplay>
            <source src="<?php echo get_template_directory_uri(); ?>/assets/videos/section1_background.webm"
                type="video/webm">
        </video>

        <div class="content">
            <header>
                <nav>
                    <div class="logo">
                        <a href="<?php echo esc_url(home_url('/')); ?>">
                            <img rel="preload"
                                src="<?php echo get_template_directory_uri(); ?>/assets/images/CaseGuard_logo.svg"
                                alt=" CAseguard Logo">
                        </a>
                    </div>
                    <div class="buttons">
                        <button class="button1">Button 1</button>
                        <button class="button2">Button 2</button>
                    </div>
                </nav>
            </header>