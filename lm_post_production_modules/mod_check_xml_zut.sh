#!/bin/bash

newsfile=article.txt

arg1=$(grep -e '@SW:Zahlen & Trends' article.txt)
arg2=$(grep -e '@SW: Zahlen & Trends' article.txt)

if [ "${arg1}" ] || [ "${arg2}" ] ; then
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
        if [ "${text_before}" ]; then
            # now replace lines that start with @BC: with those that start with @B:
            sed -i ''"${line_before}"'c'"${text}"'' ${newsfile}
            sed -i ''"${line}"'c'"${text_before}"'' ${newsfile}
        else
            continue
        fi
    done
fi
