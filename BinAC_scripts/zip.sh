#PBS -q short
#PBS -l nodes=1:ppn=1
#PBS -l mem=8gb
#PBS -S /bin/bash
#PBS -N zip
#PBS -j oe

source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $hb/fastp

#loc='/beegfs/work/kn_pop524719/HIBO_shotgun/fastp/AVXF-1-30'
#libid='AVXF-1-30'

gzip ${libid}.*.fastq
