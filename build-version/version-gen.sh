#!/usr/bin/bash
# git describe format: master_v1.0.19-2-g841c059-dirty
tag_count=`git tag | wc -l`
if [ $tag_count = 0 ]; then
    echo "please execute 'git tag -a <id>' to specify a git initial commit_id first"
    exit -1
fi

tag_describe=`git describe --dirty`
tag_sections=`echo $tag_describe | grep -o '-' | wc -l`
ver_last_commit_id=`echo $tag_describe | cut -d '-' -f 1 | cut -d '.' -f 3`
repo_is_dirty=`echo $tag_describe | grep "dirty$"`
commit_time=`git log --pretty=format:'%ci' -n 1 | cut -c 1-19 | sed 's/-/\//g'`

if [ -n "$repo_is_dirty" ]; then
    commit_time="MIXED_TIME"
    commit_id="MIXED_VERSION"
elif [ $tag_sections \> 0 ]; then
    ver_change_commit_count=`echo $tag_describe | cut -d '-' -f 2`
    commit_id=$(($ver_last_commit_id + $ver_change_commit_count))
else
    #ver_change_commit_count=0
    commit_id=$ver_last_commit_id
fi

echo "==="
echo "Ver: $commit_id"
echo "Time: $commit_time"
echo "==="

sleep 1s