FROM kwedertz/base-prod

ENV AWS_REGION=us-west-2

#get current code
COPY --chown=www-data:www-data . /var/www

#run composer install
WORKDIR /var/www
RUN composer install

