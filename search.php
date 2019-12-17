<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/#search-result
 *
 * @package applayers
 */
?>

<?php get_header(); ?>;
<?php get_template_part( 'template-parts/breadcrumbs' ); ?>;

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

								/**
								 * Run the loop for the search to output the results.
								 * If you want to overload this in a child theme then include a file
								 * called content-search.php and that will be used instead.
								 */

								get_template_part( 'template-parts/content', 'search' );

							endwhile; 
							/* End of the loop */
							else:
								get_template_part( 'template-parts/content', 'none' );
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