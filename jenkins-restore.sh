#!/bin/bash -xe

function usage(){
  echo "usage: $(basename $0) <backup_package.tar.gz> <target_path>\
 [-n|--nextbuildnumber]\
 [-p|--needplugin]\
 [-h|--help]"
}

readonly BACKUP_PACKAGE=$1
readonly TARGET_PATH=$2

if [ -z "$BACKUP_PACKAGE" -o -z "$TARGET_PATH" ] ; then
  usage >&2
  exit 1
fi

tar xzvf $BACKUP_PACKAGE -C /tmp
sudo cp -R /tmp/jenkins-backup/* $TARGET_PATH/
sudo chown jenkins:jenkins -R $TARGET_PATH/