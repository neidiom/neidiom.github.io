#!/usr/bin/env bash
input_file="_site/index.html"
output_file="resume.pdf"
css_file="_site/assets/main.css"



temp_input_file="${input_file}.no_emoji"
ruby -e 'File.open(ARGV[1], "w") { |out| File.foreach(ARGV[0]) { |line| out.puts line.encode("UTF-8", invalid: :replace, undef: :replace).gsub(/[^\x00-\x7F]/, "") } }' "${input_file}" "${temp_input_file}"
pandoc --from=html "${temp_input_file}" -o "${output_file}" --pdf-engine=xelatex --css "${css_file}" -H pdf_style.tex
rm "${temp_input_file}"
