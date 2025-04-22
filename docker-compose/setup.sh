#!/bin/sh

docker-compose exec -T app composer install --no-interaction --prefer-dist --optimize-autoloader

docker-compose exec -T app php artisan storage:link || true
echo "yes" | docker-compose exec -T app php artisan key:generate