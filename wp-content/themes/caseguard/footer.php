<div class="footer">
    <div class="left-footer">
    <div class="logo" style="margin-top:0px;padding-top:16px">
                        <a href="<?php echo esc_url(home_url('/')); ?>">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/CaseGuard_logo.svg" alt="Logo">
                        </a>
                    </div>
    
    <div class="media-logo">
       
        <span> <a href="<?php echo esc_url(home_url('/')); ?>">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/twitter_logo.png" alt="Logo">
                        </a>
        </span>
        <span> <a href="<?php echo esc_url(home_url('/')); ?>">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/facebook_logo.png" alt="Logo">
                        </a>
        </span>
        <span> <a href="<?php echo esc_url(home_url('/')); ?>">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/linkdin_logo.png" alt="Logo">
                        </a>
        </span>
        <span> <a href="<?php echo esc_url(home_url('/')); ?>">
                            <img src="<?php echo get_template_directory_uri(); ?>/assets/images/youtube_logo.png" alt="Logo">
                        </a>
        </span>
       
    </div>
    </div>
    <div class="right-footer">

    
    <?php
// Fetch the posts by title
$post_titles = array('Blue 2', 'Black 1', 'Blue 1', 'Green 2', 'Black 2', 'Green 1');
$post_urls = array();

foreach ($post_titles as $title) {
    $post = get_page_by_title($title, OBJECT, 'post');
    if ($post) {
        $post_urls[$title] = get_permalink($post->ID);
    } else {
        $post_urls[$title] = '#'; // Default link if post not found
    }
}
?>

<table>
  <thead>
    <tr>
      <th colspan="2">Header for Both Columns</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <td class="explore">Explore</td>
    </tr>
    <tr>
      <td><a href="<?php echo esc_url($post_urls['Blue 2']); ?>">Blue 2</a></td>
      <td><a href="<?php echo esc_url($post_urls['Black 1']); ?>">Black 1</a></td>
    </tr>
    <tr>
      <td><a href="<?php echo esc_url($post_urls['Blue 1']); ?>">Blue 1</a></td>
      <td><a href="<?php echo esc_url($post_urls['Green 2']); ?>">Green 2</a></td>
    </tr>
    <tr>
      <td><a href="<?php echo esc_url($post_urls['Black 2']); ?>">Black 2</a></td>
      <td><a href="<?php echo esc_url($post_urls['Green 1']); ?>">Green 1</a></td>
    </tr>
  </tbody>
</table>

    </div>
    <div class="site-info">© CaseGuard Web Dev Assessment 2024</div>
</div>
<?php wp_footer(); ?>
</body>
</html>