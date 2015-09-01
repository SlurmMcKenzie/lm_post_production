#!/bin/bash

newsfile=article.txt
tempfile=tempfile.txt

# Deletes every comment except that @#:ID:...
# '/Delete this/ {/Apart from that/! d}'

if [ -e tempfile.txt ]; then
    sed '/^@#.*$/ {/^@#:ID.*$/! d}' ${newsfile} > ${tempfile}
    rm ${newsfile}
    mv ${tempfile} ${newsfile}
else
    touch tempfile.txt
    tempfile=tempfile.txt
    sed '/^@#.*$/ {/^@#:ID.*$/! d}' ${newsfile} > ${tempfile}
    rm ${newsfile}
    mv ${tempfile} ${newsfile}
fi
