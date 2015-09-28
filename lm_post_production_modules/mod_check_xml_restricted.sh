#!/bin/bash

edi=$(grep -e '<section>Editorial</section>' ${article})
buecher=$(grep -e '<subject>Bücher</subject>' ${article})
perlsnap=$(grep -e '<subject>Perl-Snapshot</subject>' ${article})
delugdvd=$(grep -e '<kicker>In eigener Sache: DELUG-DVD</kicker>' ${article})

if [ "${edi}" ] ; then
	sed -i 's/online access="free"/online access="restricted"/' ${article}
    echo "Prepared XML file in ${folder} for Upload."
fi

if [ "${buecher}" ] || [ "${perlsnap}" ] || [ "${delugdvd}" ]; then
    sed -i 's/online\ access="restricted"/online\ access="free"/' ${article}
    echo "Prepared XML file in ${folder} for Upload."
fi
