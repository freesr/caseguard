<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=9; IE=8; IE=7; IE=edge" />
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>CasseGuard</title>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
    <div class="background-video">
        <video autoplay muted loop>
            <source src="<?php echo get_template_directory_uri(); ?>/assets/videos/section1_background.mp4" type="video/mp4">
        </video>
        <div class="content">
            <header>
                <nav>
                    <div class="logo">
                        <a href="<?php echo esc_url(home_url('/')); ?>">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/CaseGuard_logo.svg" alt="Logo">
                        </a>
                    </div>
                    <div class="buttons">
    <button class="button1" onclick="scrollToSection('.section2')">Button 1</button>
    <button class="button2" onclick="scrollToSection('.section2')">Button 2</button>
</div>
                </nav>
            </header>