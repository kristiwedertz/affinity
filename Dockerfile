FROM kwedertz/base-prod

ENV AWS_REGION=us-west-2

# get current app code
COPY --chown=www-data:www-data . /var/www/

# run composer install
WORKDIR /var/www/
RUN composer self-update \
    && composer install --no-interaction

CMD [ "apache2", "-D", "FOREGROUND" ]


