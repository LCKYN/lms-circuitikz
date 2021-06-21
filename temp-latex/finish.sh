if [ -z "$1" ]
then
   echo "No arguments supplied"
else
    pdf2svg temp.pdf $1.svg
    pdftoppm temp.pdf $1 -png -singlefile
    cp temp.tex $1.tex
    cp temp.pdf $1.pdf
fi