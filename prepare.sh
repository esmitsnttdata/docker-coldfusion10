#!/bin/sh

cd $(dirname "$0")
cd build/install

if [ ! -f "ColdFusion_10_WWEJ_linux64.bin" ]
then
	rm -rf coldfusion10/
    git clone https://nttdata-pcf.visualstudio.com/coldfusion10/_git/coldfusion10
	chmod 755 ./coldfusion10/binaries/*.*
	mv  ./coldfusion10/binaries/*.* ./
	rm -rf ./coldfusion10	
fi


$SHELL