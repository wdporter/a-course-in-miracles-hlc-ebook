del acim.epub
rmdir /s /q dist
npx @11ty/eleventy
move /y dist\mimetype dist\!mimetype
C:\Programs\7Zip\App\7-Zip64\7z a -tzip acim.epub .\dist\*
C:\Programs\7Zip\App\7-Zip64\7z rn acim.epub !mimetype mimetype
::e:\Programs\jre1.8.0_291\bin\java -jar -Xss512k e:\programs\epubcheck\epubcheck.jar acim.epub