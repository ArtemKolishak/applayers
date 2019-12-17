<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package applayers
 */
 ?>

<article id="post-<?php the_ID(); ?>" <?php post_class( 'blog_post' ); ?>>
	<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
							
	<div class="blog_category">
		<ul> 
			<li><?php the_category(', '); ?></li>
		</ul>
	</div><!-- .blog_category -->	

	<div class="blog_text">
		<ul>
			<li> | </li>
			<li><?php esc_html_e( 'Post By :', 'applayers' ); ?> <?php the_author_posts_link(); ?></li>
			<li> | </li>
			<li><?php esc_html_e( 'On :', 'applayers' ); ?> <?php the_time( 'j F Y' ); ?></li>
		</ul>
	</div><!-- .blog_text -->
							
	<div class="blog_post_img">
		<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
	</div><!-- .blog_post_img -->
							
		<?php the_excerpt(); ?>
						
		<a href="<?php the_permalink(); ?>"><?php esc_html_e( 'Continue reading', 'applayers' ); ?> <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>

</article><!-- #post-<?php the_ID(); ?> -->