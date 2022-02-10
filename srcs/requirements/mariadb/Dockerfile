FROM debian:buster

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y mariadb-server

COPY ./script.sh ./
COPY ./50-server.cnf /etc/mysql/mariadb.conf.d/
COPY ./wordpress.sql ./

CMD ["bash", "script.sh"]
