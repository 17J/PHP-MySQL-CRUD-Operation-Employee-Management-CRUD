FROM php:7.4-apache-buster

RUN apt-get update && apt-get install -y \
    git \
    libzip-dev \
    zip \
    && docker-php-ext-install mysqli zip
# Copy the composer.json file to the container
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
WORKDIR /var/www/html
COPY composer.json composer.lock ./

# Install dependencies
RUN composer install
RUN composer require vlucas/phpdotenv
# Copy your application files
COPY . .

# Set the working directory

# Expose the container's port
EXPOSE 80

# Command to run when the container starts
