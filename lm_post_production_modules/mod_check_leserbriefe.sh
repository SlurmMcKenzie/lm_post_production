#!/bin/bash

newsfile=article.txt

var1=$(grep -e '@SW:Leserbriefe' ${newsfile})
var2=$(grep -e '@SW: Leserbriefe' ${newsfile})
var3=$(grep -e '@D:$' ${newsfile})
var4=$(grep -e '@D: $' ${newsfile})

if { [ "${var1}" ] || [ "${var2}" ] ;} && { [ "${var3}" ] || [ "${var4}" ] ;}; then
    sed -i 's/@D:/@D:Auf den Punkt gebracht/g' ${newsfile}
    sed -i 's/@T:/@T:Leserbriefe/g' ${newsfile}
fi
