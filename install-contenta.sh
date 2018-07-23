#!/usr/bin/env bash

echo "=== Installing Contenta - Composer part..."
sudo chown vagrant:www-data /var/www/html/
composer create-project contentacms/contenta-jsonapi-project /var/www/html --stability dev --no-interaction

# echo "=== Installing Contenta - Drush part..."
# cd /var/www/html/web
# drush site-install contenta_jsonapi --db-url=mysql://root:root@localhost/contenta -y

echo "=== Setting new DocumentRoot excluding /web..."
sudo sed -i 's|DocumentRoot \/var\/www\/html|DocumentRoot \/var\/www\/html\/web|g' /etc/apache2/sites-enabled/000-default.conf
sudo /etc/init.d/apache2 restart

# cd /var/www/html/web/sites
# sudo chmod 777 default/settings.php
# echo "\$settings['trusted_host_patterns'] = ['^192\.168\.\d{1,3}\.\d{1,3}$',];" >> default/settings.php
# sudo chmod 755 default/settings.php
# sudo chmod 755 default/services.yml
# sudo chmod 755 default/

exit 0
