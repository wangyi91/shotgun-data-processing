#PBS -q tiny
#PBS -l nodes=1:ppn=1
#PBS -l mem=1gb
#PBS -S /bin/bash
#PBS -N auto
#PBS -j oe
#PBS -o LOG_auto_zip

source /home/kn/kn_kn/kn_pop524719/.bashrc
cd $hb

for file in $hb/fastp/*.trimmed.merged.fastq.gz
do 
loc=${file%.trimmed.merged.fastq.gz}
libid=${loc#*fastp/}
libnum=${libid#AVXF-1-}
qsub -v loc=$loc,libid=$libid -N zip_$libnum -o log_zip_$libnum $hb/zip.sh
done
