all:	
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
	rm -rf /home/bmohor/data/wp/*
	rm -rf /home/bmohor/data/msq/*
	docker volume rm -f $$(docker volume ls -q)
	docker rmi -f $$(docker images -a -q)
re: fclean all

