FROM debian:buster

RUN apt-get update && apt-get upgrade
RUN apt-get install -y vim
RUN apt-get install -y nginx
RUN apt-get install -y openssl
RUN openssl req -x509 \
                -nodes \
                -days 365 \ 
                -newkey rsa:2048 \
                -keyout /etc/ssl/private/nginx.key \
                -out /etc/ssl/certs/nginx.crt \
                -subj "/C=FR/ST=Nice/L=Nice/O=42nice/OU=pjacob/CN=pjacob.42.fr"
EXPOSE 443

COPY ./script.sh ./
COPY ./default /etc/nginx/sites-available/default

CMD ["bash", "script.sh"]
