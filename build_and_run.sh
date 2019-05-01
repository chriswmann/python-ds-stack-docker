#!/bin/bash

name=$1
if [ ! -d "$code" ]; then
    mkdir code
fi
if [ ! -d "$data" ]; then
    mkdir data
fi

docker build -t $name .
docker run -p 8443:8443 -p 8888:8888 -v data:/data -v code:/code --rm -it ${name}
