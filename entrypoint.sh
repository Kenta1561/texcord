#!/bin/sh
file=$(basename -s .tex $1)
cd $(dirname $1)
pdflatex $file.tex
curl -s -X POST -F "content=File from GitHub Actions" -F "file=@$file.pdf" -o /dev/null $2

