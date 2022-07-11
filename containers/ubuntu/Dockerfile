FROM nestybox/ubuntu-bionic-docker:latest
COPY docker-entrypoint.sh /.entrypoint.sh
RUN chmod +x /.entrypoint.sh
ENTRYPOINT [ "./.entrypoint.sh" ]