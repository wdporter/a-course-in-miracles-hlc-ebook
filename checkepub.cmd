del acim.epub
move /y dist\mimetype dist\!mimetype
e:\programs\7zip-16.04\7z a -tzip acim.epub .\dist\*
e:\programs\7zip-16.04\7z rn acim.epub !mimetype mimetype
::e:\Programs\jre1.8.0_291\bin\java -jar -Xss512k e:\programs\epubcheck\epubcheck.jar acim.epub