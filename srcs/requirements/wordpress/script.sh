
echo "listen=wordpress:9000" >> /etc/php/7.3/fpm/pool.d/www.conf
echo "clear_env = no" >> /etc/php/7.3/fpm/pool.d/www.conf
mv wordpress /var/www/html/
mv wp-config.php /var/www/html/wordpress/
service php7.3-fpm start
service php7.3-fpm stop
php-fpm7.3 -F
