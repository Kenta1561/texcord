#!/bin/sh
file=$(basename -s .tex $1)
sha_short=$(echo $GITHUB_SHA | head -c 8)
repo_name=$(basename $GITHUB_REPOSITORY)
cd $(dirname $1)
# pdflatex $file.tex
latexmk -bibtex -pdf -shell-escape $file.tex

pdf_name="${repo_name}_${sha_short}.pdf"
mv $file.pdf $pdf_name
curl -s -X POST -F "content=$GITHUB_REPOSITORY: PDF file build from $1 for commit #$sha_short" -F "file=@$pdf_name" -o /dev/null $2

