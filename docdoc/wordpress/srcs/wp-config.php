<?php

define( 'WP_DEBUG', true );
define( 'WP_DEBUG_DISPLAY', false );
define( 'WP_DEBUG_LOG', true );

define( 'DB_NAME', '_WP_BASE' );
define( 'DB_USER', 'MYSQL_USER' );
define( 'DB_PASSWORD', '_MYSQL_PASSWORD' );
define( 'DB_HOST', '_CONT_MARIADB' );
define( 'DB_CHARSET', 'utf8' );
define( 'DB_COLLATE', '' );

define( 'AUTH_KEY',         '420' );
define( 'SECURE_AUTH_KEY',  '420' );
define( 'LOGGED_IN_KEY',    '420' );
define( 'NONCE_KEY',        '420' );
define( 'AUTH_SALT',        '420' );
define( 'SECURE_AUTH_SALT', '420' );
define( 'LOGGED_IN_SALT',   '420' );
define( 'NONCE_SALT',       '420' );

$table_prefix = 'wp_';

if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

require_once ABSPATH . 'wp-settings.php';
~                                                            
