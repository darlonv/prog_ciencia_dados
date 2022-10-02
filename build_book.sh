#!/bin/bash

#Instalação (Ubuntu)
#**Pandoc**
#sudo apt install pandoc 

#Converte para livro
jupyter-book build book


# #Converte para [pdf, slides]
# orig_path=$(pwd)
# cd book/notebooks
# for dir in $(ls -d */)
# do
# 	#Entra no diretório
# 	cd "$dir"
# 	echo ""
# 	echo "###" "$dir" "###"
# 	if ls ./*.ipynb >/dev/null 2>&1 #Verifica se existem .ipynb no dir
# 	then
# 		for p in webpdf slides
# 		do
# 			echo Convertendo *.ipynb para "$p"...
# 			jupyter nbconvert --to "$p" --allow-chromium-download *.ipynb
# 		done
		
# 		#Move os arquivos convertidos para os respectivos diretórios
# 		if ls ./*.pdf >/dev/null 2>&1
# 		then
# 			mkdir -p pdf
# 			mv -v *.pdf pdf/
# 		fi
		
# 		if ls ./*.slides.html >/dev/null 2>&1
# 		then
# 			mkdir -p slides
# 			mv -v *.slides.html slides/
# 		fi
		
# 		if ls ./*.html >/dev/null 2>&1
# 		then
# 			mkdir -p html
# 			mv -v *.html 
# 		fi
		
		
		
# 	else
# 		echo "Nenhum notebook no diretório $dir"
# 	fi
	
# 	#Retorna ao diretório anterior
# 	cd ..
# done

#for doc in *.ipynb
	#do
#		echo Convertendo $doc para pdf...
#		jupyter nbconvert --to pdf "$doc"
#		
#		echo Convertendo $doc para slides...
#		jupyter nbconvert --to slides "$doc"
#	done
cd "$orig_path"

