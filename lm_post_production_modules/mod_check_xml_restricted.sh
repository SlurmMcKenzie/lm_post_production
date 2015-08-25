#!/bin/bash

newsfile=article.xml

arg1=$(grep -e '@SW:Zahlen & Trends' article.txt)
arg2=$(grep -e '@SW: Zahlen & Trends' article.txt)

if [ -z "${arg1}" ] || [ -z "${arg2}" ] ; then
	exit 0
else
	countr=$(grep -c '^@BC:' ${newsfile})
	echo -e "Found Zahlen & Trends file, rearrange picture order if needed."
    for i in $(seq 1 ${countr}); do
        # look for first matches, if several matches, only show last one
        text=$(grep -o '@BC:.*$' -m ${i} ${newsfile} | tail -n 1)
        # look for first matches with line numbers, if several, cut and only show last line number
        line=$(grep -n '@BC:' -m ${i} ${newsfile} | cut -d ":" -f 1 | tail -n 1)
        # show number of line before
        line_before=$(($line-1))
        # remember content of line before
        text_before=$(grep -B 1 '@BC:.*$' -m ${i} ${newsfile} | tail -n 2 | grep -o '@B:.*$')
        if [ -z "${text_before}" ]; then
            continue
        else
            # now replace lines that start with @BC: with those that start with @B:
            sed -i ''"${line_before}"'c'"${text}"'' ${newsfile}
            sed -i ''"${line}"'c'"${text_before}"'' ${newsfile}
        fi
    done
	echo -e "Convert Zahlen & Trends article once again."
	# Put XML conversion here
	# sf -H article.txt article.html >> ../error.log 2>&1 &&
fi
