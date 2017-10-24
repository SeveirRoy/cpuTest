FROM ubuntu:latest

MAINTAINER SeveirRoy

RUN apt-get update && \
    apt-get install sysbench -y --no-install-recommends
    
CMD /usr/bin/sysbench --test=cpu --cpu-max-prime=10000 run
