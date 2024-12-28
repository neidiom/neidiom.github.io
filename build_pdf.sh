#!/usr/bin/env bash
input_file="_site/index.html"
output_file="resume.pdf"
css_file="_site/assets/main.css"



pandoc "${input_file}" -o "${output_file}" --pdf-engine=pdflatex --css "${css_file}"