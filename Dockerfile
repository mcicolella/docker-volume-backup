FROM alpine
COPY docker-volume-backup.sh /
ENTRYPOINT [ "/bin/sh", "/docker-volume-backup.sh" ]
