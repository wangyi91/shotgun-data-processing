#PBS -q short
#PBS -l nodes=1:ppn=1
#PBS -l mem=8gb
#PBS -S /bin/bash
#PBS -N wc 
#PBS -j oe
#PBS -o log_wc


source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $yw/HIBO_shotgun/fastp
#gzip -d AVXF-1-12.trimmed.merged.fastq.gz
wc -l AVXF-1-10.sga.discard.fa > lines.AVXF-1-10.sga.discard
#rm AVXF-1-12.trimmed.merged.fastq
#rm AVXF-1-10.trimmed.merged.fastq
