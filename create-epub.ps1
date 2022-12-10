#delete book if exsiting
if (test-path acim-hlc.epub) { remove-item acim-hlc.epub -ea ig }

#delete dist folder
if (test-path dist ) { remove-item dist -recurse -force }

# build the project
pnpm run build

# reset the name of mimetype so that it will be first item in the archive
rename-item -path dist\mimetype -newname !mimetype

#create the archive
C:\"Program Files"\7-Zip\7z a -tzip acim-hlc.epub .\dist\*

# rename !mimetype  
C:\"Program Files"\7-Zip\7z rn acim-hlc.epub !mimetype mimetype



