#!/bin/bash

# ------------------------------------------------------------------
# fast_decompress_files.sh
# Script to use pigz for parallel decompression
# ------------------------------------------------------------------

USAGE="Usage: ./fast_decompress_files.sh <path_to_dir>"

if [ $# == 0 ] ; then
    echo $USAGE
    exit 1;
fi

find "$1" -type f '(' -iname '*.gz' ')'		\
		-exec pigz -p4 -d -v {} ';'
    
