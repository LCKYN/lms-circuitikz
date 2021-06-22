echo "Script executed from: ${PWD} ?"
# select yn in "Yes" "No"; do
#     case $yn in
#         Yes ) break;;
#         No ) exit;;
# 		* ) exit;;
#     esac
# done
echo "${PWD}"
for l in ./*; do
    if [ -d "$l" ]; then
		cd "$l"
		for sub_l in ./*; do
			if [ -d "$sub_l" ]; then
				cd "$sub_l"
				for tex_l in ./*; do
					if [ "${tex_l: -4}" == ".tex" ]; then
						echo "${tex_l}"
						mkdir -p build
						pdflatex -output-directory=build ${tex_l}
						mv build/${tex_l%.*}.pdf ./
						rm -rf ./build
						pdf2svg ${tex_l%.*}.pdf ${tex_l%.*}.svg
    					pdftoppm ${tex_l%.*}.pdf ${tex_l%.*} -png -singlefile
					fi
				done
				cd ..
			fi
		done
		cd ..
	fi
done