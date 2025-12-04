#bin!/bin/bash

dir=~
[ "$1" != ""] && dir="$1"

cd $dir/ros2_ws
calcon build
sourse $dir/.bashrc
timeout 10 ros2 launch mypkg talk_listen.py >  /tmp/mypkg.log

cat /tnp/mypkg.log |
grep 'Listen: 10'
