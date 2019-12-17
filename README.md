# App Layers
### WordPress Theme

---

### Blog

---

+ [WordPress](https://wordpress.org)

+ <https://developer.wordpress.org>

+ <https://developer.wordpress.org/themes>

---

+ [Template Files](https://developer.wordpress.org/themes/basics/template-files)

+ [Main Stylesheet (style.css)](https://developer.wordpress.org/themes/basics/main-stylesheet-style-css)

+ [Organizing Theme Files](https://developer.wordpress.org/themes/basics/organizing-theme-files)

+ [Template Hierarchy](https://developer.wordpress.org/themes/basics/template-hierarchy)

+ [Theme Functions](https://developer.wordpress.org/themes/basics/theme-functions)

+ [Including CSS & JavaScript](https://developer.wordpress.org/themes/basics/including-css-javascript)

+ [The Loop](https://developer.wordpress.org/themes/basics/the-loop)

+ [Theme Customization API](https://codex.wordpress.org/Theme_Customization_API)

+ [Theme Options – The Customize API](https://developer.wordpress.org/themes/customize-api)

+ [Widgets API](https://codex.wordpress.org/Widgets_API)

+ [Function Reference/register widget](https://codex.wordpress.org/Function_Reference/register_widget)

---

##### 1. ADD: index.php and style.css, screenshot.png:

1.1. index.php;
	
1.2. style.css - [Main Stylesheet (style.css)](https://developer.wordpress.org/themes/basics/main-stylesheet-style-css);
	
1.3. screenshot.png - 1200px x 900px.

##### 2. ADD: Folder assets(folders: css, js and libraries), created and conected templates(header.php, footer.php, sidebar.php) and file functions.php. MODIFIED: functions.php(Enqueue scripts and styles):

2.1. ADD: Folder assets(folders: css, js and libraries):

[Organizing Theme Files](https://developer.wordpress.org/themes/basics/organizing-theme-files)
		
[Template Hierarchy](https://developer.wordpress.org/themes/basics/template-hierarchy)
	
[Template Files](https://developer.wordpress.org/themes/basics/template-files)
	
2.2. Created templates(header.php, footer.php, sidebar.php):
	
+ [header.php](https://developer.wordpress.org/themes/basics/template-files/#template-partials);

+ [footer.php](https://developer.wordpress.org/themes/basics/template-files/#template-partials);

+ [sidebar.php](https://developer.wordpress.org/themes/basics/template-files/#template-partials).

---

2.2.1. Connected templates(Using template files):

+ [get_header()](https://developer.wordpress.org/themes/basics/template-files/#using-template-files) <https://developer.wordpress.org/reference/functios/get_header>;
				
+ [get_footer()] (https://developer.wordpress.org/themes/basics/template-files/#using-template-files) =>
<https://developer.wordpress.org/reference/functions/get_footer>;
			 
+ [get_sidebar()] (https://developer.wordpress.org/themes/basics/template-files/#using-template-files) =>
<https://developer.wordpress.org/reference/functions/get_sidebar>.
	
---		

+ [wp_head()](https://developer.wordpress.org/reference/functions/wp_head);
							 
+ [wp_footer()](https://developer.wordpress.org/reference/functions/wp_footer).
	
---
			 
2.3. ADD: functions.php:
	
functions.php - [Theme Functions](https://developer.wordpress.org/themes/basics/theme-functions).
	
2.3.1. MODIFIED: functions.php(Enqueue scripts and styles):
	
[Including CSS & JavaScript](https://developer.wordpress.org/themes/basics/including-css-javascript)
			 
##### 3. Customized theme and connected features WordPress(in functions.php file):

[Theme Functions](https://developer.wordpress.org/themes/basics/theme-functions)
	 
+ [load_theme_textdomain()](https://developer.wordpress.org/reference/functions/load_theme_textdomain);
	 
+ **[add_theme_support();](https://developer.wordpress.org/reference/functions/add_theme_support)**:
	 
[add_theme_support( 'title-tag' );](https://developer.wordpress.org/reference/functions/add_theme_support/#title-tag);
	 
[add_theme_support( 'post-thumbnails' );](https://developer.wordpress.org/reference/functions/add_theme_support/#post-thumbnails);

[set_post_thumbnail_size](https://developer.wordpress.org/reference/functions/set_post_thumbnail_size).

[add_theme_support( 'html5', array())](https://developer.wordpress.org/reference/functions/add_theme_support/#html5);

[add_theme_support( 'post-formats', array())](https://developer.wordpress.org/reference/functions/add_theme_support/#post-formats);

[add_theme_support( 'custom-logo' );](https://developer.wordpress.org/reference/functions/add_theme_support/#custom-logo); =>

=> <https://developer.wordpress.org/reference/functions/the_custom_logo>. 

##### 4. Created the menu, activated and displayed in the template. MODIFIED: functions.php, header.php, style.css(assets/css/style.css):

4.1. [register_nav_menu()](https://developer.wordpress.org/reference/functions/register_nav_menu) =>

=>[wp_nav_menu( array())]https://developer.wordpress.org/reference/functions/wp_nav_menu).

4.2. [body_class()](https://developer.wordpress.org/reference/functions/body_class).

##### 5. ADD: Loop WordPress:

[The Loop](https://developer.wordpress.org/themes/basics/the-loop); =>

=> [the_title()](https://developer.wordpress.org/reference/functions/the_title);

=> [the_permalink()](https://developer.wordpress.org/reference/functions/the_permalink)

=> [the_category()](https://developer.wordpress.org/reference/functions/the_category);

=> [the_author_posts_link()](https://developer.wordpress.org/reference/functions/the_author_posts_link);

=> [the_time()](https://developer.wordpress.org/reference/functions/the_time);

=> [the_post_thumbnail()](https://developer.wordpress.org/reference/functions/the_post_thumbnail);

=> [the_excerpt()](https://developer.wordpress.org/reference/functions/the_excerpt) => [add_filter( 'excerpt_more', function($more))](https://developer.wordpress.org/reference/hooks/excerpt_more);

##### 5. ADD: Breadcrumbs:

<https://misha.blog/wordpress/how-to-create-breadcrumbs.html>

5.1. Created the folder template-parts and file breadcrumbs.php(in the folder template-parts): template-parts\breadcrumbs.php. And connected template:

[get_template_part( 'template-parts/breadcrumbs' )](https://developer.wordpress.org/themes/basics/template-files/#using-template-files) => <https://developer.wordpress.org/reference/functions/get_template_part>;

5.2. Created the folder inc and file breadcrumbs.php(function mytheme_the_breadcrumbs()): inc\breadcrumbs.php.

##### 6. ADD: Pagination:

[Bootstrap-wordpress-pagination](https://github.com/talentedaamer/Bootstrap-wordpress-pagination).

##### 7. Theme Customization(footer):

[Theme Customization API](https://codex.wordpress.org/Theme_Customization_API)

[Theme Options – The Customize API](https://developer.wordpress.org/themes/customize-api)

[Customizer Objects](https://developer.wordpress.org/themes/customize-api/customizer-objects)


7.1. Created the file customizer.php in the folder inc: inc\customizer.php.

7.2. Any new Theme Customizer settings, sections, or controls must be defined from within a customize_register action. This action automatically loads the $wp_customize object, which is an instance of the WP_Customize_Manager class.

**Part 1: Defining Settings, Controls, Etc.***

* First, define the action like this:

function mytheme_customize_register( $wp_customize ) {
 
//All our sections, settings, and controls will be added here_ 

};
	
add_action( 'customize_register', 'mytheme_customize_register' );  

=> Adding a New Setting;
 
=> Adding a New Section;

=> Adding a New Control.

**Part 2:**

```<?php get_theme_mod( $name, $default ); ?>```

##### 8. Register Sidebar(Widget Area). ADD: Sidebar(Widget Area) and Widget Categories. Styling: Widget Area and Widget Categories:

8.1. Sidebar registration(Register Widget Area) in the functions.php: 
[register_sidebar()](https://developer.wordpress.org/reference/functions/register_sidebar) => [dynamic_sidebar()](https://developer.wordpress.org/reference/functions/dynamic_sidebar);

8.2. Widget Categories: 

[wp_list_categories()](https://developer.wordpress.org/reference/functions/wp_list_categories);

ADD:

	function applayers_widget_categories($args) {

    $walker = new Walker_Categories_Mytheme();
    
    $args = array_merge($args, array('walker' => $walker));

    return $args;
}


add_filter( 'widget_categories_args', 'mytheme_widget_categories' );

Created the class Walker_Categories_Mytheme: inc\widgets\class-walker-categories-applayers.php => 

=> connected in the functions.php by => require get_template_directory() . '/inc/widgets/class-walker-categories-applayers.php';

##### 9. Created the Widget Tag Cloud. ADD: Widget Tag Cloud and styling:

[wp_tag_cloud()](https://developer.wordpress.org/reference/functions/wp_tag_cloud)

[function wp_tag_cloud()](https://developer.wordpress.org/reference/functions/wp_tag_cloud/#source)

##### 10. Created the Widget Recent Posts. ADD: Widget Recent Post:

[Widgets API](https://codex.wordpress.org/Widgets_API)

Created the class Mytheme_Widget_Recent_Posts: inc\widgets\class-mytheme-recent-post-widget.php =>

=> connected in the functions.php by => require get_template_directory() . '/inc/widgets/class-mytheme-recent-post-widget.php'; =>

=> [Function Reference/register widget](https://codex.wordpress.org/Function_Reference/register_widget);

[add_image_size()](https://developer.wordpress.org/reference/functions/add_image_size);
[get_tags](https://codex.wordpress.org/Function_Reference/get_tags);


##### 11. Created the Widget Subscription Form. ADD: Widget Subscription Form and styling:

Created the class Mytheme_Widget_Subscribe_Form: inc\widgets\class-mythemesubscribe-form-widget.php =>

=> connected in the functions.php by => require get_template_directory() . '/inc/widgets/class-applayers-subscribe-form-widget.php'; =>

##### 12. Modified: class-applayers-subscribe-form-widget.php.

##### 13. Translation of wordress theme:

13.1. ADD (Conected) function in functions.php:

load_theme_textdomain( 'mytheme', get_template_directory() . '/languages' );

13.2. Created the folder languages and file applayers.pot: /languages/applayers.pot:

[Poedit](https://poedit.net)

esc_html();

esc_html__();

esc_html_e();

##### 14. Created template: page.php, single.php, template-parts: content.php, content-single.php, content-page.php:

+ content.php:

Created template-parts content.php: \template-parts\content.php =>

=> content in the index.php copy to the \template-parts\content.php =>

=> in the index.php conected content.php by: get_template_part( 'template-parts/content', get_post_format() ); =>

=> In content.php ADD: id ```post-<?php the_ID(); ?>``` and ```<?php post_class( 'class' ); ?>```.

+ single.php

Created template single.php(single-post) =>

=> content in the index.php copy to the single.php =>

=> in the single.php conected content-single.php by: get_template_part( 'template-parts/content', 'single' ); =>

+ content-single.php: 

=> Created template-parts content-single.php: \template-parts\content-single.php =>

=> content in the \template-parts\content.php copy to the \template-parts\content-single.php =>

DELETED: link from the heading, link from the thumbnail, link 'Continue reading';

CHANGE: the function the_exerpt(); to the function the_content();;

ADD: comments;

// If comments are open or we have at least one comment, load up the comment template.

if ( comments_open() || get_comments_number() ) {

comments_template();

}

+ page.php

Created template page.php =>

=> content in the single.php copy to the page.php =>

=> in the page.php conected content-page.php by: get_template_part( 'template-parts/content', 'page' ); =>

+ content-page.php

Create template-parts: \template-parts\content-page.php =>

=> content in the single.php copy to the content-page.php =>

DELETED: blog_category, blog_text(author, date),post_thumbnail; id and post's classes.

##### 15. ADD: Comment form and styling:

Created template comments.php.

[Comment Template](https://developer.wordpress.org/themes/template-files-section/partial-and-miscellaneous-template-files/comment-template)

[comment_form()](https://developer.wordpress.org/reference/functions/comment_form)

ADD function and filter to functions.php.

##### 16. Styling and editing comments:

[Function Reference/wp list comments](https://codex.wordpress.org/Template_Tags/wp_list_comments)

[wp_list_comments](https://developer.wordpress.org/reference/functions/wp_list_comments)

ADD function and filter to functions.php!

##### 17. Created template: search.php and searchform.php, template-parts: content-search.php and content-none.php. ADD: Widget Search form. Styling Widget Search Form:

+ search.php 

Created template search.php =>

=> content in the index.php copy to the search.php =>

=> in the search.php conected content-search.php by: get_template_part( 'template-parts/content', 'search' ); =>

+ content-search.php

=> create template-parts: \template-parts\content-search.php =>

=> content in the content.php copy to the content-search.php =>

DELETED: blog_category, blog_text, function the_exerpt(); or function the_content();, 'Continue reading'.(Meta info)

ADD: in the search.php if another conditions use function:

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

+ content-none.php

Created template-parts content-none.php: \template-parts\content-none.php =>

=> content in the page.php copy to the \template-parts\content-none.php =>

=> in the search.php conected content-none.php by: get_template_part( 'template-parts/content', 'none' ); =>

(This page could be styled. Optional)!!!

DELETED: Loop WordPress and get_header();, get_footer();, get_sidebar(); (get functions). 

ADD:(Example) <?php esc_html_e( 'Nothing found!', 'mytheme' )?>

+ searchform.php

[get_search_form();](https://developer.wordpress.org/reference/functions/get_search_form)

	<form role="search" method="get" class="search-form" action="<?php esc_url( home_url( '/' ) ) ?>">
		<label>
			<span class="screen-reader-text"> <?php _x( 'Search for:', 'label' ) ?></span>
			<input type="search" class="search-field" placeholder="<?php echo esc_attr_x( 'Search &hellip;', 'mytheme' ) ?>" value="<?php 				get_search_query() ?>" name="s" />
    	</label>
    	<input type="submit" class="search-submit" value="<?php echo esc_attr_x( 'Search', 'submit button', 'mytheme' ) ?>" />
	</form>



##### 18. Created template archive.php and template-parts: breadcrumbs-archive.php

Created template archive.php:

+ archive.php

content in the index.php copy to the archive.php =>

+ breadcrumbs-archive.php 

=> Created template-parts \template-parts\breadcrumbs-archive.php =>

=> content in the breadcrumbs.php  copy to the breadcrumbs-archive.php  =>

=> in the breadcrumbs-archive.php change `<h2><?php echo wp_get_document_title(); ?></h2>` to `<?php the_archive_title( '<h2>', '</h2>' ); ?>`

=> in the archive.php conected breadcrumbs-archive.php  by: get_template_part( 'template-parts/breadcrumbs-archive'); =>

##### 19. Created README.md.









