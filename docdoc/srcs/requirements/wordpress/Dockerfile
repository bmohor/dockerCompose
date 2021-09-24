FROM	alpine:3.13.5
RUN	apk update
RUN	apk upgrade
RUN	apk add wget vim bash php7 php7-fpm php7-mysqli php7-json

ARG	U
ARG	P
ARG	W
ARG	B

RUN	mkdir -p /var/www/bmohorstuff
WORKDIR	/var/www/bmohorstuff/
RUN	wget http://wordpress.org/latest.tar.gz \
	&& tar -xzvf latest.tar.gz \
	&& rm latest.tar.gz
RUN	sed -i "s/listen = 127.0.0.1:9000/listen = 9000/g" ~/../etc/php7/php-fpm.d/www.conf
COPY	./srcs/wp-config.php .
RUN	sed -i "s/_BASE/${W}/g" wp-config.php
RUN	sed -i "s/_MSQ_USER/${U}/g" wp-config.php
RUN	sed -i "s/_WP_PASS/${P}/g" wp-config.php
RUN	sed -i "s/_MSQ_HOST/${B}/g" wp-config.php
WORKDIR /
ENTRYPOINT	["/usr/sbin/php-fpm7"]
CMD			["-F"]
