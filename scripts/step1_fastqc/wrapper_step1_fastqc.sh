#!/bin/bash
#$ -cwd
#$ -V
#$ -N step1Fastqc
#$ -l h_data=1G,time=24:00:00
#$ -M phung428
#$ -m ea

QSUB=/u/systems/UGE8.0.1vm/bin/lx-amd64/qsub

for i in GS1 GS2 GS3 GS4 GS5 TM1 TM2 TM3 TM4 TM5
do

$QSUB -N ${i}Step1Fastqc step1_fastqc.sh ${i}
sleep 10m

done