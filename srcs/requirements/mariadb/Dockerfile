FROM	alpine:3.13.5
RUN	apk update
RUN	apk upgrade
RUN	apk add openrc mariadb mariadb-client bash vim
RUN	mkdir run/openrc
#RUN	touch run/openrc/softlevel
ARG	WP_BASE
ARG	R_PASS
ARG	PASS
ARG	USER

RUN	mkdir /run/mysqld

COPY	./tools/my.cnf /etc/my.cnf
COPY	./tools/start_mdb.sh /
RUN	chmod a+x start_mdb.sh

RUN	mariadb-install-db -u root
RUN	/start_mdb.sh

ENTRYPOINT ["mysqld"]
CMD	["-u root -pidk"]
