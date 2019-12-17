<?php
/**
 * Theme Breadcrumbs.
 *
 * @package applayers
 */

function applayers_the_breadcrumbs() {
    global $post;
    if(!is_home()){ 
        echo '<li><a href="'.site_url() . '"><i class="fa fa-home" aria-hidden="true"></i>'.esc_html__( 'Home', 'applayers' ). '</a></li>
            <li> / </li>' ;
            if(is_single()){ // posts
            the_category( ', ' );
            echo "<li> / </li>";
            echo '<li>';
            the_title();
            echo '</li>';
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
                    echo esc_html__( 'Search results "', 'applayers') . get_search_query() . '"';
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
                    echo '<li>'. esc_html__( 'Error 404', 'applayers' ). '</li>';
                }
                if (get_query_var('paged')) // number of page
                    echo ' (' . get_query_var('paged' ).'- page)';
                } 
    else { // home
        $pageNum=(get_query_var('paged')) ? get_query_var('paged') : 1;
        if($pageNum>1)
            echo 
                '<li><a href="'.site_url().'"><i class="fa fa-home" aria-hidden="true"></i>'. esc_html__( 'Home', 'applayers' ). '</a></li>;
                <li> / </li>  <li>'.$pageNum.'- page</li>';
            else 
                echo '<li><i class="fa fa-home" aria-hidden="true"></i>'. esc_html__( 'Home', 'applayers' ) . '</li>';
    }
}

/**
 * Delete site name at end of title
 */
add_filter('document_title_parts', function( $parts ){
	if( isset($parts['site']) ) unset($parts['site']);
	return $parts;
});