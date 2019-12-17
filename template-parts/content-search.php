<?php
/**
 * Template part for displaying results in search pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package applayers
 */
?>

<article id="post-<?php the_ID(); ?>" <?php post_class( 'blog_post' ); ?>>
	
	<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
							
	<div class="blog_post_img">
		<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
	</div><!-- .blog_post_img -->

</article><!-- #post-<?php the_ID(); ?> -->