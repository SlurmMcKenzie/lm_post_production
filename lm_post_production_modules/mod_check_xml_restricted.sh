#!/bin/bash

newsfile=article.xml

var1=$(grep -e '<section>Editorial</section>' ${newsfile})
var2=$(grep -e '<subject>Bücher</subject>' ${newsfile})
var3=$(grep -e '<subject>Perl-Snapshot</subject>' ${newsfile})
var4=$(grep -e '<kicker>In eigener Sache: DELUG-DVD</kicker>' ${newsfile})

if [ "${var1}" ] ; then
	sed -i 's/online access="free"/online access="restricted"/' ${newsfile}
    echo "Prepared XML file in ${folder} for Upload."
fi

if [ "${var2}" ] || [ "${var3}" ] || [ "${var4}" ]; then
    sed -i 's/online\ access="restricted"/online\ access="free"/' ${newsfile}
    echo "Prepared XML file in ${folder} for Upload."
fi
