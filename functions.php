<?php
/**
 * AppLayers functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package AppLayers
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

	//Bootstrap CSS File
    wp_enqueue_style( 'bootstrap', get_template_directory_uri(). '/assets/libs/bootstrap/css/bootstrap.min.css', array( 'applayers-style' ) );
    
	//Font-Awesome CSS File
	wp_enqueue_style( 'font-awesome', get_template_directory_uri(). '/assets/libs/font-awesome/css/font-awesome.min.css', array( 'applayers-style' ) );

	//Animate.CSS CSS File
	wp_enqueue_style( 'animate', get_template_directory_uri(). '/assets/libs/animate.css/animate.min.css', array( 'applayers-style' ) );

	//Main Stylesheet File
	wp_enqueue_style( 'applayers-main-style', get_template_directory_uri(). '/assets/css/style.css', array( 'applayers-style' ) );


    /*JavaScript Libraries*/

    //jQuery
    wp_deregister_script( 'jquery' );
    wp_register_script( 'jquery', includes_url( '/js/jquery/jquery.js' ), false, '', true );
    wp_enqueue_script( 'jquery' );

    //Bootstrap JS
    wp_enqueue_script( 'bootstrap', get_template_directory_uri() . '/assets/libs/bootstrap/js/bootstrap.min.js', array( 'jquery' ), '', true );

    //CSS3-Animate-It
    wp_enqueue_script( 'css3-animate-it', get_template_directory_uri() . '/assets/libs/css3-animate-it/css3-animate-it.js', array( 'jquery' ), '', true);

    //JS Plugins(Jquery)
    wp_enqueue_script( 'jquery-easing', get_template_directory_uri() . '/assets/js/jquery.easing.min.js', array( 'jquery' ), '', true);

    wp_enqueue_script( 'agency', get_template_directory_uri() . '/assets/js/agency.js', array( 'jquery' ), '', true);
}

add_action( 'wp_enqueue_scripts', 'applayers_scripts' );


/*
 *Filters the string in the "more" link displayed after a trimmed excerpt.
 */
add_filter( 'excerpt_more', function($more) {
	return '';
} );


/**
 * Register widget area.
 *
 * Add a sidebar.
 * 
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function applayers_widgets_init() {
    register_sidebar( array(
        'name'          => __( 'Main Sidebar', 'applayers' ),
        'id'            => 'sidebar-1',
        'description'   => __( 'Widgets in this area will be shown on all posts and pages.', 'applayers' ),
        'before_widget' => '<div id="%1$s" class="sidebar_wrap %2$s">',
        'after_widget'  => '</div>',
        'before_title'  => '<div class="side_bar_heading"><h6>',
        'after_title'   => '</h6></div>',
    ) );
}
add_action( 'widgets_init', 'applayers_widgets_init' );


/**
 * Widget Categories
 */
function applayers_widget_categories($args) {

    $walker = new Walker_Categories_Applayers();
    $args = array_merge($args, array('walker' => $walker));

    return $args;
}

add_filter( 'widget_categories_args', 'applayers_widget_categories' );

/**
 * Widget Tag Cloud
 */
function applayers_tag_cloud($args) {

    $args['format'] = 'list';
    $args['smallest'] = '14';
    $args['unit'] = 'px';

    return $args;
}
add_filter( 'widget_tag_cloud_args', 'applayers_tag_cloud' );

/**
 * Classes.
 */
require_once get_parent_theme_file_path( 'inc/classes/class-walker-categories-applayers.php' );

/**
 * Functions.
 */
require get_parent_theme_file_path( '/inc/breadcrumbs.php' );
require get_parent_theme_file_path( '/inc/pagination.php' );
require get_parent_theme_file_path( '/inc/customizer.php' );

 /**
  * JQMIGRATE: Migrate is installed, version 1.4.1
  */
 add_action('wp_default_scripts', function ($scripts) {
    if (!empty($scripts->registered['jquery'])) {
        $scripts->registered['jquery']->deps = array_diff($scripts->registered['jquery']->deps, ['jquery-migrate']);
    }
});