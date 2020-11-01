#!/bin/bash
if exiftool $1 | grep -i 'file type\| size'
	then
		echo ''
	else
		echo 'NO FILE TYPE/SIZE DATA FOUND'
fi


# Checks to see if exiftool $1 | grep gets any output with the pattern DATE
if exiftool $1 | grep -i date
	then
		echo ''
	else
		echo "NO DATE DATA FOUND"
fi


# Only prints if author/company metadata is present
if exiftool $1 | grep -i 'author\|company'
	then 
		echo ''
fi


# Checks to see if camera model metadata is present and prints it to the console if it is
if exiftool $1 | grep -E '^\bCamera\b|\bMake\b'
	then
		echo ''
	else
		echo -e 'NO CAMERA MODEL DATE FOUND\n'
fi


# Checks to see if exiftool $1 | grep gets any output with the pattern GPS
if exiftool $1 | grep -i gps
	then
		echo ''
	else
		echo -e 'NO GPS DATA FOUND\n'
fi





