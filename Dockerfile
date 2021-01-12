FROM php:7.4.14-zts-alpine3.12
EXPOSE 3000
COPY ./ /var/www/adyen
RUN sed -i 's/localhost/0.0.0.0/' /var/www/adyen/server/php/start.sh
WORKDIR /var/www/adyen/
ENTRYPOINT ./start.sh
