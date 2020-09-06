#!/bin/bash

# Create a git archive of repository including non-committed local diffs.
# Fredrik Hederstierna 2017

TARGET_ARCHIVE_NAME=gdb-9.3-master

# this should point into the git repo root
GIT_MASTER_SRC_PATH=/home/fredrik/gdb_master/binutils-gdb
# this is where tar-ed results archive are stored
GIT_ARCHIVE_DEST_PATH=/home/fredrik/gdb_master/my_copy

# goto master git
cd $GIT_MASTER_SRC_PATH

# command to create temporary stash commit
uploadStash=`git stash create`

# create git archive from master, including local modifitions
echo "Create temporary git stash and making archive inluding local diff..."
git archive --format=tar --prefix=$TARGET_ARCHIVE_NAME/ -o $GIT_ARCHIVE_DEST_PATH/$TARGET_ARCHIVE_NAME.tar ${uploadStash:-HEAD}

# compressing archive
echo "Compressing archive..."
#bzip2 -f $GIT_ARCHIVE_DEST_PATH/$TARGET_ARCHIVE_NAME.tar
xz -9 $GIT_ARCHIVE_DEST_PATH/$TARGET_ARCHIVE_NAME.tar

# garbage collect temporary stash commit
echo "Garbage collect temporary git stash..."
git gc --prune=now

# pop dir
echo "All done, exit."
cd -
