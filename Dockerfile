FROM kwedertz/base-prod

ENV AWS_REGION=us-west-2

#get current code
COPY --chown=www-data:www-data . /var/www/html

#run composer install
WORKDIR /var/www/html
RUN composer install

