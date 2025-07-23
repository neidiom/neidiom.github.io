#!/usr/bin/env bash
input_file="_site/index.html"
output_file="resume.pdf"
css_file="_site/assets/main.css"



pandoc "${input_file}" -o "${output_file}" --pdf-engine=xelatex --css "${css_file}" -H pdf_style.tex
