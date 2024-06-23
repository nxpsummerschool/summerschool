echo Install pandoc and princexml, make sure both or on bath
echo cwd for the script is it's current folder
echo run from powershell

pandoc.exe --pdf-engine prince -o day1.pdf -c pandoc.css .\day1.md
pandoc.exe --pdf-engine prince -o day2.pdf -c pandoc.css .\day2.md
pandoc.exe --pdf-engine prince -o day3.pdf -c pandoc.css .\day3.md
pandoc.exe --pdf-engine prince -o day4.pdf -c pandoc.css .\day4.md
pandoc.exe --pdf-engine prince -o summer_school_guide.pdf -c pandoc.css .\summer_school_guide.md