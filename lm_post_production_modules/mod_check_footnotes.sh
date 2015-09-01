#!/bin/bash

newsfile=article.txt

arg1=$(grep -e '<U>[0-9]*<U>' ${newsfile})
echo ${arg1}

#if [ "${arg1}" ] ; then
#    sed -i 
#fi
