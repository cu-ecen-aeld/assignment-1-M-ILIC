#!/bin/bash
writefile=$1
writestr=$2
argsamount=2
if [ -z $writestr ]
then
    echo "Error: Too few arguments, (${#} given) ${argsamount} required"
    exit 1
else   
    writedirectories="$(dirname $writefile)"
    mkdir -p $writedirectories 
    touch $writefile
    echo $writestr > $writefile
    exit 0
fi