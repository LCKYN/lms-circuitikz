mkdir -p build
pdflatex -output-directory=build "${1}"
mv build/"${2%.*}".pdf ./
rm -rf ./build