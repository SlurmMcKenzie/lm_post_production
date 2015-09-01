#!/bin/bash

newsfile=article.txt

var1=$(grep -e '@SW:Einf.hrung' ${newsfile})
var2=$(grep -e '@R:Software' ${newsfile})
var3=$(grep -e '@SW: Einf.hrung' ${newsfile})
var4=$(grep -e '@R: Software' ${newsfile})
var5=$(grep -c 'DVDgold' ${newsfile})

# remove second SW-Einf-Pic if there is one

if { [ ${var1} ] && [ ${var2} ] ;} || { [ ${var3} ] && [ ${var4} ] ;} && [ ${var5} == 2 ]; then
    sed -i '/@BI:images\/DVDgold_final\.png/d' ${newsfile}
fi
