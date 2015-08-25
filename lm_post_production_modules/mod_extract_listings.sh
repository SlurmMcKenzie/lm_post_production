availa=$(grep "@KT:Listing 1" article.txt)
availb=$(grep "@KT: Listing 1" article.txt)

# generate listings, discard stdout and stderr

if [ "$availa" ] || [ "$availb" ]; then
    echo -e "Found listings in" ${folder}", converting now, stay tuned..."
    if [ -d listings ]; then
        rm -fR listings
        echo "Removed existing 'listings'-folder and build new one."
    fi

    mkdir listings >/dev/null 2>&1
    chmod a+rw listings

    sf -nL listings article.txt > /dev/null 2>&1 &&

    cd listings
    for i in * ; do
        sed -i 's/\(.\{2\}\)//' ${i}
        j=`ls ${i} | cut -c 13-`
        mv ${i} listing${j}
        sleep 2
    # TODO: Remove Inline-Text-Listings, keep only Listing Boxes
    done
    rm listing_* > /dev/null 2>&1
    cd ..
else
    echo -e "No listings in" ${folder}"."
fi
