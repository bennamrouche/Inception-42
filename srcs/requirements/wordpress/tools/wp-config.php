<?php
// source  https://wordpress.org/documentation/article/editing-wp-config-php/


define( 'DB_USER', '__user__' );
define( 'DB_PASSWORD', '__use_pass__' );
define( 'DB_HOST', '__host__' );
define( 'DB_CHARSET', 'utf8' );

define( 'DB_COLLATE', '' );

// generator  : https://api.wordpress.org/secret-key/1.1/salt/

define('AUTH_KEY',         '9I9,H<|?E$|29cp:ncde2rw-Y!?gl,-X~?s>R0snmAW+BK,pAG;*O.$I8=78;EGD');
define('SECURE_AUTH_KEY',  'yD&MJL$| -au?gL/mF*zyUn-:o!E;xQLHEraZHZn}x_mp3?#*z=L4+zf:&iaQr93');
define('LOGGED_IN_KEY',    '7>:-qjk}]9AX-t/|]N&_s|;P(Y0%%1IJq::uCz9Q>e=r3|Oom(}p3oo!{^L^rDXJ');
define('NONCE_KEY',        'I$IH!^~#Gc#MSaiD^ydaU;YsJ [(aX%5iOJ789V}X=.6+0dCx+%JH6<PJo^v<rbD');
define('AUTH_SALT',        'A@uwS|,WMt=xoE5|@-d3T-UL$%uf^aMoMA<|[D!U}jt`Za+,9J-3t]kL!^;|m7As');
define('SECURE_AUTH_SALT', '@T+IVJ5bqk~Rwxjr?5uosvQu&r:-nuv$oMTZ,56l4F{uBKYyvM-@%#MxyDz$?a7{');
define('LOGGED_IN_SALT',   '.Z[0:PIP<|V4ltP|DmM,H;9k+P$uu7cqss61Q.]*z|eK[.)K*}qTY<#k-t,a#hr}');
define('NONCE_SALT',       '9k~0||*r;_>$RpG)9qxE#$Woc-}/2=z0Sbw-mHo=`h{syFH_>KH.G]Yr|rj6mVeL');


$table_prefix = 'wp_';


define( 'WP_DEBUG', false );

?>