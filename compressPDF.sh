#!/bin/bash

case $1 in
	-l|--low|--screen)
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/screen -dNOPAUSE -dQUIET -dBATCH -sOutputFile=reduced_$2 $2
	;;

	-m|--medium|--ebook)
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dQUIET -dBATCH -sOutputFile=reduced_$2 $2
	;;

	-p|--high|--printer)
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=reduced_$2 $2
	;;

	-h|--help)
	echo
	echo Compress tool for PDF
	echo By Aurélien Burdot 05/06/2018
	echo "Usage: ./compressPDF [argument] [input file]"
	echo "Default: ./compressPDF -p [input file]"
	echo
	echo Arguments:
	echo " -l --low --screen	Low-resolution, lowest output size"
	echo " -m --medium --ebook	Medium-resolution"
	echo " -p --high --printer	High-resolution, perfect for printing"
	echo " -h --help		Print Help (this message) and exit"
	echo
	;;

	*)
	gs -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/printer -dNOPAUSE -dQUIET -dBATCH -sOutputFile=reduced_$1 $1
	;;

esac
