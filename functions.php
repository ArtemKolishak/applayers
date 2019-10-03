<?php
/**
 * applayers functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package applayers
 */

 /**
 * Enqueue scripts and styles.
 */
function applayers_scripts() {
    
    wp_enqueue_style( 'applayers-style', get_stylesheet_uri() );

	/*Bootstrap CSS File*/
    wp_enqueue_style( 'bootstrap', get_template_directory_uri(). '/assets/lib/bootstrap/css/bootstrap.min.css', array( 'applayers-style' ) );
    
	/*Font-Awesome CSS File*/
	wp_enqueue_style( 'font-awesome', get_template_directory_uri(). '/assets/lib/font-awesome/css/font-awesome.min.css', array( 'applayers-style' ) );

	/*Animate.CSS CSS File*/
	wp_enqueue_style( 'animate', get_template_directory_uri(). '/assets/lib/animate.css/animate.min.css', array( 'applayers-style' ) );

	/*Main Stylesheet File*/
	wp_enqueue_style( 'applayers-main-style', get_template_directory_uri(). '/assets/css/style.css', array( 'applayers-style' ) );


    /*JavaScript Libraries*/

    /*jQuery*/
    wp_deregister_script( 'jquery' );
    wp_register_script( 'jquery', includes_url( '/js/jquery/jquery.js' ), false, '', true );
    wp_enqueue_script( 'jquery' );

    /*Bootstrap JS*/
    wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/assets/lib/bootstrap/js/bootstrap.min.js', array( 'jquery' ), '', true );

    /*CSS3-Animate-It*/
    wp_enqueue_script( 'css3-animate-it', get_template_directory_uri() . '/assets/lib/css3-animate-it/css3-animate-it.js', array( 'jquery' ), '', true);

    /*JS Plugins(Jquery)*/
    wp_enqueue_script( 'jquery-easing', get_template_directory_uri() . '/assets/js/jquery.easing.min.js', array( 'jquery' ), '', true);

    wp_enqueue_script( 'agency', get_template_directory_uri() . '/assets/js/agency.js', array( 'jquery' ), '', true);
}

add_action( 'wp_enqueue_scripts', 'applayers_scripts' );




