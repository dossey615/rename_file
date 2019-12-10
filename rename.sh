#!/bin/bash

function main(){
	read -p "変更したいファイル名の拡張子を入力(.なしで)：" kakucho
	read -p "変更後のファイル名を入力：" name
	
	cd target
	targetfile=`ls`
	count=1
	cd $targetfile
	
	for FILE in `pwd`/*.${kakucho}
	do
  		oldName=`echo ${FILE##*/}`
		mv ${oldName} ${name}${count}.${kakucho}
		count=$((${count}+1))
	done
}

main
