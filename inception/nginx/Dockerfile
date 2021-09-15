FROM	alpine:3.13.5
RUN	apk update
RUN	apk upgrade
RUN	apk add vim bash nginx openssl

COPY ./srcs/default.conf /etc/nginx/conf.d/default.conf

