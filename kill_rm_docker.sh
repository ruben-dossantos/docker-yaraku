#!/bin/sh

ft=true
for CID in $(docker ps -a | awk '{print $1}')
do
    if [ $ft = false ]
	then
	    name=$(docker inspect --format '{{ .Config.Image }}' ${CID})
	    docker kill $CID && docker rm $CID
	else
	    ft=false
    fi
done
