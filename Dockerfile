FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    git \
    libzip-dev \
    zip \
    && docker-php-ext-install mysqli zip
# Copy the composer.json file to the container
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer
COPY composer.json composer.lock ./

# Install dependencies
RUN composer install

# Copy your application files
COPY . .

# Set the working directory
WORKDIR /var/www/html

# Copy the .env file
COPY .env .

# Expose the container's port
EXPOSE 80

# Command to run when the container starts
CMD ["php-fpm"]
