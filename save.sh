mkdir -p build
pdflatex -output-directory=build "${1}"
mv build/"${2%.*}".pdf ./
rm -rf ./build

pdf2svg ${2%.*}.pdf ${2%.*}.svg
pdftoppm ${2%.*}.pdf ${2%.*} -png -singlefile