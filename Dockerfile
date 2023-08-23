# Set master image
FROM php:8.2-fpm-alpine
RUN docker-php-ext-install mysqli && \
    docker-php-ext-install pdo_mysql

# Set working directory
WORKDIR /var/www/html

# Install PHP Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy existing application directory
COPY . .
