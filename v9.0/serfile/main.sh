#!/bin/bash

funciton(){
if [ -f $1 ];then
    `openssl md5 -out md5.txt $1`
    res=`awk -F "=" '{print $2}' md5.txt`
else
    return 0;
fi

if [ -f /home/zy/Desktop/MyCode/clifile/$1 ];then
    `openssl md5 -out md5.txt /home/zy/Desktop/MyCode/clifile/$1`
    cres=`awk -F "=" '{print $2}' md5.txt`
else
    return  0;
fi


#echo $res
#echo $cres

if [ "$res" = "$cres"  ]; then
    return 1;
else
    return 0;
fi
}

funciton $1
echo $?
