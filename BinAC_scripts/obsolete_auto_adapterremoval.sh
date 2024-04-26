#PBS -q tiny
#PBS -l nodes=1:ppn=1
#PBS -l mem=2gb
#PBS -S /bin/bash
#PBS -N auto
#PBS -j oe
#PBS -o LOG_auto_adapterremoval

source /home/kn/kn_kn/kn_pop524719/.bashrc
mkdir -p $hb/adapterremoval
cd $hb/adapterremoval

for file in $data/*_R1.fastq.gz
do
loc=${file%_R1*}
libid=${loc#*L002_}
libnum=${libid#AVXF-1-}

qsub -v loc=$loc,libid=$libid -N AdpRm_$libnum -o log_AdpRm_$libnum $hb/adapterremoval.sh
done
