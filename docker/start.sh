#!/bin/sh

docker-compose up -d
docker exec -it laravel_app_sample chown -R apache:apache /var/www/html/laravel/storage /var/www/html/laravel/bootstrap/cache
docker exec -it laravel_app_sample php /var/www/html/laravel/artisan serve --host 0.0.0.0
