#!/usr/bin/env bash
echo "Running composer"

composer update --working-dir=/var/www/html
composer global require hirak/prestissimo

echo "Caching config..."
php artisan config:cache

echo "Caching routes..."
php artisan route:cache

echo "Running migrations..."
php artisan migrate

echo "storage linking"
php artisan storage:link

echo "create new admin"
php artisan make:admin




