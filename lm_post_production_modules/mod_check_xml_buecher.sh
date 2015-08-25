#!/bin/bash

newsfile=article.txt

arg1=$(grep -e '@SW:B.cher' article.txt)
arg2=$(grep -e '@SW: B.cher' article.txt)

if [ "${arg1}" ] || [ "${arg2}" ] ; then
	countr=$(grep -c '^@IT:.*Info' ${newsfile})
	echo $countr
	echo -e "Found Boxes in Bücher article, rearrange numbers for XML conversion."
    sed -i '0,/IT\:.*fo\b/s//IT:Info 1/; /IT\:.*fo$/s//IT:Info 2/' ${newsfile}
fi
