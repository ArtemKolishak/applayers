<?php
/**
 * The template for displaying all single posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#single-post
 *
 * @package applayers
 */
 ?>
 
<?php get_header(); ?>
<?php get_template_part( 'template-parts/breadcrumbs' ); ?>

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
								
								get_template_part( 'template-parts/content', 'single' );

								// If comments are open or we have at least one comment, load up the comment template.
								if ( comments_open() || get_comments_number() ) {
									comments_template();
								}

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
</section><!-- .post_blog_bg .primary-bg -->

<?php get_footer(); ?>