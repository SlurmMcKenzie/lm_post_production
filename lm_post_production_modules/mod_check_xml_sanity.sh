#!/bin/bash
# replace <C>-Tags in intro, tableheader and box header through ""

echo "Repairing file for XML-Export"

# TODO: Was ist, wenn es mehrere <C>-Tags gibt? Anpassen!

arg1=$(grep -e '@V:.*<C>' -e '@KT:.*<C>' -e '@TT:.*<C>' -e '@ZT:.*<C>' article.txt)
	if [ -z "${arg1}" ] ; then
		echo "Nothing to repair."
	else
		sed -i \
		-e '/@V/s/<C>/"/' \
		-e '/@V/s/<C>/"/' \
		-e '/@TT/s/<C>/"/' \
		-e '/@TT/s/<C>/"/' \
		-e '/@KT/s/<C>/"' \
		-e '/@KT/s/<C>/"/' \
		-e '/@ZT/s/<C>/"/' \
		-e '/@ZT/s/<C>/"/' article.txt
		echo "Replace <C>-Tags through quotation marks."
	fi
echo "Done."
