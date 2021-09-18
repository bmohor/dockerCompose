FROM	alpine:3.13.5
RUN		apk update
RUN		apk upgrade
RUN		apk add wget php7-fpm

RUN		mkdir -p /var/www/bmohorwp
WORKDIR		/var/www/bmohorwp/
RUN		wget http://wordpress.org/latest.tar.gz \
		&& tar -xzvf latest.tar.gz \
		&& rm latest.tar.gz
COPY		./srcs/wp-config.php /var/www/bmohorwp
