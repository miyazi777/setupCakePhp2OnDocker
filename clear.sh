#!/bin/sh

docker stop cakephp2_web_1
docker stop cakephp2_db_1
docker rm cakephp2_web_1
docker rm cakephp2_db_1
