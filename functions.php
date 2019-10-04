<?php
/**
 * applayers functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package applayers
 */

if ( ! function_exists( 'applayers_setup' ) ) :
	/**
	 * Sets up theme defaults and registers support for various WordPress features.
	 *
	 * Note that this function is hooked into the after_setup_theme hook, which
	 * runs before the init hook. The init hook is too late for some features, such
	 * as indicating support for post thumbnails.
	 */
	function applayers_setup() {
		/*
		 * Make theme available for translation.
		 * Translations can be filed in the /languages/ directory.
		 * If you're building a theme based on applayers, use a find and replace
		 * to change 'applayers' to the name of your theme in all the template files.
		 */
        load_theme_textdomain( 'applayers', get_template_directory() . '/languages' );

        /*
		 * Let WordPress manage the document title.
		 * By adding theme support, we declare that this theme does not use a
		 * hard-coded <title> tag in the document head, and expect WordPress to
		 * provide it for us.
		 */
        add_theme_support( 'title-tag' );

        /* 
		 * Enable support for Post Thumbnails on posts and pages.
		 *
		 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		 */
        add_theme_support( 'post-thumbnails' );
        set_post_thumbnail_size( 730, 446 );

        // This theme uses wp_nav_menu() in one location.
	    register_nav_menu( 'primary', 'Primary menu' );

        /*
         * Switch default core markup for search form, comment form, and comments
         * to output valid HTML5.
         */
        add_theme_support( 'html5', array(
            'search-form',
            'comment-form',
            'comment-list',
            'gallery',
            'caption',
        ) );

        /*
         * Enable support for Post Formats
         * 
         * @link https://developer.wordpress.org/themes/functionality/post-formats/
         */
        add_theme_support( 'post-formats', array(
            'aside',
            'gallery',
            'link',
            'image',
            'quote',
            'video',
            'audio',
            'chat'  
        ) );
        
        /**
		 * Add support for core custom logo.
		 *
		 * @link https://codex.wordpress.org/Theme_Logo
		 */
		add_theme_support( 'custom-logo', array(
			'height'      => 31,
			'width'       => 134,
			'flex-width'  => true,
			'flex-height' => true,
		) );
    }
endif;
add_action( 'after_setup_theme', 'applayers_setup' );

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




