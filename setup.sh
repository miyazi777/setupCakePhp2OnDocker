#!/bin/sh

docker-compose build
docker-compose up -d
git clone -b 2.x git://github.com/cakephp/cakephp.git
