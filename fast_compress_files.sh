#!/bin/bash

# ------------------------------------------------------------------
# fast_compress_files.sh
# Script to use pigz for parallel compression
# ------------------------------------------------------------------

USAGE="Usage: ./fast_compress_files.sh <path_to_dir>"

if [ $# == 0 ] ; then
    echo $USAGE
    exit 1;
fi

find "$1" -type f -not -path '*python*'     \
			       '(' -iname '*.adj'		\
			    -o -iname '*.bai'			\
				-o -iname '*.bed'			\
				-o -iname '*.bedGraph' 		\
				-o -iname '*.broadPeak' 	\
				-o -iname '*.bt2' 			\
				-o -iname '*.bt2l' 			\
				-o -iname '*.bw' 			\
				-o -iname '*.cgbins' 		\
				-o -iname '*.cgfreq' 		\
				-o -iname '*.csv' 			\
				-o -iname '*.fa' 			\
				-o -iname '*.faa' 			\
				-o -iname '*.fna' 			\
				-o -iname '*.fasta' 		\
				-o -iname '*.fastq' 		\
				-o -iname '*.gappedPeak'	\
				-o -iname 'Genome'			\
				-o -iname '*.gff' 			\
				-o -iname '*.gtf' 			\
				-o -iname '*.hic' 			\
				-o -iname '*.locs' 			\
				-o -iname '*.matrix'		\
				-o -iname '*.narrowPeak'	\
				-o -iname '*.out'			\
				-o -iname '*.Rdata' 		\
				-o -iname 'SA' 				\
				-o -iname 'SAindex' 		\
				-o -iname '*.sam'  			\
				-o -iname '*.seq' 			\
				-o -iname '*.tab' 			\
				-o -iname '*.tsv' 	 		\
				-o -iname '*.txt' 	 		\
				-o -iname '*.xls' 	 		\
				-o -iname '*.xlsx' ')' 		\
		-exec pigz -p4 -f -v {} ';'
    
