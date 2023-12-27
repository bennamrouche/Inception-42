
run:


	docker run -itd  -v  "/home/ebennamr/data/mariadb":"/var/lib/mysql" --network docker-network --hostname mariadb --name mariadb  mariadb:me
	docker run -itd  -v  "/home/ebennamr/data/wordpress":"/var/www/html/" --network docker-network   --hostname wordpress --name wordpress wordpress:me  
	docker run -itd  -p 443:443  -v  "/home/ebennamr/data/wordpress":"/var/www/html/" --network docker-network   --hostname nginx  --name nginx   nginx:me   


stop:
	docker stop nginx wordpress mariadb 

build:
	docker build ./srcs/requirements/nginx -t nginx:me 
	docker build ./srcs/requirements/mariadb  -t mariadb:me  
	docker build ./srcs/requirements/wordpress  -t wordpress:me  