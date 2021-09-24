SERVER=127.0.0.1 bmohor.42.fr
all:
	sed -i "1s/.*/${SERVER}/" /etc/hosts
	docker-compose -f srcs/docker-compose.yml up --build -d
info:
	echo && docker ps && echo && docker volume ls && echo
stop:
	docker-compose -f srcs/docker-compose.yml stop
resume:
	docker-compose -f srcs/docker-compose.yml  up -d
clean:
	docker-compose -f srcs/docker-compose.yml down
fclean: clean
	docker volume rm -f $$(docker volume ls -q)
	docker rmi -f $$(docker images -a -q)
re: fclean all

