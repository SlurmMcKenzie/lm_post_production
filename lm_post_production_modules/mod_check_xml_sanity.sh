#!/bin/bash
# replace <C>-Tags in intro, tableheader and box header through "" 

echo "Repairing file for XML-Export"
echo "<C> -> <code>"

# TODO: Was ist, wenn es mehrere <C>-Tags gibt? Anpassen!

arg1=$(grep -e '@V:.*<C>' -e '@KT:.*<C>' -e '@TT:.*<C>' -e '@ZT:.*<C>' article.txt)
	if [ -z "${arg1}" ] ; then
		echo "Keine deplazierten Code-Tags gefunden."
	else
		sed -i \
		-e '/@V/s/<C>/\<code\>/' \
		-e '/@V/s/<C>/\<\/code\>/' \
		-e '/@TT/s/<C>/\<code\>/' \
		-e '/@TT/s/<C>/\<\/code\>/' \
		-e '/@KT/s/<C>/\<code\>/' \
		-e '/@KT/s/<C>/\<\/code\>/' \
		-e '/@ZT/s/<C>/\<code\>/' \
		-e '/@ZT/s/<C>/\<\/code\>/' article.txt
	fi
echo "Done."

echo "Sorting picture tags in News"
