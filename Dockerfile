FROM vaporio/foundation:latest

LABEL maintainer <cloud-ops@vapor.io>

RUN apt-get update && \
    apt-get install -y tftp-hpa tftpd-hpa

EXPOSE 69/udp
VOLUME /var/lib/tftpboot
ENTRYPOINT ["/usr/sbin/in.tftpd", "-L", "--secure", "/var/lib/tftpboot"]
