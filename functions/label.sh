#!/bin/sh

label_hood () {
    i=0
    TOP=""
    while [ $i -lt $1 ]
    do
        TOP="${TOP}-"
        i=`expr $i + 1`
    done

    success $TOP
}

title () {
    VALUE=$1
    n=`expr ${#VALUE} + 20`
    
    label_hood $n
    success "|         $1         |"
    label_hood $n
}
