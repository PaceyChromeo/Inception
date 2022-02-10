all: up

up:
	@mkdir -p /home/pjacob/data/mariadb
	@mkdir -p /home/pjacob/data/wordpress
	@printf '\e[38;5;87m'
	docker-compose -f srcs/docker-compose.yml up
	@printf '127.0.0.1 pjacob.42.fr' >> /etc/hosts
	@sudo chmod -R 777 /home/pjacob/data/

down:
	docker-compose -f srcs/docker-compose.yml down

clean: down
	docker volume rm srcs_data-base srcs_src
	@sudo rm -rf /home/pjacob/data/

fclean: clean
	docker system prune -a -f
	
re: fclean all

.PHONY: clean fclean all re up down
