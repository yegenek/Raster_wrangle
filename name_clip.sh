#!/bin/bash
# For removing unnecessary parts from the name of Chelsa variables keeps only the 
# Variable code like bio13,gsp or npp
# Run this script under the same folder with the files
for file in $( ls *.tif )
	do
		var=${file#*_}
		echo $var
		var="${var%_20*.tif}.tif"
		echo $var
		mv $file $var
	done
