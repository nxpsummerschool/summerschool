echo Install pandoc and wkhtmltopdf, make sure both or on bath
echo cwd for the script is it's current folder
echo run from powershell

@echo off
for %%x in (
        day1
        day2
        day3
        day4_ciphers
        day4_ciphermodes
        summer_school_guide
       ) do (
         echo Processing %%x
		pandoc.exe --pdf-engine wkhtmltopdf -o %%x.pdf -c pandoc.css %%x.md
       )
