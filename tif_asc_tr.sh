#!/bin/bash
# converts raster gtif files into ascii ".asc" files
# run this script in a folder which contains subdirectories including files
main_dir=$( ls )
for DIRECTORY in $main_dir
do
	echo "$path/$DIRECTORY"
	for file in $( ls $path/$DIRECTORY/*.tif )
	do
        echo "$file"
        new_name="${file#*/*/}"
        new_name="${new_name%.tif}.asc"
        echo $new_name
		gdal_translate -of GTiff $file  "$path/$new_name"
	done

done
