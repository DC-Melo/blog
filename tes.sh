#!/bin/bash
    begin_second=`date -jf %Y%m%d 19851018 +%s`
    now_second=`date -v+1d  +%s`
    week_day=`date -v+1d +%V%a%y`
    date_day=`date  -v+1d +%Y%m%d`
    live_day=$((($now_second-$begin_second)/86400))
    remaining_day=$((12578*2-$live_day))
    blogname=$remaining_day-$week_day-$date_day
    blogfile=$dbg/$blogname
    echo begins:$begin_second nows:$now_second live_day:$live_day remaining:$remaining_day
    echo $blogfile
    # touch $blogfile
    # today
    begin_second=`date -jf %Y%m%d 19851018 +%s`
    now_second=`date +%s`
    week_day=`date +%V%a%y`
    date_day=`date +%Y%m%d`
    live_day=$((($now_second-$begin_second)/86400))
    remaining_day=$((12578*2-$live_day))
    export blogname=$remaining_day-$week_day-$date_day
    export blogfile=$dbg/$blogname
    echo begins:$begin_second nows:$now_second live_day:$live_day remaining:$remaining_day
    echo $blogfile
    # touch $blogfile

