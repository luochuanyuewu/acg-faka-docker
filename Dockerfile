# 基于官方 PHP 8.1 镜像构建
FROM php:8.1-apache

RUN apt-get update && apt-get install -y \
    libfreetype-dev \
    libjpeg62-turbo-dev \
    libpng-dev \
    libzip-dev \
    libssl-dev \
    openssl \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install -j$(nproc) gd pdo pdo_mysql zip sockets

# 复制应用代码到容器内部
# COPY acg-faka /var/www/html

# 设置 Apache 配置
RUN a2enmod rewrite
RUN chown -R www-data:www-data /var/www/html
