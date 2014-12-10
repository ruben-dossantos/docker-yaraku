# README #

You need to install docker, make and bower

## Docker ##

    sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 36A1D7869245C8950F966E92D8576A8BA88D21E9
    sudo sh -c "echo deb https://get.docker.com/ubuntu docker main > /etc/apt/sources.list.d/docker.list"
    sudo apt-get update
    sudo apt-get install lxc-docker

## Bower ##

    sudo apt-get install npm
    sudo npm install -g bower

I needed to symlink it with

    sudo ln -s /usr/bin/nodejs /usr/bin/node


# After install #

Just do *make* and it should work.