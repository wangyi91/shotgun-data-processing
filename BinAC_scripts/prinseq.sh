#PBS -q short
#PBS -l nodes=1:ppn=1
#PBS -l mem=8gb
#PBS -S /bin/bash
#PBS -N prinseq 
#PBS -j oe
#PBS -o log_prinseq10

source /home/kn/kn_kn/kn_pop524719/.bashrc

mkdir -p $hb/prinseq
cd $hb/prinseq

libid="AVXF-1-10"
conda activate shotgun


prinseq-lite.pl -verbose -fastq $hb/fastp/${libid}.trimmed.merged.fastq \
 -derep 14 -lc_method dust -lc_threshold 7 \
 -stats_all #-graph_stats da,sc -graph_data


