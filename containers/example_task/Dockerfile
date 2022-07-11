FROM nestybox/ubuntu-focal-systemd-docker:latest
RUN curl -L "https://github.com/docker/compose/releases/download/1.24.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose
COPY docker-compose.yml docker-compose.yml
COPY docker-entrypoint.sh /.entrypoint.sh
RUN chmod +x /.entrypoint.sh
ENTRYPOINT [ "./.entrypoint.sh" ]