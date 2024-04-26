#PBS -q short
#PBS -l nodes=1:ppn=8
#PBS -l mem=64gb
#PBS -S /bin/bash
#PBS -N cat
#PBS -j oe
#PBS -o LOG_cat


source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $yw/HIBO_shotgun/adapterremoval

for file in *collapsed; do cat $file ${file}.truncated > ${file}.merged.fq; done

