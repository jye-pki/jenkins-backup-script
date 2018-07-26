#!/bin/bash -xe

readonly BACKUP_PACKAGE=$1
readonly TARGET_PATH=$2

tar xzvf $BACKUP_PACKAGE -C /tmp
sudo cp -R /tmp/jenkins-backup/* $TARGET_PATH/
sudo chown jenkins:jenkins -R $TARGET_PATH/
