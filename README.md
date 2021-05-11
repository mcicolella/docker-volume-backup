# docker-volume-backup

Easy backup and restore your [docker volume](https://docs.docker.com/engine/reference/commandline/volume).

**Attention**: You should not use the docker volume during backup or restore, otherwise your data might be damaged!


## Backup docker volume

Syntax:

    docker run -v [volume-name]:/volume -v [output-dir]:/backup --rm scorb/docker-volume-backup backup [archive-name]

For example:

    docker run -v my-docker-volume:/volume -v /tmp:/backup --rm scorb/docker-volume-backup backup archive-file

will backup volume named _my-docker-volume_ to archive file _/tmp/archive-file.tar.gz_


## Restore docker volume

**Attention**: Your target docker volume will be wiped before backup restore!

Syntax:

    docker run -v [volume-name]:/volume -v [input-dir]:/backup --rm scorb/docker-volume-backup restore [archive-name]

For example:

    docker run -v my-docker-volume:/volume -v /backup-data:/backup --rm scorb/docker-volume-backup restore archive-file

will clean and restore volume named _my-docker-volume_ from archive file _/backup-data/archive-file.tar.gz_

# Credits

Based on this repository https://bitbucket.org/scorb/de.scorban.demo.wordpress/src/master/docker-volume-backup/

## Blog post: [Auto-Backup fÃ¼r Docker Volumes](http://scorban.de/2018/02/06/auto-backup-fuer-docker-volumes)
