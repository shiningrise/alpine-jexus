http://linuxdot.net/
https://github.com/shiningrise/monupw
how to run:
docker run --name=jexus --restart=always -v /data/www/jexus:/data -d -p 81:80 shiningrise/jexus:5.8.2

中国用户:
sudo docker run --name=alpine-jexus --restart=always -v /data/www/jexus:/data -d -p 8282:80 registry.cn-hangzhou.aliyuncs.com/shiningrise/alpine-jexus:5.8.2
