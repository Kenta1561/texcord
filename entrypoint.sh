#!/bin/sh
file=$(basename -s .tex $1)
sha_short=$(echo $GITHUB_SHA | head -c 8)
cd $(dirname $1)
pdflatex $file.tex
curl -s -X POST -F "content=$GITHUB_REPOSITORY: PDF file build from $1 for commit #$SHA_SHORT" -F "file=@$file.pdf" -o /dev/null $2

