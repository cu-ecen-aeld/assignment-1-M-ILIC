#!/bin/bash
filesdir=$1
searchstr=$2
argsamount=2
if [ -z $searchstr ]
then 
    echo "Error: Too few arguments, (${#} given) ${argsamount} required"
    exit 1
elif ! [ -d $filesdir ]
then
    echo "Error: Given directory path does not represent a directory on the filesystem"
    exit 1
else   
    numberfiles="$(find -L $filesdir -type f | wc -l)"
    numberlines="$(grep -r -a $searchstr $filesdir | wc -l)"
    echo "The number of files are ${numberfiles} and the number of matching lines are ${numberlines}"
    exit 0
fi