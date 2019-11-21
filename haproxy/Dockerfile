
FROM haproxy:1.7

RUN apt-get update && \
    apt-get install -y --no-install-suggests --no-install-recommends curl  \
    openssl \
    netcat-traditional \
    sudo \
    sysstat \
    net-tools \
    supervisor && \
    apt-get clean && \
    rm -rvf /var/lib/apt/lists/* && \
    rm -vf /etc/ssh/ssh_host_*


RUN apt-get update
RUN apt-get install iputils-ping curl -y

COPY ./generate-certificate.sh /generate-certificate.sh
RUN chmod +x /generate-certificate.sh
RUN ./generate-certificate.sh

COPY haproxy.cfg /usr/local/etc/haproxy/haproxy.cfg

