for FILE in $(ls raws/)
do
	echo $FILE
	wine msconvert --64 --zlib --filter "peakPicking true 1-" -o mzml/ raws/$FILE
done

