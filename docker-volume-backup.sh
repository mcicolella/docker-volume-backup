#!/bin/sh

usage() {
  echo "Usage: docker-volume-backup <backup|restore> <archive>"
  echo ""
  echo "Example (backup): docker-volume-backup backup archive"
  echo "  => this will tar and gzip all files in /volume to /backup/archive.tar.gz"
  echo ""
  echo "Example (restore): docker-volume-backup restore archive"
  echo "  => this will extract all files from /backup/archive.tar.gz" to /volume
  echo ""
  exit
}

backup() {
  mkdir -p `dirname /backup/$ARCHIVE`
  tar -czf /backup/$ARCHIVE -C /volume ./
}

restore() {
  if ! [ -e /backup/$ARCHIVE ]; then
    echo "Can't find backup file $ARCHIVE"
    exit 1
  fi

  rm -rf /volume/* /volume/..?* /volume/.[!.]*
  tar -C /volume/ -xzf /backup/$ARCHIVE
}

sleep 1

if [ $# -ne 2 ]; then
  usage
fi

OPERATION=$1

ARCHIVE=${2%%.tar.gz}.tar.gz

case "$OPERATION" in
"backup" )
  backup
  ;;
"restore" )
  restore
  ;;
* )
  usage
  ;;
esac
