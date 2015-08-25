#!/bin/bash
# replace <C>-Tags in intro, tableheader and box header through ""

echo "Repairing file for XML-Export"
echo "<C> -> <code>"

# TODO: Was ist, wenn es mehrere <C>-Tags gibt? Anpassen!
# TODO: In Kästen dürfen bei Programmnamen C-Tags stehen

arg1=$(grep -e '@V:.*<C>' -e '@TT:.*<C>' -e '@ZT:.*<C>' article.txt)
	if [ -z "${arg1}" ] ; then
		echo "Keine deplazierten Code-Tags gefunden."
	else
		sed -i \
		-e '/@V/s/<C>/\"/g' \
		-e '/@V/s/<C>/\"/g' \
		-e '/@TT/s/<C>/\"/g' \
		-e '/@TT/s/<C>/\"/g' \
		-e '/@ZT/s/<C>/\"/g' \
		-e '/@ZT/s/<C>/\"/g' article.txt
		echo -e "Repeat XML conversion."
		# Put XML conversion here
	fi
echo "Done."
