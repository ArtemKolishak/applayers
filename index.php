<?php
/**
 * The main template file
 *
 * This is the most generic template file in a WordPress theme
 * and one of the two required files for a theme (the other being style.css).
 * It is used to display a page when nothing more specific matches a query.
 * E.g., it puts together the home page when no home.php file exists.
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package AppLayers
 */
?>

<?php get_header(); ?>

<section class="post_blog_bg primary-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
        		<div class="col-md-8">
					<?php if ( have_posts() ) :?> 
						<?php while ( have_posts() ) : the_post(); ?>
							<article class="blog_post">
								<h4><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h4>
							
								<div class="blog_category">
									<ul> 
										<li><?php the_category(', '); ?></li>
									</ul>
								</div>	

								<div class="blog_text">
									<ul>
										<li> | </li>
										<li><?php esc_html_e( 'Post By :', 'applayers' ); ?> <?php the_author_posts_link(); ?></li>
										<li> | </li>
										<li><?php esc_html_e( 'On :', 'applayers' ); ?> <?php the_time( 'j F Y' ); ?></li>
									</ul>
								</div>
							
								<div class="blog_post_img">
									<a href="<?php the_permalink(); ?>"><?php the_post_thumbnail(); ?></a>
								</div>
							
								<?php the_excerpt(); ?>
						
								<a href="<?php the_permalink(); ?>"><?php esc_html_e( 'Continue reading', 'applayers' ); ?> <i class="fa fa-long-arrow-right" aria-hidden="true"></i></a>
							</article>
					
						<?php endwhile; ?>
					<?php endif; ?>	

					<?php applayers_pagination(); ?>

				</div>	
				
				<?php get_sidebar(); ?>
				
			</div>
		</div>
	</div>
</section>

<?php get_footer(); ?>



