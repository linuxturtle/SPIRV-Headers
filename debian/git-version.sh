#!/bin/sh

UPSTREAM_REMOTE=khronos
UPSTREAM_BRANCH=master

COMMON_ANCESTOR=`git merge-base master $UPSTREAM_REMOTE/$UPSTREAM_BRANCH`

NB_OF_COMMITS=`git log --oneline $COMMON_ANCESTOR | wc -l`
echo "1.2.$NB_OF_COMMITS"
