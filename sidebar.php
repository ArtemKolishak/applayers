<?php
/**
 * The sidebar containing the main widget area
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package AppLayers
 */
?>

<aside class="col-md-4">
	<?php if(is_active_sidebar( 'sidebar-1' ) ): ?>
	<div class="side_blog_bg">
		<?php dynamic_sidebar( 'sidebar-1' ); ?>
	</div>
	<?php endif; ?>
</aside>