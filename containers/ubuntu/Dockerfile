FROM nestybox/ubuntu-focal-systemd-docker:latest

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

RUN mkdir /root/.ssh

RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY docker-entrypoint.sh /.entrypoint.sh
RUN chmod +x /.entrypoint.sh
ENTRYPOINT [ "/.entrypoint.sh" ]
CMD /usr/sbin/sshd -D