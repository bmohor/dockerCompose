all:
	docker-compose build
	docker-compose up -d
stop:
	docker-compose stop
resume:
	docker-compose up -d
clean:
	docker-compose down
fclean: clean
	rm -rf /home/bmohor/data/wp/*
	rm -rf /home/bmohor/data/msq/*
	docker volume rm -f $$(docker volume ls -q)
	docker rmi -f $$(docker images -a -q)
re: fclean all

