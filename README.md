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

## Get in touch

[<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/github.svg' alt='github' height='40'>](https://github.com/mcicolella)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/linkedin.svg' alt='linkedin' height='40'>](https://www.linkedin.com/in/mauro-cicolella-0b107076//)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/facebook.svg' alt='facebook' height='40'>](https://www.facebook.com/EmmeCiLab-114063663344644)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/twitter.svg' alt='twitter' height='40'>](https://twitter.com/@emmecilab)  [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/icloud.svg' alt='website' height='40'>](https://www.emmecilab.net) [<img src='https://cdn.jsdelivr.net/npm/simple-icons@3.0.1/icons/youtube.svg' alt='website' height='40'>](https://www.youtube.com/c/emmecilab) 

