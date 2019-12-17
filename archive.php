<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package applayers
 */
?>

<?php get_header(); ?>
<?php get_template_part( 'template-parts/breadcrumbs-archive' ); ?>

<section class="post_blog_bg primary-bg">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
        		<div class="col-md-8">

					<?php 
						if ( have_posts() ) :
							/* Start the Loop */ 
							while ( have_posts() ) : 
								the_post();

								/*
								 * Include the Post-Type-specific template for the content.
								 * If you want to override this in a child theme, then include a file
								 * called content-___.php (where ___ is the Post Type name) and that will be used instead.
								 */
								
								get_template_part( 'template-parts/content', get_post_format() );

							endwhile;
							/* End of the loop */
						endif; 
					?>	

					<?php applayers_pagination(); ?>

				</div><!-- .col-md-8 -->	

				<!-- sidebar -->
				<?php get_sidebar(); ?>
				
			</div><!-- .col-md-12 -->
		</div><!-- .row -->
	</div><!-- .container -->
</section><!-- .post_blog_bg primary-bg -->

<?php get_footer(); ?>

 
