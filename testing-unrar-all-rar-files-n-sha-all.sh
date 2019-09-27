#!/bin/bash

mkdir extracted

	for mfile in `ls -1 *.rar`; do
		##echo "$mfile"

        case $mfile in
        *".part1.rar") unrar x -ptorgo "$mfile" extracted/ ;;

        *".part2.rar" | *".part3.rar" | *".part4.rar" | *".part5.rar" | *".part6.rar" | *".part7.rar" | *".part8.rar" | *".part9.rar") echo "." ;;

        *".part01.rar" | *".part10.rar" | *".part11.rar" | *".part12.rar" | *".part13.rar" | *".part14.rar" | *".part15.rar" | *".part16.rar" | *".part17.rar" | *".part18.rar") echo "Double digit numbered RAR files will probably not be extracted !!!" ;;
        
        *) unrar x -ptorgo "$mfile" extracted/ ;;
        esac
    done
sleep 2
        echo " "
        echo "Starting to sha256 all files."

        for i in `ls -1 *.???` ; do
		sha256sum "$i" > "$i.sha256"
        done
        echo " "
        echo "Done."
