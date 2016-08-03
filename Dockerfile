FROM alpine:3.4
MAINTAINER shiningrise shiningrise@gmail.com

#http://linuxdot.net/down/jexus-5.8.2-x64.tar.gz
RUN cd /tmp && wget linuxdot.net/down/jexus-5.8.2-x64.tar.gz && tar -zxvf jexus-5.8.2-x64.tar.gz && mv jexus /usr  && cd /tmp && rm -rf jexus*

RUN mkdir /data
RUN  sed -i "s/root=\/ \/var\/www\/default/root=\/ \/data/g" /usr/jexus/siteconf/default
#RUN sed -i  's/jws_status_val=`ps -p $pid | grep $pid | wc -l`/jws_status_val=`ps -ef| grep jws.exe| wc -l`/g' /usr/jexus/jws
#VOLUME ["/data"]
EXPOSE 80 443
CMD  /usr/jexus/jwss >/tmp/err.txt 2>&1 &
#& /usr/jexus/jws start