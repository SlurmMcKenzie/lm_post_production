#!/bin/bash

newsfile=article.txt

var1=$(grep -e '@SW:B.cher' ${newsfile})
var2=$(grep -e '@SW: B.cher' ${newsfile})
var3=$(grep -c '^@IT:.*Info' ${newsfile})

if { [ "${var1}" ] || [ "${var2}" ] ;} && [ "${var3}" == 2 ]; then
	echo -e "Found Boxes in Bücher article, rearrange numbers for XML conversion."
    sed -i '0,/IT\:.*fo$/s//KT:Info 1/; /IT\:.*fo$/s//KT:Info 2/' ${newsfile}
    sed -i 's/@IL:/@KL:/g' ${newsfile}
fi
