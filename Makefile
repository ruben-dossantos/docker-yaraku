all:
	sudo docker pull dylanlindgren/docker-laravel-data 
	sudo docker pull dylanlindgren/docker-laravel-phpfpm 
	sudo docker pull dylanlindgren/docker-laravel-nginx 
	bower install
	sudo mkdir -p /tmp/yaraku/www /tmp/yaraku/logs
	sudo cp -R www /tmp/yaraku
	sudo chown -R www-data:www-data /tmp/yaraku
	sudo chmod 744 -R /tmp/yaraku
	sudo docker build -t ruben/docker-laravel-data .  
	sudo docker run -d --name yaraku -v /tmp/yaraku:/data:rw ruben/docker-laravel-data /usr/bin/hold.sh
	sudo docker run --privileged=true --name yaraku-php --volumes-from yaraku -d dylanlindgren/docker-laravel-phpfpm
	sudo docker run --privileged=true --name yaraku-web --volumes-from yaraku -p 10000:80 --link yaraku-php:fpm -d dylanlindgren/docker-laravel-nginx

clean:
	sudo rm -rf /tmp/yaraku
	sh kill_rm_docker.sh
