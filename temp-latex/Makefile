default:
	for i in $(ls -d */); do echo ${i%%/}; done
	mkdir -p build
	pdflatex -output-directory=build temp.tex
	mv build/temp.pdf ./
	rm -rf ./build