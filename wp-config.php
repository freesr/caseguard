<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the website, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/documentation/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'caseguard' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '4j^x3.rF3IId68lvWu`F*wL}yC?,(ePm.Fl`-, 8Q%j<19i1DL %DZ Vl)d*~$#k' );
define( 'SECURE_AUTH_KEY',  '!-Q5Mnrr8JjAyOv&Vht;2aogwtZ0#kE`JMxX&x+]9r(*g`d:)B1>oGjUOX2u? hp' );
define( 'LOGGED_IN_KEY',    'VEzS>[]Cdj/{{WQw=2}333o/CmJT28S:J9{tP0&dCV/+{>NK<KCp7@p[@Y; 24oS' );
define( 'NONCE_KEY',        'd]Sa3l.@)9Uk_^<1xH}HNy+20+4s`ab+QjQ&;eq%~0cH8JfM.[g+2_K4i<P@CA`(' );
define( 'AUTH_SALT',        ';En}A,TN7;wVlHni_b*R<{C}9xso4?i#pI+kpy|gbx1:E5cxW#oz+yG]V)hD/4oT' );
define( 'SECURE_AUTH_SALT', 'S&Xm_ub0^<f/?S*|)kwVHrR)=d (]!esGrl+l0j{9)Ay`RL]~FV;zWFKNHeJ[YD/' );
define( 'LOGGED_IN_SALT',   'i#QgE:,V)jX-z]7%(H@J/>G3|?7qC#q#S*9x+]CJeXM=l*pnngE%|UF}fUMT 16L' );
define( 'NONCE_SALT',       '3J54eBAk8e5m>}ELSf#~H|.CvW]l%j)98X&Z|ilo{E i/6Or)Rp4>v41UUhA,s8/' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/documentation/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
