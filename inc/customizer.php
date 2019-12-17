<?php
/**
 * Theme Customizer.
 *
 * @link https://codex.wordpress.org/Theme_Customization_API
 * 
 * @package applayers
 */

function applayers_customize_register( $wp_customize ) {
    //All our sections, settings, and controls will be added here   
    
    $wp_customize->add_setting( 'header_social' , array(
        'default'   => __( 'Share Your Favorite Mobile Apps With Your Friends', 'applayers' ),
        'transport' => 'refresh',
    ) );

    $wp_customize->add_setting( 'facebook_social' , array(
        'default'   => __( 'Url facebook', 'applayers' ),
        'transport' => 'refresh',
    ) );

    $wp_customize->add_setting( 'twitter_social' , array(
        'default'   => __( 'Url twitter', 'applayers' ),
        'transport' => 'refresh',
    ) );

    $wp_customize->add_setting( 'linkedin_social' , array(
        'default'   => __( 'Url linkedin', 'applayers' ),
        'transport' => 'refresh',
    ) );
    
    $wp_customize->add_setting( 'google_social' , array(
        'default'   => __( 'Url google', 'applayers' ),
        'transport' => 'refresh',
    ) );

    $wp_customize->add_setting( 'youtube_social' , array(
    'default'   => __( 'Url youtube', 'applayers' ),
    'transport' => 'refresh',
    ) );

    $wp_customize->add_setting( 'instagram_social' , array(
        'default'   => __( 'Url instagram', 'applayers' ),
        'transport' => 'refresh',
    ) );

    $wp_customize->add_setting( 'footer_copy' , array(
        'default'   => __( '2016 © Copyright Applayers. All rights Reserved. Powered By Free AppLayers Template.', 'applayers' ),
        'transport' => 'refresh',
    ) );

    $wp_customize->add_section( 'social_section' , array(
        'title'      => __( 'Social Settings', 'applayers' ),
        'priority'   => 30,
    ) );

    $wp_customize->add_section( 'footer_settings' , array(
        'title'      => __( 'Footer Settings', 'applayers' ),
        'priority'   => 31,
    ) );

    $wp_customize->add_control(
        'header_social', 
        array(
            'label'    => __( 'Social header in footer', 'applayers' ),
            'section'  => 'social_section',
            'settings' => 'header_social',
            'type'     => 'text',
    ) );

    $wp_customize->add_control(
        'facebook_social', 
        array(
            'label'    => __( 'Facebook profile url', 'applayers' ),
            'section'  => 'social_section',
            'settings' => 'facebook_social',
            'type'     => 'text',
    ) );
        
    $wp_customize->add_control(
        'twitter_social', 
        array(
            'label'    => __( 'Twitter profile url', 'applayers' ),
            'section'  => 'social_section',
            'settings' => 'twitter_social',
            'type'     => 'text',
    ) );

    $wp_customize->add_control(
        'linkedin_social', 
        array(
            'label'    => __( 'Linkedin profile url', 'applayers' ),
            'section'  => 'social_section',
            'settings' => 'linkedin_social',
            'type'     => 'text',
    ) );

    $wp_customize->add_control(
        'google_social', 
        array(
            'label'    => __( 'Google profile url', 'applayers' ),
            'section'  => 'social_section',
            'settings' => 'google_social',
            'type'     => 'text',
    ) );
        
    $wp_customize->add_control(
        'youtube_social', 
        array(
            'label'    => __( 'YouTube profile url', 'applayers' ),
            'section'  => 'social_section',
            'settings' => 'youtube_social',
            'type'     => 'text',
    ) );

    $wp_customize->add_control(
        'instagram_social', 
        array(
            'label'    => __( 'Instagram profile url', 'applayers' ),
            'section'  => 'social_section',
            'settings' => 'instagram_social',
            'type'     => 'text',
    ) );

    $wp_customize->add_control(
        'footer_copy', 
        array(
            'label'    => __( 'Footer settings', 'applayers' ),
            'section'  => 'footer_settings',
            'settings' => 'footer_copy',
            'type'     => 'textarea',
    ) );
 }

 add_action( 'customize_register', 'applayers_customize_register' );