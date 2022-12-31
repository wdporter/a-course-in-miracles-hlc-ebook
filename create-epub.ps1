#delete book if exsiting
if (test-path "A Course in Miracles — Text HLC.epub") { remove-item "A Course in Miracles — Text HLC.epub" -ea ig }

#delete dist folder
if (test-path dist ) { remove-item dist -recurse -force }

# build the project
npm run build

# reset the name of mimetype so that it will be first item in the archive
rename-item -path dist\mimetype -newname !mimetype

#create the archive
C:\"Program Files"\7-Zip\7z a -tzip "A Course in Miracles — Text HLC.epub" .\dist\*

# rename !mimetype  
C:\"Program Files"\7-Zip\7z rn "A Course in Miracles — Text HLC.epub" !mimetype mimetype



