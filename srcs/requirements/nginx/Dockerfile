FROM		alpine:3.13.5
EXPOSE		443
RUN		apk update \
		&& apk upgrade \
		&& apk add vim bash nginx openssl \
		&& mkdir /run/nginx/ \
		&& openssl req -x509 -nodes -days 365 -subj "/C=CA/ST=QC/O=Company, Inc./CN=bmohor.xxx" -addext "subjectAltName=DNS:bmohor.xxx" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt
COPY		./tools/default.conf /etc/nginx/conf.d/default.conf
ENTRYPOINT	["nginx"]
CMD		["-g", "daemon off;"]

