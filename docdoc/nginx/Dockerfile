FROM	alpine:3.13.5
EXPOSE	443
RUN		apk update
RUN		apk upgrade
RUN		apk add vim bash nginx openssl
RUN		mkdir /run/nginx/
RUN		openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=bmohor.com" -addext "subjectAltName=DNS:bmohor.com" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
COPY	./srcs/default.conf /etc/nginx/conf.d/default.conf
RUN		mkdir /var/www/html
COPY	./srcs/indexmy.html /var/www/html/
