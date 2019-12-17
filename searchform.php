<?php
/**
 * The template for displaying search results pages
 *
 * @link https://developer.wordpress.org/reference/functions/get_search_form
 *
 * @package applayers
 */
?>

<form role="search" method="get" class="search-form" action="<?php esc_url( home_url( '/' ) ) ?>">

    <input type="search" class="search-field" placeholder="<?php echo esc_attr_x( 'Search &hellip;', 'applayers' ) ?>" value="<?php get_search_query() ?>" name="s" />
   
    <spam class="search-submit-wrap">
    	<input type="submit" class="search-submit" value="" />
    	<i class="icon-search fa fa-search"></i>
    </spam>
    
</form>