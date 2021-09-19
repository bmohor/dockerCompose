FROM	alpine:3.13.5
RUN	apk update
RUN	apk add openrc mariadb mariadb-client bash vim
RUN	mkdir run/openrc
RUN	touch run/openrc/softlevel
COPY	./start_mdb.sh /
RUN	chmod a+x start_mdb.sh
CMD	["./start_mdb.sh"]
#ENTRYPOINT ["mysql"]
