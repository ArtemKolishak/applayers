<?php
/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package applayers
 */
?>

<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
	<meta charset="<?php bloginfo( 'charset' ); ?>">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    
<?php wp_head(); ?>

</head>
<body <?php body_class(); ?>>
	<header class="navbar-fixed-top">
		<div class="container">
    		<div class="row">
        		<div class="header_top">
        			<div class="col-md-2">
            			<div class="logo_img">
						<a href="#"><?php the_custom_logo(); ?></a>
						</div><!-- .logo_img -->
					</div><!-- .col-md-2 -->
					<div class="col-md-10">
						<div class="menu_bar">	
							<nav role="navigation" class="navbar navbar-default">
								<div class="navbar-header">
                                	<button aria-controls="navbar" aria-expanded="false" data-target="#navbar" data-toggle="collapse" class="navbar-toggle collapsed" type="button">
                                    	<span class="sr-only"><?php esc_html_e( 'Toggle navigation', 'applayers' ); ?></span>
                                    	<span class="icon-bar"></span>
                                    	<span class="icon-bar"></span>
                                    	<span class="icon-bar"></span>
                                  	</button>
							   	</div><!-- .navbar-header -->
							  	<div class="collapse navbar-collapse" id="navbar">

									<?php 
										wp_nav_menu( array(
											'theme_location' => 'primary',
											'items_wrap' 	 => '<ul id="%1$s" class="%2$s">%3$s</ul>',
											'menu_class' 	 => 'nav navbar-nav',
											'menu_id' 		 => '',
											'depth'		 	 => 1,
										) );
									?>
									
                          		</div><!-- .collapse navbar-collapse #navbar -->
							</nav><!-- .navbar .navbar-default -->
						</div><!-- .menu_bar -->
    	        	</div><!-- .col-md-10 -->
			  	</div><!-- .header_top -->
			</div><!-- .row -->
		</div><!-- .container -->
	</header><!-- .navbar-fixed-top -->

