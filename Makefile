 #--network docker-network --hostname mariadb  -v  "/home/ebennamr/data/mariadb":"/var/lib/mysql"
 # -v  /home/ebennamr/data/mariadb:/var/lib/mysql

run:

	docker run -itd --network docker-network --hostname mariadb  -p 3306:3306 -v  /home/ebennamr/data/mariadb:/var/lib/mysql   --name mariadb  mariadb:me
	docker run -itd  -v  "/home/ebennamr/data/wordpress":"/var/www/html/" --network docker-network   --hostname wordpress --name wordpress wordpress:me  
	docker run -itd  -p 443:443  -v  "/home/ebennamr/data/wordpress":"/var/www/html/" --network docker-network   --hostname nginx  --name nginx   nginx:me   


stop:
	docker stop nginx wordpress mariadb 

build:
	docker build ./srcs/requirements/nginx -t nginx:me 
	docker build ./srcs/requirements/mariadb  -t mariadb:me  
	docker build ./srcs/requirements/wordpress  -t wordpress:me  