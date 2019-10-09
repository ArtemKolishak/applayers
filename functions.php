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


/*
 *Filters the string in the "more" link displayed after a trimmed excerpt.
 */
add_filter( 'excerpt_more', function($more) {
	return '';
} );

/**
 * Add a Breadcrumbs
 */
function applayers_the_breadcrumbs(){
    global $post;
    if(!is_home()){ 
        echo 
            '<li><a href="'.site_url() . '"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>
            <li> / </li>' ;
            if(is_single()){ // posts
            the_category( ', ' );
            echo "<li> / </li>";
            echo '<li> ';
            the_title();
            echo '</li> ';
            }
            elseif (is_page()) { // pages
                if ($post->post_parent ) {
                    $parent_id  = $post->post_parent;
                    $breadcrumbs = array();
                    while ($parent_id) {
                        $page = get_page($parent_id);
                        $breadcrumbs[] = '<li><a href="' . get_permalink($page->ID) . '">' . get_the_title($page->ID) . '</a></li>';
                        $parent_id  = $page->post_parent;
                    }
                    $breadcrumbs = array_reverse($breadcrumbs);
                    foreach ($breadcrumbs as $crumb) echo $crumb . ' <li> / </li>; ';
                }
                echo the_title();
            }
            elseif (is_category()) { // category
                global $wp_query;
                $obj_cat = $wp_query->get_queried_object();
                $current_cat = $obj_cat->term_id;
                $current_cat = get_category($current_cat);
                $parent_cat = get_category($current_cat->parent);
                if ($current_cat->parent != 0) 
                    echo(get_category_parents($parent_cat, TRUE, ' <li> / </li> '));
                        single_cat_title();
                }
                elseif (is_search()) { // search pages
                    echo 'Search results "' . get_search_query() . '"';
                }
                elseif (is_tag()) { // tags
                    echo single_tag_title('', false);
                }
                elseif (is_day()) { // archive (days)
                    echo '
                        <li><a href="' . get_year_link(get_the_time('Y')) . '">' . get_the_time('Y') . '</a></li> 
                        <li> / </li> ' ;
                    echo 
                        '<li><a href="' . get_month_link(get_the_time('Y'),get_the_time('m')) . '">' . get_the_time('F') . '</a></li> 
                        <li> / </li> ';
                    echo get_the_time( 'd' );
                }
                elseif (is_month()) { // archive (months)
                    echo 
                        '<li><a href="' . get_year_link(get_the_time('Y')) . '">' . get_the_time('Y') . '</a></li> 
                        <li> / </li> ';
                    echo get_the_time( 'F' );
                }
                elseif (is_year()) { // archive (years)
                    echo get_the_time( 'Y' );
                }
                elseif (is_author()) { // authors
                    global $author;
                    $userdata = get_userdata($author);
                    echo '<li>Posted ' . $userdata->display_name . '</li>';
                } 
                elseif (is_404()) { // if page not found
                    echo '<li>Error 404</li>';
                }
                if (get_query_var('paged')) // number of page
                    echo ' (' . get_query_var('paged' ).'- page)';
                } 
    else { // home
        $pageNum=(get_query_var('paged')) ? get_query_var('paged') : 1;
        if($pageNum>1)
            echo 
                '<li><a href="'.site_url().'"><i class="fa fa-home" aria-hidden="true"></i>Home</a></li>;
                <li> / </li>  <li>'.$pageNum.'- page</li>';
            else 
                echo '<li><i class="fa fa-home" aria-hidden="true"></i>Home</li>';
    }
}

/**
 * Delete site name at end of title
 */
add_filter('document_title_parts', function( $parts ){
	if( isset($parts['site']) ) unset($parts['site']);
	return $parts;
});

/**
 * Add a Pagination
 */
function applayers_pagination( $args = array() ) {
    
    $defaults = array(
        'range'           => 4,
        'custom_query'    => FALSE,
        'previous_string' => __( 'Previous', 'text-domain' ),
        'next_string'     => __( 'Next', 'text-domain' ),
        'before_output'   => '<div class="next_page"><ul class="page-numbers">',
        'after_output'    => '</ul></div>'
    );
    
    $args = wp_parse_args( 
        $args, 
        apply_filters( 'applayers_pagination_defaults', $defaults )
    );
    
    $args['range'] = (int) $args['range'] - 1;
    if ( !$args['custom_query'] )
        $args['custom_query'] = @$GLOBALS['wp_query'];
    $count = (int) $args['custom_query']->max_num_pages;
    $page  = intval( get_query_var( 'paged' ) );
    $ceil  = ceil( $args['range'] / 2 );
    
    if ( $count <= 1 )
        return FALSE;
    
    if ( !$page )
        $page = 1;
    
    if ( $count > $args['range'] ) {
        if ( $page <= $args['range'] ) {
            $min = 1;
            $max = $args['range'] + 1;
        } elseif ( $page >= ($count - $ceil) ) {
            $min = $count - $args['range'];
            $max = $count;
        } elseif ( $page >= $args['range'] && $page < ($count - $ceil) ) {
            $min = $page - $ceil;
            $max = $page + $ceil;
        }
    } 
    else {
        $min = 1;
        $max = $count;
    }
    
    $echo = '';
    $previous = intval($page) - 1;
    $previous = esc_attr( get_pagenum_link($previous) );
    
    if ( $previous && (1 != $page) )
        $echo .= '<li><a href="' . $previous . '" class="page-numbers" title="' . __( 'previous', 'text-domain') . '">' . $args['previous_string'] . '</a></li>';
    
    if ( !empty($min) && !empty($max) ) {
        for( $i = $min; $i <= $max; $i++ ) {
            if ($page == $i) {
                $echo .= '<li class="active"><span class="page-numbers current">' . str_pad( (int)$i, 1, '0', STR_PAD_LEFT ) . '</span></li>';
            } 
            else {
                $echo .= sprintf( '<li><a href="%s" class="page-numbers">%2d</a></li>', esc_attr( get_pagenum_link($i) ), $i );
            }
        }
    }
    
    $next = intval($page) + 1;
    $next = esc_attr( get_pagenum_link($next) );
    if ($next && ($count != $page) )
        $echo .= '<li><a href="' . $next . '" class="page-numbers" title="' . __( 'next', 'text-domain') . '">' . $args['next_string'] . '</a></li>';
    
    if ( isset($echo) )
        echo $args['before_output'] . $echo . $args['after_output'];
}
