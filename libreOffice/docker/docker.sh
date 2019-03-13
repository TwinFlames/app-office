docker run -dt -p 127.0.0.1:9980:9980 -e "domain=192\.168\.122\.96" -e "username=admin" -e "password=test" --restart always --cap-add MKNOD thedarkknight/libreoffice-online-unlimited

# https://hub.docker.com/r/libreoffice/online
docker pull libreoffice/online:master

docker run --name lool -dt -p 127.0.0.1:80:80 -e "DONT_GEN_SSL_CERT 1" -e "domain=192\.168\.122\.96" -e "username=admin" -e "password=test" libreoffice/online:master

docker rm lool

docker run --name lool -dt -p 127.0.0.1:80:80 -e "DONT_GEN_SSL_CERT 1" -e "domain=192.168.122.96" -e "username=admin" -e "password=test" libreoffice/online:master

docker logs lool

docker stop lool
