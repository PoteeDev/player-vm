FROM nestybox/ubuntu-focal-systemd-docker:latest
COPY docker-entrypoint.sh /.entrypoint.sh
RUN chmod +x /.entrypoint.sh
ENTRYPOINT [ "./.entrypoint.sh" ]