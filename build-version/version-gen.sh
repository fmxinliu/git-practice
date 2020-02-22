#!/usr/bin/bash
# format: GIT_TAG_INFO=master_v1.0.19-2-g841c059-dirty


GIT_TAG_INFO=`git describe --dirty`
GIT_TAG_PARTS=`echo $GIT_TAG_INFO| grep -o - | wc -l`

# split tag info
COMMIT_NUM_LAST=`echo $GIT_TAG_INFO | cut -d'-' -f 1 | cut -d'.' -f 3`
COMMIT_COUNT_NEW=`echo $GIT_TAG_INFO | cut -d'-' -f 2`
COMMIT_TIME_NEW=`git log --pretty='format:%cd' --date=format:'%Y-%m-%d %H:%M:%S' -n 1`

# calculate minor version number
HAS_UNCOMMITTED=`echo $GIT_TAG_INFO | grep "dirty$"`
if [ -n "$HAS_UNCOMMITTED" ]; then
    COMMIT_TIME_NEW="MIXED_TIME"
    COMMIT_NUM_NEW="MIXED_VERSION"
elif [ $GIT_TAG_PARTS \> 0 ]; then
    COMMIT_NUM_NEW=$[ $COMMIT_NUM_LAST + $COMMIT_COUNT_NEW ]
else
    #COMMIT_COUNT_NEW=0
    COMMIT_NUM_NEW=$COMMIT_NUM_LAST
fi

echo "==="
echo "Ver: $COMMIT_NUM_NEW"
echo "Time: $COMMIT_TIME_NEW"
echo "==="

sleep 1s