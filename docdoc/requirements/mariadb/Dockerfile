FROM	alpine:3.13.5
RUN	apk update
RUN	apk add openrc mariadb mariadb-client bash vim
RUN	mkdir run/openrc
#RUN	touch run/openrc/softlevel
ARG	WP_BASE
ARG	R_PASS
ARG	PASS
ARG	USER

COPY	./srcs/my.cnf /etc/my.cnf
COPY	./srcs/start_mdb.sh /
COPY	./srcs/wordpress.sql /
RUN	chmod a+x start_mdb.sh
RUN	mariadb-install-db -u root
RUN	/start_mdb.sh

ENTRYPOINT ["mysqld"]
CMD	["-u root"]
