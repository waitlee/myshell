#!/bin/sh
# example: ./kill.sh {program name} ./kill.sh nginx
# 可根据需要通过grep多次筛选出符合要求的进程


if [ -z "$1" ];
then
    echo "please inuput program name"
fi

pname=`ps aux | grep $1 | awk '{print $2}'`
echo "program pid: $pname"
for name in $pname; do
    echo "kill $name"
    kill -9 $name
done
