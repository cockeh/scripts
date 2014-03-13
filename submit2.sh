#!/bin/bash
# Simple script to automate submitting assembly jobs to SGE

FORWARD_FILE=P.cact_411_1M_F_trim.fastq
REVERSE_FILE=P.cact_411_1M_R_trim.fastq
ASSEMBLY_NAME=P.cact.auto

cd $PWD
for HASH_LENGHT in $( seq 21 2 51 ); do 
    qsub ~/scripts/align.sh 39 $FORWARD_FILE $REVERSE_FILE $ASSEMBLY_NAME
done
